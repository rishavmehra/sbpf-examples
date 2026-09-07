use {
    mollusk_svm::Mollusk,
    pinocchio_token_interface::state::{
        account::Account as TokenAccount,
        account_state::AccountState,
        load_mut_unchecked,
    },
    solana_account::Account,
    solana_instruction::{AccountMeta, Instruction},
    solana_pubkey::Pubkey,
    solana_rent::Rent,
};

const PROGRAM_ID: Pubkey = Pubkey::new_from_array([
    6, 221, 246, 225, 215, 101, 161, 147, 217, 203, 225, 70, 206, 235, 121, 172,
    28, 180, 133, 237, 95, 91, 55, 145, 58, 140, 245, 133, 126, 255, 0, 169,
]);

fn token_account(mint: &Pubkey, owner: &Pubkey) -> Account {
    let mut data = vec![0; size_of::<TokenAccount>()];
    let token = unsafe { load_mut_unchecked::<TokenAccount>(&mut data).unwrap() };
    token.mint = mint.to_bytes();
    token.owner = owner.to_bytes();
    token.set_account_state(AccountState::Initialized);
    token.set_amount(100);

    Account {
        lamports: Rent::default().minimum_balance(data.len()),
        data,
        owner: PROGRAM_ID,
        ..Account::default()
    }
}

#[test]
fn approve() {
    let source = Pubkey::new_unique();
    let mint = Pubkey::new_unique();
    let delegate = Pubkey::new_unique();
    let owner = Pubkey::new_unique();

    let mut data = vec![4];
    data.extend_from_slice(&50u64.to_le_bytes());
    let instruction = Instruction {
        program_id: PROGRAM_ID,
        accounts: vec![
            AccountMeta::new(source, false),
            AccountMeta::new_readonly(delegate, false),
            AccountMeta::new_readonly(owner, true),
        ],
        data,
    };

    let mut mollusk = Mollusk::default();
    mollusk.add_program(&PROGRAM_ID, "ptoken_approve_repro");
    let result = mollusk.process_instruction(
        &instruction,
        &[
            (source, token_account(&mint, &owner)),
            (delegate, Account::default()),
            (owner, Account::default()),
        ],
    );

    assert!(result.program_result.is_ok(), "{:?}", result.program_result);
    let updated = result.get_account(&source).unwrap();
    let token = unsafe {
        pinocchio_token_interface::state::load_unchecked::<TokenAccount>(&updated.data).unwrap()
    };
    assert_eq!(token.delegate(), Some(&delegate.to_bytes()));
    assert_eq!(token.delegated_amount(), 50);
    println!("approve_compute_units={}", result.compute_units_consumed);
}

