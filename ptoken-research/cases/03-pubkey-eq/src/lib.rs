//! pToken shape: compare a public key four machine words at a time.
#![no_std]

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

#[inline(never)]
fn pubkey_eq(left: &[u8; 32], right: &[u8; 32]) -> bool {
    let left = left.as_ptr().cast::<u64>();
    let right = right.as_ptr().cast::<u64>();
    unsafe {
        core::ptr::read_unaligned(left) == core::ptr::read_unaligned(right)
            && core::ptr::read_unaligned(left.add(1)) == core::ptr::read_unaligned(right.add(1))
            && core::ptr::read_unaligned(left.add(2)) == core::ptr::read_unaligned(right.add(2))
            && core::ptr::read_unaligned(left.add(3)) == core::ptr::read_unaligned(right.add(3))
    }
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let seed = core::ptr::read_volatile(input.add(16));
    let left = [seed; 32];
    let mut right = [seed; 32];
    let mut matches = 0u64;
    for i in 0..64u8 {
        right[31] = seed ^ (i >> 5);
        matches += pubkey_eq(&left, &right) as u64;
    }
    core::hint::black_box(matches);
    0
}
