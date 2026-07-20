#![no_std]
use solana_compiler_builtins as _;

use core::hint::black_box;
use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

#[no_mangle]
pub extern "C" fn entrypoint(_input: *mut u8) -> u64 {
    let a = black_box(3.5f64);
    let b = black_box(2.0f64);
    let sum = a + b;
    let prod = a * b;
    let add_ok = sum.to_bits() == 5.5f64.to_bits();
    let mul_ok = prod.to_bits() == 7.0f64.to_bits();
    let mut code: u64 = 0;
    if !add_ok {
        code |= 1;
    }
    if !mul_ok {
        code |= 2;
    }
    code
}
