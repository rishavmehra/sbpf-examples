//! Repro for the R11 stack-args blocker.
//!
//! The BPF calling convention passes the first 5 integer args in registers
//! r1..r5. A 6th argument does not fit, so LLVM's BPF backend spills it onto a
//! *second* stack addressed by **R11**:
//!   - caller:  `stxdw [r11-0x8], arg6`
//!   - callee:  `ldxdw r1, [r11+0x8]`
//!
//! SVM (the Solana VM) has no usable R11 (the VM uses reg 11 as its program
//! counter), so this bytecode is invalid there. This example forces that exact
//! pattern with a 6-argument function so we can inspect the emitted bytecode
//! and verify the sbpf-linker pass that rewrites R11 -> R10.
//!
//! `entrypoint` returns 0 (success) iff `add_six(1..=6) == 21`. On SVM the
//! program only loads and runs once R11 has been rewritten to R10, so the
//! mollusk test below fails on the raw (R11) bytecode and passes after the fix.
#![cfg_attr(target_arch = "bpf", no_std)]

#[cfg(target_arch = "bpf")]
#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

/// 6 integer args: the 6th spills to the stack (this is what triggers R11).
#[cfg(target_arch = "bpf")]
#[inline(never)]
extern "C" fn add_six(a: i32, b: i32, c: i32, d: i32, e: i32, f: i32) -> i32 {
    a + b + c + d + e + f
}

/// Nested case: this fn *receives* its 6th arg `f` on the stack AND *passes* a
/// (different) 6th arg on the stack to `add_six`. Two levels of r11 spilling
/// through consecutive frames — closer to p-token's real code.
/// `add_six_nested(1..=6) = add_six(1,2,3,4,5,106) + 6 = 121 + 6 = 127`.
#[cfg(target_arch = "bpf")]
#[inline(never)]
extern "C" fn add_six_nested(a: i32, b: i32, c: i32, d: i32, e: i32, f: i32) -> i32 {
    add_six(a, b, c, d, e, f + 100) + f
}

#[unsafe(no_mangle)]
pub extern "C" fn entrypoint(_input: *mut u8) -> u64 {
    #[cfg(target_arch = "bpf")]
    {
        use core::hint::black_box;
        let flat = add_six(
            black_box(1),
            black_box(2),
            black_box(3),
            black_box(4),
            black_box(5),
            black_box(6),
        );
        let nested = add_six_nested(
            black_box(1),
            black_box(2),
            black_box(3),
            black_box(4),
            black_box(5),
            black_box(6),
        );
        // 0 = success. bit 0 set = flat wrong, bit 1 set = nested wrong.
        let mut code = 0u64;
        if black_box(flat) != 21 {
            code |= 1;
        }
        if black_box(nested) != 127 {
            code |= 2;
        }
        return code;
    }
    #[cfg(not(target_arch = "bpf"))]
    0
}

#[cfg(test)]
mod tests {
    use mollusk_svm::{result::Check, Mollusk};
    use solana_instruction::Instruction;

    /// Loads the built program and asserts it runs and returns success (sum ==
    /// 21). Fails on raw R11 bytecode (invalid register), passes after the
    /// sbpf-linker R11->R10 rewrite.
    #[test]
    fn add_six_returns_21() {
        let program_id = [2u8; 32].into();
        let mollusk = Mollusk::new(
            &program_id,
            "target/bpfel-unknown-none/release/deps/libr11_stack_args",
        );
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
}
