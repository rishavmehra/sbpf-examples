//! pToken shape: unpack an amount and decimals from instruction bytes.
#![no_std]

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

#[inline(never)]
fn unpack_amount_and_decimals(data: &[u8]) -> Result<(u64, u8), u64> {
    if data.len() < 9 {
        return Err(1);
    }
    let amount = unsafe { u64::from_le_bytes(*(data.as_ptr() as *const [u8; 8])) };
    Ok((amount, data[8]))
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let seed = core::ptr::read_volatile(input.add(16));
    let mut bytes = [0u8; 9];
    let mut state = input as u64;
    for i in 0..64u8 {
        bytes[..8].copy_from_slice(&state.to_le_bytes());
        bytes[8] = seed.wrapping_add(i);
        match unpack_amount_and_decimals(&bytes) {
            Ok((amount, decimals)) => state = amount.rotate_left((decimals & 63) as u32),
            Err(error) => state ^= error,
        }
    }
    core::hint::black_box(state);
    0
}
