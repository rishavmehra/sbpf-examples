#![no_std]

#[cfg(target_arch = "bpf")]
extern crate solana_compiler_builtins as _;

use {
    pinocchio::{
        account_info::AccountInfo,
        hint::{likely, unlikely},
        no_allocator, nostd_panic_handler,
        program_error::ProgramError,
        program_entrypoint,
        pubkey::{pubkey_eq, Pubkey},
        ProgramResult,
    },
    pinocchio_token_interface::{
        error::TokenError,
        state::{account::Account, load_mut},
    },
};

program_entrypoint!(process_instruction, 3);
no_allocator!();
nostd_panic_handler!();

#[inline(always)]
fn process_instruction(
    _program_id: &Pubkey,
    accounts: &[AccountInfo],
    instruction_data: &[u8],
) -> ProgramResult {
    if unlikely(instruction_data.len() < 9 || instruction_data[0] != 4) {
        return Err(TokenError::InvalidInstruction.into());
    }

    let amount_data = &instruction_data[1..];
    let amount = if likely(amount_data.len() >= size_of::<u64>()) {
        // SAFETY: the length check guarantees eight readable bytes.
        unsafe { u64::from_le_bytes(*(amount_data.as_ptr() as *const [u8; 8])) }
    } else {
        return Err(TokenError::InvalidInstruction.into());
    };

    process_approve(accounts, amount)
}

#[inline(always)]
fn process_approve(accounts: &[AccountInfo], amount: u64) -> ProgramResult {
    let [source_info, delegate_info, owner_info, remaining @ ..] = accounts else {
        return Err(ProgramError::NotEnoughAccountKeys);
    };

    // Same token-account representation and loading operation used by PToken.
    // SAFETY: this is the only mutable borrow of the source account data.
    let source = unsafe { load_mut::<Account>(source_info.borrow_mut_data_unchecked())? };

    if source.is_frozen()? {
        return Err(TokenError::AccountFrozen.into());
    }
    if unlikely(!remaining.is_empty()) {
        return Err(ProgramError::InvalidArgument);
    }
    if unlikely(!pubkey_eq(&source.owner, owner_info.key())) {
        return Err(TokenError::OwnerMismatch.into());
    }
    if unlikely(!owner_info.is_signer()) {
        return Err(ProgramError::MissingRequiredSignature);
    }

    source.set_delegate(delegate_info.key());
    source.set_delegated_amount(amount);
    Ok(())
}

