//! Independent verification of the r11 -> r10 offset math, using Claire's
//! hand-written assembly (no Rust/LLVM, no linker involved).
//!
//! The two `.s` files live in `asm/`:
//!   - `asm/six_args_r11.s` — Claire's exact program; caller `stxdw [r11-0x8]`,
//!     callee `ldxdw [r11+0x8]`. Does not assemble (r11 is not a real register).
//!   - `asm/six_args_r10.s` — the same program with those two accesses rewritten
//!     exactly as the sbpf-linker pass does, and a `sub64 r0, 0x15` tail so a
//!     return of 0 means the 6th arg was read back correctly (sum == 21).
//!
//! Run `cargo test -- --nocapture` to see the assembler's error on the r11 file
//! and the VM run of the r10 file.

use mollusk_svm::{result::Check, Mollusk};
use sbpf_assembler::{Assembler, AssemblerOption};
use solana_instruction::Instruction;
use std::path::{Path, PathBuf};

fn asm_path(name: &str) -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("asm").join(name)
}

/// `asm/six_args_r11.s` must fail to assemble — r11 has no place in the sBPF
/// register set. Prints the assembler error (with `--nocapture`) so you can see
/// exactly which line breaks.
#[test]
fn r11_source_breaks_at_assembly() {
    let path = asm_path("six_args_r11.s");
    let result = Assembler::new(AssemblerOption::default()).assemble_file(&path);
    match &result {
        Ok(_) => {}
        Err(err) => eprintln!("assembler rejected {}:\n{err:#?}", path.display()),
    }
    assert!(
        result.is_err(),
        "expected the r11 source to be rejected, but it assembled"
    );
}

/// `asm/six_args_r10.s` (the rewritten form) must assemble, load, run, and
/// return 0 — proving the 6th arg travelled through `[r10-0x20]` (caller) /
/// `[r10-0x1020]` (callee) correctly, i.e. the offset math is right.
#[test]
fn r10_source_runs_and_computes_21() {
    let bytes = Assembler::new(AssemblerOption::default())
        .assemble_file(&asm_path("six_args_r10.s"))
        .expect("r10 source should assemble");

    let stem = std::env::temp_dir().join("r11_asm_verify_r10");
    std::fs::write(format!("{}.so", stem.display()), bytes).expect("write .so");

    let program_id = [2u8; 32].into();
    let mollusk = Mollusk::new(&program_id, &stem.display().to_string());
    mollusk.process_and_validate_instruction(
        &Instruction {
            program_id,
            accounts: vec![],
            data: vec![],
        },
        &[],
        &[Check::success()],
    );
}
