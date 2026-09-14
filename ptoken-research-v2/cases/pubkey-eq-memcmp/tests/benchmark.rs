use {mollusk_svm::Mollusk, solana_instruction::Instruction, solana_pubkey::Pubkey, std::env};

const PROGRAM_ID: Pubkey = Pubkey::new_from_array([
    80, 75, 69, 89, 67, 77, 80, 49, 80, 75, 69, 89, 67, 77, 80, 50, 80, 75, 69, 89, 67, 77, 80, 51,
    80, 75, 69, 89, 67, 77, 80, 52,
]);

fn input(left: [u8; 32], right: [u8; 32], expected: bool) -> Vec<u8> {
    let mut data = Vec::with_capacity(65);
    data.push(expected as u8);
    data.extend_from_slice(&left);
    data.extend_from_slice(&right);
    data
}

fn run_case(mollusk: &Mollusk, name: &str, left: [u8; 32], right: [u8; 32], expected: bool) {
    let instruction =
        Instruction::new_with_bytes(PROGRAM_ID, &input(left, right, expected), vec![]);
    let result = mollusk.process_instruction(&instruction, &[]);
    assert!(
        result.program_result.is_ok(),
        "{name}: {:?}",
        result.program_result
    );
    println!("{name}_cu={}", result.compute_units_consumed);
}

#[test]
fn correctness_and_compute_units() {
    let program_name = env::var("PROGRAM_NAME").expect("PROGRAM_NAME must name the program");
    let mut mollusk = Mollusk::default();
    mollusk.add_program(&PROGRAM_ID, &program_name);

    let left = core::array::from_fn(|i| (i as u8).wrapping_mul(17).wrapping_add(3));
    run_case(&mollusk, "equal", left, left, true);

    for byte in [0usize, 7, 8, 15, 16, 23, 24, 31] {
        let mut right = left;
        right[byte] ^= 0x5a;
        run_case(
            &mollusk,
            &format!("different_byte_{byte}"),
            left,
            right,
            false,
        );
    }

    let arbitrary_left = [0x55; 32];
    let mut arbitrary_right = [0xaa; 32];
    arbitrary_right[31] = 0x11;
    run_case(
        &mollusk,
        "arbitrary_different",
        arbitrary_left,
        arbitrary_right,
        false,
    );
}
