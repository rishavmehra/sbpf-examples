#[cfg(test)]
mod tests {
    use mollusk_svm::Mollusk;
    use solana_address::Address;
    use solana_instruction::Instruction;

    #[test]
    fn number_is_kept_correctly() {
        let we_wrote: u64 = 5_000_000_000;

        let kp: [u8; 32] = std::fs::read("deploy/trunc-mollusk-keypair.json").unwrap()[..32]
            .try_into()
            .unwrap();
        let program_id = Address::new_from_array(kp);
        let mollusk = Mollusk::new(&program_id, "deploy/trunc-mollusk");

        let result = mollusk.process_instruction(
            &Instruction::new_with_bytes(program_id, &[], vec![]),
            &[],
        );
        let returned = u64::from_le_bytes(result.return_data[..8].try_into().unwrap());

        println!("we wrote in .s : {we_wrote}");
        println!("program returned: {returned}");

        assert_eq!(returned, we_wrote, "the number must survive intact now");
    }
}
