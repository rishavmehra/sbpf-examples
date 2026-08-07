//! Assemble a `.s` file into a `.so` and run it in the VM.
//!
//! Usage:
//!   cargo run -- asm/six_args_r10.s        # assembles + runs
//!   cargo run -- asm/six_args_r11.s        # shows where the assembler breaks
//!
//! The `.so` is written next to the `.s` (e.g. asm/six_args_r10.so).

use mollusk_svm::Mollusk;
use sbpf_assembler::{Assembler, AssemblerOption};
use solana_instruction::Instruction;
use std::path::Path;

fn main() {
    let src = match std::env::args().nth(1) {
        Some(p) => p,
        None => {
            eprintln!("usage: cargo run -- <file.s>");
            std::process::exit(2);
        }
    };

    // 1. Assemble .s -> .so bytes.
    let bytes = match Assembler::new(AssemblerOption::default())
        .assemble_file(Path::new(&src))
    {
        Ok(b) => b,
        Err(err) => {
            eprintln!("assemble failed for {src}:\n{err:#?}");
            std::process::exit(1);
        }
    };

    // 2. Write the .so next to the .s.
    let stem = src.strip_suffix(".s").unwrap_or(&src).to_string();
    let so = format!("{stem}.so");
    std::fs::write(&so, &bytes).expect("write .so");
    println!("built {so} ({} bytes)", bytes.len());

    // 3. Load + run it in the VM, print the result.
    let program_id = [2u8; 32].into();
    let mollusk = Mollusk::new(&program_id, &stem);
    let result = mollusk.process_instruction(
        &Instruction {
            program_id,
            accounts: vec![],
            data: vec![],
        },
        &[],
    );
    println!("compute units: {}", result.compute_units_consumed);
    println!("program_result: {:?}", result.program_result);
}
