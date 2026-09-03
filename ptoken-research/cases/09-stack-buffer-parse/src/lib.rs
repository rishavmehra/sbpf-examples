//! Isolates the stack-buffer context around pToken's 256-digit parse loop.
#![no_std]

#[cfg(target_arch = "bpf")]
extern crate solana_compiler_builtins as _;

include!("../../static-syscall-memcpy.rs");

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

const INPUT_LENGTH: usize = u8::MAX as usize + 1;
const BUFFER_LENGTH: usize = u8::MAX as usize + 2;

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let source = unsafe { input.add(16) };
    let mut digits = [b'0'; BUFFER_LENGTH];
    unsafe { sol_memcpy_(digits.as_mut_ptr(), source, INPUT_LENGTH as u64) };
    let text = unsafe { core::str::from_utf8_unchecked(&digits[..INPUT_LENGTH]) };
    let result = text.parse::<u64>().unwrap_or(u64::MAX);
    core::hint::black_box(result);
    0
}
