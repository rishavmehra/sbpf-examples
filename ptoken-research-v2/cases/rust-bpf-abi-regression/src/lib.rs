#![no_std]

#[cfg(target_arch = "bpf")]
extern crate solana_compiler_builtins as _;

use {
    core::mem::MaybeUninit,
    pinocchio::{
        account_info::AccountInfo, entrypoint::deserialize, no_allocator, nostd_panic_handler,
        program_error::ProgramError, ProgramResult, MAX_TX_ACCOUNTS, SUCCESS,
    },
};

no_allocator!();
nostd_panic_handler!();

const INVALID_INSTRUCTION: ProgramError = ProgramError::Custom(12);

#[no_mangle]
pub unsafe extern "C" fn entrypoint(input: *mut u8) -> u64 {
    const UNINIT: MaybeUninit<AccountInfo> = MaybeUninit::uninit();
    let mut accounts = [UNINIT; MAX_TX_ACCOUNTS];
    let (_, _, instruction_data) = deserialize(input, &mut accounts);

    match process_instruction(instruction_data) {
        Ok(()) => SUCCESS,
        Err(error) => error.into(),
    }
}

#[inline(always)]
fn process_instruction(instruction_data: &[u8]) -> ProgramResult {
    let [discriminator, instruction_data @ ..] = instruction_data else {
        return Err(INVALID_INSTRUCTION);
    };

    let result = match *discriminator {
        0 => success_path(instruction_data),
        1 => error::<1>(),
        3 => error::<3>(),
        7 => error::<7>(),
        8 => error::<8>(),
        9 => error::<9>(),
        12 => error::<12>(),
        15 => error::<15>(),
        17 => error::<17>(),
        18 => error::<18>(),
        20 => error::<20>(),
        22 => error::<22>(),
        discriminator => remaining_instruction(discriminator),
    };

    result.inspect_err(log_error)
}

#[inline(always)]
fn success_path(data: &[u8]) -> ProgramResult {
    let [option, initialized, rent_exempt, owner, writable, signer, _remaining @ ..] = data else {
        return Err(INVALID_INSTRUCTION);
    };

    match *option {
        0 | 1 => {}
        _ => return Err(INVALID_INSTRUCTION),
    }
    if *initialized != 0 {
        return Err(ProgramError::Custom(6));
    }
    if *rent_exempt != 1 {
        return Err(ProgramError::Custom(0));
    }
    if *owner != 1 {
        return Err(ProgramError::IncorrectProgramId);
    }
    if *writable != 1 {
        return Err(ProgramError::InvalidAccountData);
    }
    if *signer != 0 {
        return Err(ProgramError::MissingRequiredSignature);
    }

    Ok(())
}

#[inline(never)]
fn error<const CODE: u8>() -> ProgramResult {
    Err(ProgramError::Custom(CODE as u32))
}

#[inline(never)]
fn remaining_instruction(discriminator: u8) -> ProgramResult {
    match discriminator {
        2 => error::<2>(),
        4 => error::<4>(),
        5 => error::<5>(),
        6 => error::<6>(),
        10 => error::<10>(),
        11 => error::<11>(),
        13 => error::<13>(),
        14 => error::<14>(),
        16 => error::<16>(),
        19 => error::<19>(),
        21 => error::<21>(),
        23 => error::<23>(),
        24 => error::<24>(),
        25 => error::<25>(),
        _ => Err(INVALID_INSTRUCTION),
    }
}

#[cold]
fn log_error(_error: &ProgramError) {
    pinocchio::log::sol_log("program error");
}
