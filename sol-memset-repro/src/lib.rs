//! The whole reproducer: one call to one syscall.
//!
//! `sol_memset_` is provided by the VM, so in the program it is only a
//! declaration -- a name and a signature, with no body. The question is what
//! LTO does to it:
//!
//!   * bpf-linker marks every symbol not on the `--export` list as `internal`.
//!   * DeadArgumentElimination then asks "are these parameters used?" and looks
//!     inside the body. There is no body, so it can conclude they are all dead
//!     and delete them.
//!   * Call sites then set up no arguments, and the syscall reads whatever
//!     junk is left in r1/r2/r3.
//!
//! Build this four ways -- LLVM 22 and 23, each with and without
//! `--export=sol_memset_` -- and compare the post-LTO declaration. See
//! `compare.sh`.
//!
//! Deliberately tiny: no pinocchio, no `target_os="solana"`, no six-argument
//! functions. That last part matters, because it is what lets this build on
//! LLVM 22, which p-token cannot do.
#![no_std]

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    loop {}
}

extern "C" {
    /// VM-provided. Declaration only -- there is no body anywhere in the program.
    fn sol_memset_(dst: *mut u8, val: u8, n: u64);
}

/// Takes its pointer from the caller so nothing can be folded away, and calls
/// the syscall with three obvious constants: dst, 0x41, 16.
#[unsafe(no_mangle)]
pub extern "C" fn entrypoint(input: *mut u8) -> u64 {
    unsafe { sol_memset_(input, 0x41, 16) };
    0
}
