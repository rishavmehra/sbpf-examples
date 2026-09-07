# Case 01 — approve

Compares how the two compilers build a minimal version of p-token's successful
`Approve` instruction.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, rustc 1.95.0-dev, LLVM 22.1.2, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf 0.1.0` — rustc 1.100.0-nightly, LLVM 23.1.1, target `bpfel-unknown-none` + `sbpf-linker 0.2.1` |

Both builds use sBPF architecture v3.

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 78 | 84 |
| ELF bytes | 1,776 | 1,296 |
| static instructions | 152 | 143 |

Upstream costs **+6 CU (+7.7%)** on the successful path, while producing an
ELF that is 480 bytes smaller.

CU is measured by executing one instruction with Mollusk. Both versions pass
the same state checks: the delegate is set and `delegated_amount` becomes 50.

## Tool versions

| component | exact version |
|---|---|
| `cargo-build-sbf` | 4.3.0 |
| Solana platform-tools | v1.57 |
| toolchain rustc | 1.95.0-dev, commit `ae660768a`, 2026-08-17 |
| toolchain LLVM / LLD | 22.1.2, Anza LLVM commit `a4135d0` |
| `cargo-build-sbpf` | 0.1.0, Git commit `0cd59a3` |
| upstream rustc | 1.100.0-nightly, commit `f248f4038`, 2026-09-05 |
| upstream LLVM | 23.1.1 |
| `sbpf-linker` | 0.2.1, Git commit `665252b` |
| disassembler | `sbpf 0.3.0`, Git commit `a7f19f2` |
| Pinocchio | 0.9.3 |
| `solana-compiler-builtins` | Git commit `fd7ac4a9` |

`cargo-build-sbpf` explicitly runs `cargo +nightly`, so the upstream artifact
uses the installed `nightly` toolchain shown above.

Both builds use a 4,096-byte stack and architecture v3. The upstream build
uses target CPU v4 and enables misaligned memory access.

## Artifacts

| file | what it is |
|---|---|
| `artifacts/sbf/ptoken_approve_repro.so` | Solana toolchain ELF |
| `artifacts/sbpf/ptoken_approve_repro.so` | upstream SBPF ELF |
| `artifacts/disassembly/sbf.asm` | labeled toolchain disassembly |
| `artifacts/disassembly/sbpf.asm` | labeled upstream disassembly |
| `artifacts/disassembly/sbf.raw.asm` | raw toolchain instruction stream |
| `artifacts/disassembly/sbpf.raw.asm` | raw upstream instruction stream |
| `artifacts/disassembly/sbf-vs-sbpf.diff` | unified raw-instruction diff |

Start with:

```bash
diff -y --width=120 \
  artifacts/disassembly/sbf.asm \
  artifacts/disassembly/sbpf.asm
