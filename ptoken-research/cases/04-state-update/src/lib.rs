//! pToken shape: checked subtraction followed by delegate state updates.
#![no_std]

#[panic_handler]
fn panic(_: &core::panic::PanicInfo<'_>) -> ! {
    loop {}
}

struct Account {
    amount: u64,
    delegated_amount: u64,
    has_delegate: bool,
}

#[inline(never)]
fn update(account: &mut Account, amount: u64, use_delegate: bool) -> Result<u64, u64> {
    let remaining = account.amount.checked_sub(amount).ok_or(1u64)?;
    if use_delegate && account.has_delegate {
        let delegated = account.delegated_amount.checked_sub(amount).ok_or(1u64)?;
        account.delegated_amount = delegated;
        if delegated == 0 {
            account.has_delegate = false;
        }
    }
    account.amount = remaining;
    Ok(remaining)
}

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    let seed = core::ptr::read_volatile(input.add(16)) as u64;
    let mut account = Account {
        amount: 1_000_000 + seed,
        delegated_amount: 1_000_000 + seed,
        has_delegate: true,
    };
    let mut state = 0u64;
    for i in 0..64u64 {
        state ^= update(&mut account, (i & 7) + 1, true).unwrap_or(u64::MAX);
    }
    core::hint::black_box((state, account.amount));
    0
}
