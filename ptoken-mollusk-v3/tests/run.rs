use mollusk_svm::{result::Check, Mollusk};
use solana_account::Account;
use solana_instruction::{AccountMeta, Instruction};
use solana_pubkey::Pubkey;

// spl-token program id (TokenkegQfeZyiNwAJbNbGKPFXCWuBvf9Ss623VQ5DA), which
// p-token hardcodes as its owner check.
const TOKEN_ID: [u8; 32] = [
    6, 221, 246, 225, 215, 101, 161, 147, 217, 203, 225, 70, 206, 235, 121, 172, 28, 180, 133, 237,
    95, 91, 55, 145, 58, 140, 245, 133, 126, 255, 0, 169,
];

/// Build an initialized spl-token-compatible Mint account (82 bytes).
fn mint_account_with_supply(
    owner: Pubkey,
    mint_authority: Pubkey,
    freeze_authority: Pubkey,
    decimals: u8,
    supply: u64,
) -> Account {
    let mut data = vec![0u8; 82];
    data[0..4].copy_from_slice(&1u32.to_le_bytes()); // mint_authority = Some
    data[4..36].copy_from_slice(&mint_authority.to_bytes());
    data[36..44].copy_from_slice(&supply.to_le_bytes());
    data[44] = decimals;
    data[45] = 1; // is_initialized
    data[46..50].copy_from_slice(&1u32.to_le_bytes()); // freeze_authority = Some
    data[50..82].copy_from_slice(&freeze_authority.to_bytes());
    Account {
        lamports: 100_000_000,
        data,
        owner,
        executable: false,
        ..Default::default()
    }
}

fn mint_account(
    owner: Pubkey,
    mint_authority: Pubkey,
    freeze_authority: Pubkey,
    decimals: u8,
) -> Account {
    mint_account_with_supply(owner, mint_authority, freeze_authority, decimals, 0)
}

fn token_account(program_id: Pubkey, mint: Pubkey, owner: Pubkey, amount: u64) -> Account {
    let mut data = vec![0u8; 165];
    data[0..32].copy_from_slice(&mint.to_bytes());
    data[32..64].copy_from_slice(&owner.to_bytes());
    data[64..72].copy_from_slice(&amount.to_le_bytes());
    data[108] = 1; // AccountState::Initialized
    Account {
        lamports: 100_000_000,
        data,
        owner: program_id,
        executable: false,
        ..Default::default()
    }
}

fn signer_account() -> Account {
    Account {
        lamports: 100_000_000,
        ..Default::default()
    }
}

fn resulting_account<'a>(
    result: &'a mollusk_svm::result::InstructionResult,
    key: &Pubkey,
) -> &'a Account {
    &result
        .resulting_accounts
        .iter()
        .find(|(address, _)| address == key)
        .expect("resulting account must exist")
        .1
}

fn token_amount(account: &Account) -> u64 {
    u64::from_le_bytes(account.data[64..72].try_into().unwrap())
}

fn mint_supply(account: &Account) -> u64 {
    u64::from_le_bytes(account.data[36..44].try_into().unwrap())
}

fn assert_success_without_runaway_compute(result: &mollusk_svm::result::InstructionResult) {
    assert_eq!(
        result.program_result,
        mollusk_svm::result::ProgramResult::Success
    );
    assert!(
        result.compute_units_consumed < 100_000,
        "unexpectedly expensive execution: {} CU",
        result.compute_units_consumed
    );
}

fn load() -> (Pubkey, Mollusk) {
    let program_id = Pubkey::new_from_array(TOKEN_ID);
    let so_stem = std::env::var("PTOKEN_SO_STEM")
        .unwrap_or_else(|_| "/tmp/ptok_sbf_out/pinocchio_token_program".to_string());
    let mollusk = Mollusk::new(&program_id, &so_stem);
    (program_id, mollusk)
}

