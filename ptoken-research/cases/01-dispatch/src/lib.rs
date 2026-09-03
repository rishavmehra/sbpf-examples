//! pToken shape: a small common-instruction match, then a second match.
#![no_std]

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

#[inline(never)]
fn remaining(tag: u8, value: u64) -> u64 {
    match tag {
        2 => value.wrapping_add(2),
        4 => value.rotate_left(4),
        5 => value ^ 5,
        6 => value.wrapping_mul(6),
        10 => value.rotate_right(10),
        13 => value.wrapping_add(13),
        23 => value ^ 23,
        38 => value.wrapping_mul(38),
        45 => value.rotate_left(13),
        _ => u64::MAX,
    }
}

#[inline(never)]
fn dispatch(tag: u8, value: u64) -> u64 {
    match tag {
        0 => value.wrapping_add(1),
        1 => value.wrapping_sub(1),
        3 => value.rotate_left(3),
        7 => value.wrapping_mul(7),
        8 => value ^ 8,
        9 => value.rotate_right(9),
        12 => value.wrapping_add(12),
        15 => value.wrapping_sub(15),
        17 => value ^ 17,
        18 => value.rotate_left(18),
        20 => value.wrapping_mul(20),
        22 => value.wrapping_add(22),
        other => remaining(other, value),
    }
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let seed = core::ptr::read_volatile(input.add(16));
    let mut state = input as u64;
    for i in 0..64u8 {
        state = dispatch(seed.wrapping_add(i) % 46, state ^ i as u64);
    }
    core::hint::black_box(state);
    0
}
