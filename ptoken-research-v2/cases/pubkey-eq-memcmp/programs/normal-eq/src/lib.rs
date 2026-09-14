#![no_std]

#[cfg(target_arch = "bpf")]
extern crate solana_compiler_builtins as _;

use pinocchio::{
    no_allocator, nostd_panic_handler, program_entrypoint, pubkey::Pubkey, ProgramResult,
};

program_entrypoint!(process_instruction);
no_allocator!();
nostd_panic_handler!();

#[inline(always)]
fn keys_equal(left: &[u8; 32], right: &[u8; 32]) -> bool {
    left == right
}

#[inline(always)]
fn process_instruction(
    _program_id: &Pubkey,
    _accounts: &[pinocchio::account_info::AccountInfo],
    instruction_data: &[u8],
) -> ProgramResult {
    run_comparison(instruction_data)
}

#[inline(always)]
fn run_comparison(data: &[u8]) -> ProgramResult {
    if data.len() != 65 {
        return Err(pinocchio::program_error::ProgramError::InvalidInstructionData);
    }

    let expected = data[0] != 0;
    let left = unsafe { &*data.as_ptr().add(1).cast::<[u8; 32]>() };
    let right = unsafe { &*data.as_ptr().add(33).cast::<[u8; 32]>() };

    if keys_equal(left, right) == expected {
        Ok(())
    } else {
        Err(pinocchio::program_error::ProgramError::InvalidArgument)
    }
}