/// Diagnostic: an unknown instruction tag should fail cheaply (a few CU) with a
/// clean error, not blow the compute budget. If this is cheap, basic execution
/// works and any budget-exceeded is specific to a code path.
#[test]
fn unknown_tag_fails_cheaply() {
    let (program_id, mollusk) = load();
    println!(
        "compute_unit_limit = {}",
        mollusk.compute_budget.compute_unit_limit
    );
    let ix = Instruction {
        program_id,
        accounts: vec![],
        data: vec![250u8], // no such instruction
    };
    let res = mollusk.process_instruction(&ix, &[]);
    println!(
        "unknown-tag: CU consumed = {}, result = {:?}",
        res.compute_units_consumed, res.program_result
    );
}

/// Diagnostic: get_account_data_size (tag 21) — takes a mint, returns the size.
/// A simpler path than the ui-amount formatter.
#[test]
fn get_account_data_size_diag() {
    let (program_id, mollusk) = load();
    let mint = Pubkey::new_unique();
    let mint_acc = mint_account(program_id, Pubkey::new_unique(), Pubkey::new_unique(), 4);
    let ix = Instruction {
        program_id,
        accounts: vec![AccountMeta::new_readonly(mint, false)],
        data: vec![21u8],
    };
    let res = mollusk.process_instruction(&ix, &[(mint, mint_acc)]);
    println!(
        "get_account_data_size: CU = {}, result = {:?}",
        res.compute_units_consumed, res.program_result
    );
}

#[test]
fn amount_to_ui_amount_passes_mollusk_v3() {
    let (program_id, mollusk) = load();
    let mint = Pubkey::new_unique();
    let mint_acc = mint_account(program_id, Pubkey::new_unique(), Pubkey::new_unique(), 4);

    // AmountToUiAmount (tag 23) of amount 20 with 4 decimals.
    let mut data = vec![23u8];
    data.extend_from_slice(&20u64.to_le_bytes());
    let ix = Instruction {
        program_id,
        accounts: vec![AccountMeta::new_readonly(mint, false)],
        data,
    };

    let res = mollusk.process_instruction(&ix, &[(mint, mint_acc.clone())]);
    println!(
        "amount_to_ui_amount: CU consumed = {}, result = {:?}",
        res.compute_units_consumed, res.program_result
    );
    mollusk.process_and_validate_instruction(&ix, &[(mint, mint_acc)], &[Check::success()]);
}

#[test]
fn amount_ui_round_trip_with_maximum_decimals() {
    let (program_id, mollusk) = load();
    let mint = Pubkey::new_unique();
    let mint_acc = mint_account(
        program_id,
        Pubkey::new_unique(),
        Pubkey::new_unique(),
        u8::MAX,
    );

    // 20 with 255 decimals formats as 0.00...002 after its trailing zero is
    // trimmed. This is deliberately much larger than the original test output.
    let mut expected_ui_amount = vec![b'0'; u8::MAX as usize + 1];
    expected_ui_amount[1] = b'.';
    let last = expected_ui_amount.len() - 1;
    expected_ui_amount[last] = b'2';

    let mut to_ui_data = vec![23u8];
    to_ui_data.extend_from_slice(&20u64.to_le_bytes());
    let to_ui = Instruction {
        program_id,
        accounts: vec![AccountMeta::new_readonly(mint, false)],
        data: to_ui_data,
    };
    let to_ui_result = mollusk.process_instruction(&to_ui, &[(mint, mint_acc.clone())]);
    assert_success_without_runaway_compute(&to_ui_result);

    let mut to_amount_data = vec![24u8];
    to_amount_data.extend_from_slice(&expected_ui_amount);
    let to_amount = Instruction {
        program_id,
        accounts: vec![AccountMeta::new_readonly(mint, false)],
        data: to_amount_data,
    };
    let to_amount_result = mollusk.process_instruction(&to_amount, &[(mint, mint_acc)]);
    assert_success_without_runaway_compute(&to_amount_result);
}

