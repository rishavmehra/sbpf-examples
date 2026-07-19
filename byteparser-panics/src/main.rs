use std::panic::{catch_unwind, AssertUnwindSafe};

use object::write::{Object, Relocation, StandardSection, Symbol, SymbolSection};
use object::{
    Architecture, BinaryFormat, Endianness, RelocationFlags, SymbolFlags,
    SymbolKind, SymbolScope,
};
use sbpf_linker::{link_program, OptimizationConfig, SbpfArch};

const R_BPF_64_64: u32 = 1;

struct Case {
    name: &'static str,
    build: fn() -> Vec<u8>,
}

fn rodata_with_symbol(
    section_bytes: &[u8],
    sym_value: u64,
    sym_size: u64,
) -> Vec<u8> {
    let mut obj =
        Object::new(BinaryFormat::Elf, Architecture::Bpf, Endianness::Little);
    let rodata = obj.section_id(StandardSection::ReadOnlyData);
    obj.append_section_data(rodata, section_bytes, 1);
    obj.add_symbol(Symbol {
        name: b"some_sym".to_vec(),
        value: sym_value,
        size: sym_size,
        kind: SymbolKind::Data,
        scope: SymbolScope::Linkage,
        weak: false,
        section: SymbolSection::Section(rodata),
        flags: SymbolFlags::None,
    });
    obj.write().unwrap()
}

fn text_lddw_with_reloc(rel_offset: u64) -> Vec<u8> {
    let mut obj =
        Object::new(BinaryFormat::Elf, Architecture::Bpf, Endianness::Little);
    let text = obj.section_id(StandardSection::Text);
    let lddw: [u8; 16] =
        [0x18, 0, 0, 0, 0, 0, 0, 0, 0x00, 0, 0, 0, 0, 0, 0, 0];
    obj.append_section_data(text, &lddw, 8);
    let sym = obj.add_symbol(Symbol {
        name: b"not_rodata".to_vec(),
        value: 0,
        size: 8,
        kind: SymbolKind::Data,
        scope: SymbolScope::Linkage,
        weak: false,
        section: SymbolSection::Section(text),
        flags: SymbolFlags::None,
    });
    obj.add_relocation(
        text,
        Relocation {
            offset: rel_offset,
            symbol: sym,
            addend: 0,
            flags: RelocationFlags::Elf { r_type: R_BPF_64_64 },
        },
    )
    .unwrap();
    obj.write().unwrap()
}

fn cases() -> Vec<Case> {
    vec![
        Case {
            name: "rodata_size_oob",
            build: || rodata_with_symbol(&[0u8; 8], 0, 100),
        },
        Case {
            name: "rodata_size_zero",
            build: || rodata_with_symbol(&[0u8; 8], 0, 0),
        },
        Case {
            name: "rodata_addr_past_section",
            build: || rodata_with_symbol(&[0u8; 8], 64, 4),
        },
        Case {
            name: "rodata_addr_u64_max",
            build: || rodata_with_symbol(&[0u8; 8], u64::MAX, 4),
        },
        Case {
            name: "lddw_reloc_not_rodata",
            build: || text_lddw_with_reloc(0),
        },
        Case {
            name: "reloc_offset_mid_instruction",
            build: || text_lddw_with_reloc(4),
        },
        Case {
            name: "reloc_offset_past_text",
            build: || text_lddw_with_reloc(1000),
        },
    ]
}

fn write_corrupt_elf(name: &str, bytes: &[u8]) -> std::path::PathBuf {
    let dir = std::path::Path::new("corrupt");
    std::fs::create_dir_all(dir).expect("create corrupt/ dir");
    let path = dir.join(format!("{name}.o"));
    std::fs::write(&path, bytes).expect("write crafted ELF");
    path
}

fn run_live(case: &Case) {
    println!("{}", case.name);
    let bytes = (case.build)();
    let path = write_corrupt_elf(case.name, &bytes);
    println!("wrote {} ({} bytes)", path.display(), bytes.len());
    // Not caught on purpose - the linker crashes here if it's not fixed.
    let _ = link_program(&bytes, OptimizationConfig::disabled(), SbpfArch::V3);
    println!("linker returned, no panic");
}

fn run_all() {
    let cases = cases();
    let total = cases.len();
    let mut panicked = Vec::new();
    println!("running {total} crafted objects through the linker\n");
    for case in &cases {
        let bytes = (case.build)();
        write_corrupt_elf(case.name, &bytes);
        let result = catch_unwind(AssertUnwindSafe(|| {
            link_program(&bytes, OptimizationConfig::disabled(), SbpfArch::V3)
        }));
        match result {
            Ok(Ok(_)) => println!("ok     {:<28} parsed", case.name),
            Ok(Err(e)) => println!("err    {:<28} {e}", case.name),
            Err(_) => {
                println!("panic  {}", case.name);
                panicked.push(case.name);
            }
        }
    }
    println!("\n{} of {total} panicked", panicked.len());
    for name in &panicked {
        println!("  {name}");
    }
}

fn main() {
    let arg = std::env::args().nth(1);
    match arg.as_deref() {
        None | Some("all") => run_all(),
        Some("list") => {
            for case in cases() {
                println!("{}", case.name);
            }
        }
        Some(name) => match cases().into_iter().find(|c| c.name == name) {
            Some(case) => run_live(&case),
            None => {
                eprintln!("unknown case: {name}\nrun `cargo run -- list`");
                std::process::exit(2);
            }
        },
    }
}
