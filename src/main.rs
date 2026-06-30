use {
    anyhow::{Context, Result},
    clap::Parser,
    critical_path::critical_path,
    either::Either,
    overlay::CriticalPathOverlay,
    sbpf_common::{inst_param::Number, opcode::Opcode},
    sbpf_disassembler::program::Program,
    sbpf_ir::{InputNode, control_flow_graph},
    sbpf_transform::dump_cfg_with,
    std::{collections::{HashMap, HashSet}, fs},
};

mod critical_path;
mod overlay;

#[derive(Parser)]
#[command(name = "sbpf-critical-path")]
#[command(about = "Highlight the critical path in an sBPF program's CFG as a DOT graph")]
struct Args {
    /// Path to the compiled sBPF program (.so)
    file: String,

    /// Write DOT output to this file instead of stdout
    #[arg(short, long)]
    output: Option<String>,
}

fn main() -> Result<()> {
    let args = Args::parse();

    let bytes = fs::read(&args.file)
        .with_context(|| format!("failed to read '{}'", args.file))?;

    let program = Program::from_bytes(&bytes).context("failed to parse ELF")?;
    let cfg = build_cfg(program)?;

    let results = critical_path(&cfg);

    // Collect successful results indexed by function position
    let indexed: Vec<(usize, &_)> = results
        .iter()
        .enumerate()
        .filter_map(|(i, r)| r.as_ref().ok().map(|r| (i, r)))
        .collect();

    let overlay = CriticalPathOverlay::from_results(&indexed);
    let dot = dump_cfg_with(&cfg, &overlay);

    match args.output {
        Some(ref path) => {
            fs::write(path, &dot).with_context(|| format!("failed to write '{path}'"))?;
            eprintln!("wrote DOT graph to {path}");
        }
        None => print!("{dot}"),
    }

    Ok(())
}

/// Load an sBPF ELF, resolve jump/call targets to named labels, and build a CFG.
fn build_cfg(program: Program) -> Result<sbpf_ir::Cfg> {
    let entrypoint_offset = program.get_entrypoint_offset();
    let (mut ixs, _, _) = program.to_ixs().context("failed to decode instructions")?;

    // Byte-offset of each instruction in the text section
    let positions: Vec<u64> = ixs
        .iter()
        .scan(0u64, |pos, ix| {
            let cur = *pos;
            *pos += ix.get_size();
            Some(cur)
        })
        .collect();

    // Pass 1: collect jump and call target positions
    let mut fn_targets: HashSet<u64> = HashSet::new();
    let mut jmp_targets: HashSet<u64> = HashSet::new();

    for (idx, ix) in ixs.iter().enumerate() {
        if ix.is_jump() {
            if let Some(Either::Right(off)) = &ix.off {
                let t = (idx as i64 + 1 + *off as i64) as usize;
                if let Some(&pos) = positions.get(t) {
                    jmp_targets.insert(pos);
                }
            }
        }
        if ix.opcode == Opcode::Call {
            if let Some(Either::Right(Number::Int(imm))) = &ix.imm {
                let t = (idx as i64 + 1 + *imm) as usize;
                if let Some(&pos) = positions.get(t) {
                    fn_targets.insert(pos);
                }
            }
        }
    }

    // Pass 2: replace numeric offsets with label strings
    for (idx, ix) in ixs.iter_mut().enumerate() {
        if ix.is_jump() {
            if let Some(Either::Right(off)) = ix.off.clone() {
                let t = (idx as i64 + 1 + off as i64) as usize;
                if let Some(&pos) = positions.get(t) {
                    ix.off = Some(Either::Left(format!("jmp_{pos:04x}")));
                }
            }
        }
        if ix.opcode == Opcode::Call {
            if let Some(Either::Right(Number::Int(imm))) = ix.imm.clone() {
                let t = (idx as i64 + 1 + imm) as usize;
                if let Some(&pos) = positions.get(t) {
                    ix.imm = Some(Either::Left(format!("fn_{pos:04x}")));
                }
            }
        }
    }

    // Build position → labels map (owned strings)
    let mut pos_labels: HashMap<u64, Vec<String>> = HashMap::new();

    let ep_pos = entrypoint_offset.unwrap_or_else(|| positions.first().copied().unwrap_or(0));
    pos_labels
        .entry(ep_pos)
        .or_default()
        .insert(0, "entrypoint".to_string());

    for &pos in &fn_targets {
        let label = format!("fn_{pos:04x}");
        let labels = pos_labels.entry(pos).or_default();
        if !labels.contains(&label) {
            labels.push(label);
        }
    }
    for &pos in &jmp_targets {
        let label = format!("jmp_{pos:04x}");
        let labels = pos_labels.entry(pos).or_default();
        if !labels.contains(&label) {
            labels.push(label);
        }
    }

    // Build function_entries set
    let mut function_entries: HashSet<String> = HashSet::new();
    function_entries.insert("entrypoint".to_string());
    for &pos in &fn_targets {
        function_entries.insert(format!("fn_{pos:04x}"));
    }

    // Guard: if the very first instruction has no function-entry label, inject one.
    // Some ELFs place code before the declared entrypoint.
    if let Some(&first_pos) = positions.first() {
        let has_fn_entry = pos_labels
            .get(&first_pos)
            .is_some_and(|ls| ls.iter().any(|l| function_entries.contains(l)));

        if !has_fn_entry {
            let label = format!("fn_{first_pos:04x}");
            pos_labels
                .entry(first_pos)
                .or_default()
                .insert(0, label.clone());
            function_entries.insert(label);
        }
    }

    // Build one Vec<String> of labels per instruction slot (parallel to `ixs`)
    let inst_labels: Vec<Vec<String>> = positions
        .iter()
        .map(|pos| pos_labels.remove(pos).unwrap_or_default())
        .collect();

    // Interleave Label nodes and Instruction nodes (borrow from owned data)
    let nodes: Vec<InputNode<'_>> = inst_labels
        .iter()
        .zip(ixs.iter())
        .flat_map(|(labels, ix)| {
            labels
                .iter()
                .map(|l| InputNode::Label(l.as_str()))
                .chain(std::iter::once(InputNode::Instruction(ix)))
        })
        .collect();

    Ok(control_flow_graph(nodes, &function_entries, Some("entrypoint")))
}
