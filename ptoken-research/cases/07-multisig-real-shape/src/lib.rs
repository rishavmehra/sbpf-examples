//! pToken's real multisig matching shape: 32-byte keys and an 11-byte bitmap.
#![no_std]

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

const MAX_SIGNERS: usize = 11;
const PROVIDED_SIGNERS: usize = 3;

#[inline(always)]
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

#[inline(always)]
fn validate(
    expected: &[[u8; 32]; MAX_SIGNERS],
    signers: &[[u8; 32]; PROVIDED_SIGNERS],
    signer_flags: &[u8; PROVIDED_SIGNERS],
    n: usize,
    threshold: u8,
) -> Result<(), u64> {
    let mut matched = [false; MAX_SIGNERS];
    let mut num_signers = 0u8;

    for (signer_index, signer) in signers.iter().enumerate() {
        for (position, key) in expected[..n].iter().enumerate() {
            if pubkey_eq(key, signer) && !matched[position] {
                if signer_flags[signer_index] == 0 {
                    return Err(1);
                }
                matched[position] = true;
                num_signers += 1;
            }
        }
    }

    if num_signers < threshold {
        Err(1)
    } else {
        Ok(())
    }
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let data = unsafe { input.add(16) };
    let expected = unsafe { &*data.cast::<[[u8; 32]; MAX_SIGNERS]>() };
    let signer_offset = MAX_SIGNERS * 32;
    let signers = unsafe {
        &*data
            .add(signer_offset)
            .cast::<[[u8; 32]; PROVIDED_SIGNERS]>()
    };
    let flag_offset = signer_offset + PROVIDED_SIGNERS * 32;
    let signer_flags = unsafe {
        &*data
            .add(flag_offset)
            .cast::<[u8; PROVIDED_SIGNERS]>()
    };
    let n = unsafe { core::ptr::read_volatile(data.add(flag_offset + PROVIDED_SIGNERS)) } as usize;
    let threshold = unsafe {
        core::ptr::read_volatile(data.add(flag_offset + PROVIDED_SIGNERS + 1))
    };

    if n > MAX_SIGNERS {
        return 2;
    }
    let _ = core::hint::black_box(validate(expected, signers, signer_flags, n, threshold));
    0
}
