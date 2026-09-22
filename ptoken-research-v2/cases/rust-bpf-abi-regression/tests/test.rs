use {mollusk_svm::Mollusk, solana_instruction::Instruction, solana_pubkey::Pubkey};

const PROGRAM_ID: Pubkey = Pubkey::new_from_array([42; 32]);

#[test]
fn program_result_abi_regression() {
    let program_path = std::env::var("PROGRAM_PATH")
        .unwrap_or_else(|_| "target/deploy/rust_bpf_abi_regression".to_owned());
    let mollusk = Mollusk::new(&PROGRAM_ID, &program_path);
    let instruction = Instruction::new_with_bytes(PROGRAM_ID, &[0, 1, 0, 1, 1, 1, 0], vec![]);
    let result = mollusk.process_instruction(&instruction, &[]);

    assert!(result.program_result.is_ok(), "{:?}", result.program_result);
    println!(
        "program_result_abi_regression={}",
        result.compute_units_consumed
    );
}
