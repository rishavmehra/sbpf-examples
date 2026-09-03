//! Control for case 06: the same parse, with only an explicit call boundary.
#![no_std]

#[cfg(target_arch = "bpf")]
extern crate solana_compiler_builtins as _;

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

const DIGITS: usize = u8::MAX as usize + 1;

#[inline(never)]
fn parse_digits(text: &str) -> Result<u64, ()> {
    text.parse::<u64>().map_err(|_| ())
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let bytes = unsafe { core::slice::from_raw_parts(input.add(16), DIGITS) };
    let text = unsafe { core::str::from_utf8_unchecked(bytes) };
    let result = parse_digits(text).unwrap_or(u64::MAX);
    core::hint::black_box(result);
    0
}
