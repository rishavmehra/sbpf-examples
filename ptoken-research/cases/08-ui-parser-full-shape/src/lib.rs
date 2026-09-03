//! Exact source shape of pToken's UI amount parser, without account handling.
#![no_std]

#[cfg(target_arch = "bpf")]
extern crate solana_compiler_builtins as _;

include!("../../static-syscall-memcpy.rs");

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

const MAX_FORMATTED_DIGITS: usize = u8::MAX as usize + 2;
const INPUT_LENGTH: usize = u8::MAX as usize + 1;

fn parse_ui_amount(ui_amount: &str, decimals: u8) -> Result<u64, ()> {
    let decimals = decimals as usize;
    let mut parts = ui_amount.split('.');
    let amount_str = parts.next().unwrap();
    let after_decimal = parts.next().unwrap_or("");
    let after_decimal = after_decimal.trim_end_matches('0');
    let length = amount_str.len();

    if (amount_str.is_empty() && after_decimal.is_empty())
        || parts.next().is_some()
        || after_decimal.len() > decimals
        || (length + decimals) > MAX_FORMATTED_DIGITS
    {
        return Err(());
    }

    let mut digits = [b'0'; MAX_FORMATTED_DIGITS];
    unsafe {
        sol_memcpy_(digits.as_mut_ptr(), amount_str.as_ptr(), length as u64);
        sol_memcpy_(
            digits.as_mut_ptr().add(length),
            after_decimal.as_ptr(),
            after_decimal.len() as u64,
        );
    }

    let length = amount_str.len() + decimals;
    unsafe {
        core::str::from_utf8_unchecked(core::slice::from_raw_parts(digits.as_ptr(), length))
            .parse::<u64>()
            .map_err(|_| ())
    }
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let bytes = unsafe { core::slice::from_raw_parts(input.add(16), INPUT_LENGTH) };
    let ui_amount = unsafe { core::str::from_utf8_unchecked(bytes) };
    let result = parse_ui_amount(ui_amount, u8::MAX).unwrap_or(u64::MAX);
    core::hint::black_box(result);
    0
}