#[test]
fn transfer_checked_updates_both_balances() {
    let (program_id, mollusk) = load();
    let mint = Pubkey::new_unique();
    let source = Pubkey::new_unique();
    let destination = Pubkey::new_unique();
    let authority = Pubkey::new_unique();
    let mint_acc = mint_account(program_id, Pubkey::new_unique(), Pubkey::new_unique(), 4);

    let mut data = vec![12u8]; // TransferChecked
    data.extend_from_slice(&40u64.to_le_bytes());
    data.push(4);
    let ix = Instruction {
        program_id,
        accounts: vec![
            AccountMeta::new(source, false),
            AccountMeta::new_readonly(mint, false),
            AccountMeta::new(destination, false),
            AccountMeta::new_readonly(authority, true),
        ],
        data,
    };
    let result = mollusk.process_instruction(
        &ix,
        &[
            (source, token_account(program_id, mint, authority, 100)),
            (mint, mint_acc),
            (
                destination,
                token_account(program_id, mint, Pubkey::new_unique(), 5),
            ),
            (authority, signer_account()),
        ],
    );

    assert_eq!(
        result.program_result,
        mollusk_svm::result::ProgramResult::Success
    );
    assert_eq!(token_amount(resulting_account(&result, &source)), 60);
    assert_eq!(token_amount(resulting_account(&result, &destination)), 45);
}

#[test]
fn mint_to_checked_updates_supply_and_balance() {
    let (program_id, mollusk) = load();
    let mint = Pubkey::new_unique();
    let destination = Pubkey::new_unique();
    let authority = Pubkey::new_unique();
    let mint_acc = mint_account(program_id, authority, Pubkey::new_unique(), 4);

    let mut data = vec![14u8]; // MintToChecked
    data.extend_from_slice(&75u64.to_le_bytes());
    data.push(4);
    let ix = Instruction {
        program_id,
        accounts: vec![
            AccountMeta::new(mint, false),
            AccountMeta::new(destination, false),
            AccountMeta::new_readonly(authority, true),
        ],
        data,
    };
    let result = mollusk.process_instruction(
        &ix,
        &[
            (mint, mint_acc),
            (
                destination,
                token_account(program_id, mint, Pubkey::new_unique(), 5),
            ),
            (authority, signer_account()),
        ],
    );

    assert_eq!(
        result.program_result,
        mollusk_svm::result::ProgramResult::Success
    );
    assert_eq!(mint_supply(resulting_account(&result, &mint)), 75);
    assert_eq!(token_amount(resulting_account(&result, &destination)), 80);
}

#[test]
fn burn_checked_updates_supply_and_balance() {
    let (program_id, mollusk) = load();
    let mint = Pubkey::new_unique();
    let source = Pubkey::new_unique();
    let authority = Pubkey::new_unique();
    let mint_acc = mint_account_with_supply(
        program_id,
        Pubkey::new_unique(),
        Pubkey::new_unique(),
        4,
        100,
    );

    let mut data = vec![15u8]; // BurnChecked
    data.extend_from_slice(&35u64.to_le_bytes());
    data.push(4);
    let ix = Instruction {
        program_id,
        accounts: vec![
            AccountMeta::new(source, false),
            AccountMeta::new(mint, false),
            AccountMeta::new_readonly(authority, true),
        ],
        data,
    };
    let result = mollusk.process_instruction(
        &ix,
        &[
            (source, token_account(program_id, mint, authority, 100)),
            (mint, mint_acc),
            (authority, signer_account()),
        ],
    );

    assert_eq!(
        result.program_result,
        mollusk_svm::result::ProgramResult::Success
    );
    assert_eq!(token_amount(resulting_account(&result, &source)), 65);
    assert_eq!(mint_supply(resulting_account(&result, &mint)), 65);
}

#[test]
fn trace_amount_to_ui_amount() {
    let program_id = Pubkey::new_from_array(TOKEN_ID);
    let mint = Pubkey::new_unique();
    let so_stem = std::env::var("PTOKEN_SO_STEM")
        .unwrap_or_else(|_| "/tmp/ptok_sbf_out/pinocchio_token_program".to_string());
    let mut mollusk = Mollusk::new(&program_id, &so_stem);
    mollusk.compute_budget.compute_unit_limit = 3000; // cap so the trace is small
    let mint_acc = mint_account(program_id, Pubkey::new_unique(), Pubkey::new_unique(), 4);
    let mut data = vec![23u8];
    data.extend_from_slice(&20u64.to_le_bytes());
    let ix = Instruction {
        program_id,
        accounts: vec![AccountMeta::new_readonly(mint, false)],
        data,
    };
    let _ = mollusk.process_instruction(&ix, &[(mint, mint_acc)]);
}