```

## What this reproduces from p-token

Source repository: <https://github.com/solana-program/token>

Pinned source revision:
[`9f776fa1f095fa8a5884599c7e6afc73c5b5a557`](https://github.com/solana-program/token/tree/9f776fa1f095fa8a5884599c7e6afc73c5b5a557)

The reproducer follows p-token's normal, non-multisig `Approve` success path:

| p-token code | p-token reference | this reproducer |
|---|---|---|
| discriminator `4` selects `Approve` | [`entrypoint.rs` lines 402–407](https://github.com/solana-program/token/blob/9f776fa1f095fa8a5884599c7e6afc73c5b5a557/pinocchio/program/src/entrypoint.rs#L402-L407) | [`src/lib.rs` line 32](src/lib.rs#L32) |
| wrapper unpacks amount and calls shared processor with `None` decimals | [`approve.rs` lines 6–10](https://github.com/solana-program/token/blob/9f776fa1f095fa8a5884599c7e6afc73c5b5a557/pinocchio/program/src/processor/approve.rs#L6-L10) | [`src/lib.rs` lines 36–44](src/lib.rs#L36-L44) |
| little-endian `u64` amount load | [`processor/mod.rs` lines 201–211](https://github.com/solana-program/token/blob/9f776fa1f095fa8a5884599c7e6afc73c5b5a557/pinocchio/program/src/processor/mod.rs#L201-L211) | [`src/lib.rs` lines 36–42](src/lib.rs#L36-L42) |
| accounts are source, delegate, owner, remaining signers | [`shared/approve.rs` lines 37–48](https://github.com/solana-program/token/blob/9f776fa1f095fa8a5884599c7e6afc73c5b5a557/pinocchio/program/src/processor/shared/approve.rs#L37-L48) | [`src/lib.rs` lines 48–51](src/lib.rs#L48-L51) |
| load initialized token account and reject frozen state | [`shared/approve.rs` lines 50–59](https://github.com/solana-program/token/blob/9f776fa1f095fa8a5884599c7e6afc73c5b5a557/pinocchio/program/src/processor/shared/approve.rs#L50-L59) | [`src/lib.rs` lines 53–59](src/lib.rs#L53-L59) |
| validate owner key and signature | [`processor/mod.rs` lines 108–150](https://github.com/solana-program/token/blob/9f776fa1f095fa8a5884599c7e6afc73c5b5a557/pinocchio/program/src/processor/mod.rs#L108-L150) | [`src/lib.rs` lines 60–68](src/lib.rs#L60-L68) |
| write delegate and delegated amount | [`shared/approve.rs` lines 75–83](https://github.com/solana-program/token/blob/9f776fa1f095fa8a5884599c7e6afc73c5b5a557/pinocchio/program/src/processor/shared/approve.rs#L75-L83) | [`src/lib.rs` lines 70–72](src/lib.rs#L70-L72) |

The account layout and methods are not recreated. The case uses p-token's real
`pinocchio-token-interface::state::account::Account`, `load_mut`,
`is_frozen`, `set_delegate`, and `set_delegated_amount` implementations.

## Exact approve logic retained

The core of the reproducer is deliberately close to p-token:

```rust
let [source_info, delegate_info, owner_info, remaining @ ..] = accounts else {
    return Err(ProgramError::NotEnoughAccountKeys);
};

let source = unsafe { load_mut::<Account>(source_info.borrow_mut_data_unchecked())? };

if source.is_frozen()? {
    return Err(TokenError::AccountFrozen.into());
}
if unlikely(!pubkey_eq(&source.owner, owner_info.key())) {
    return Err(TokenError::OwnerMismatch.into());
}
if unlikely(!owner_info.is_signer()) {
    return Err(ProgramError::MissingRequiredSignature);
}

source.set_delegate(delegate_info.key());
source.set_delegated_amount(amount);
```

## What is NOT from p-token

- This case supports only instruction discriminator `4`; p-token dispatches all
  Token Program instructions.
- This case uses Pinocchio's standard `program_entrypoint!` with at most three
  accounts. P-token has a custom optimized entrypoint and supports more accounts.
- Only the normal single-owner success path is retained. P-token also validates
  multisig owners and additional signer accounts.
- `ApproveChecked` and its mint/decimal checks are not included.
- Rejecting non-empty `remaining` accounts is reproducer scaffolding. P-token
  passes them to multisig validation.
- The Mollusk test creates an initialized account directly. It does not execute
  PToken's mint/account setup transactions.

These omissions are intentional: the case isolates the smallest successful
approve operation that still shows an upstream CU regression.

## Build and test

```bash
./scripts/build-sbf.sh
./scripts/test-one.sh sbf

./scripts/build-sbpf.sh
./scripts/test-one.sh sbpf
```

Or run the complete comparison:

```bash
./scripts/run.sh
```

## Disassemble

```bash
./scripts/disassemble.sh
```

This uses the `sbpf` executable built from `/home/ubuntu/upstream/sbpf`, not
LLVM's generic `llvm-objdump`.

## Where the 6 CU goes

Following the successful branch through each disassembly gives:

| executed section | toolchain | upstream | difference |
|---|---:|---:|---:|
| entrypoint and account/input deserialization | 33 | 38 | +5 |
| approve validation and state update | 45 | 46 | +1 |
| total | 78 | 84 | **+6** |

In `sbf.asm`, the approve section begins at `jmp_0330`. In `sbpf.asm`, it
begins at `jmp_02a0`. Include the final `exit` when counting the path.

Most of the regression is therefore in the generated Pinocchio entrypoint and
account-walking code. Only one extra executed instruction is in the actual
approve validation and state update.

## What to take from this

Upstream produces fewer static instructions and a smaller ELF, but that does
not guarantee lower CU. For this input, its chosen control-flow layout executes
six more instructions. On sBPF, each executed instruction matters directly to
the CU result.
