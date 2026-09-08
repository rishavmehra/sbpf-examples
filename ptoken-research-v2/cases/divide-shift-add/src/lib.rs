#![no_std]

#[cfg(target_arch = "bpf")]
extern crate solana_compiler_builtins as _;

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *const u8) -> u64 {
    let value = core::ptr::read_volatile(input);
    (value / 46) as u64
}
