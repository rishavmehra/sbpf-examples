#[cfg(test)]
mod tests {
    use mollusk_svm::Mollusk;
    use solana_address::Address;
    use solana_instruction::Instruction;

    fn program_id() -> Address {
        let kp: [u8; 32] = std::fs::read("deploy/arvx-repro-keypair.json")
            .unwrap()[..32]
            .try_into()
            .unwrap();
        Address::new_from_array(kp)
    }

    fn ix(program_id: &Address) -> Instruction {
        Instruction::new_with_bytes(*program_id, &[], vec![])
    }

    /// If arithmetic had worked, sol_log_64_ would print: 0x14 0x0 0x1 0x0 0xa
    /// What we actually see logged: 0x64 0x7 0xa 0x9 0x32
    #[test]
    fn test_v3_extended_math_silently_becomes_jmp32() {
        let id = program_id();
        let mollusk = Mollusk::new(&id, "deploy/arvx-repro-v3");

        let result = mollusk.process_instruction(&ix(&id), &[]);

        assert!(
            !result.program_result.is_err(),
            "expected silent wrong execution (no crash), got error: {:?}",
            result.program_result
        );

        println!("--- v3 extended math as jmp32 NOPs ---");
        println!("program_result : {:?}", result.program_result);
        println!("CUs consumed   : {}", result.compute_units_consumed);
        println!(
            "Register values logged should be inputs, NOT arithmetic results:\n\
             expected if div/mul/rem worked → 0x14  0x0  0x1  0x0  0xa\n\
             actual (arithmetic skipped)   → 0x64  0x7  0xa  0x9  0x32"
        );
    }

    #[test]
    fn test_v0_extended_math_rejected_by_mainnet() {
        let id = program_id();

        let panic_result = std::panic::catch_unwind(|| {
            let mollusk = Mollusk::new(&id, "deploy/arvx-repro-v0");
            mollusk.process_instruction(&ix(&id), &[])
        });
        match &panic_result {
            Err(payload) => {
                let msg = if let Some(s) = payload.downcast_ref::<String>() {
                    s.clone()
                } else if let Some(s) = payload.downcast_ref::<&str>() {
                    s.to_string()
                } else {
                    String::from("(non-string panic payload)")
                };
                println!("--- v0 extended math rejected at load time ---");
                println!("panic: {}", msg);
                assert!(
                    msg.contains("UnknownOpCode") || msg.contains("86"),
                    "expected UnknownOpCode(86, ...) in panic message, got: {}", msg
                );
            }
            Ok(result) => {
                panic!(
                    "expected Mollusk to panic on unknown opcode, but program ran: {:?}",
                    result.program_result
                );
            }
        }
    }
}
