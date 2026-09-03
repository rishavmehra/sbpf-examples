# Case 07 — multisig, real shape

The faithful reproducer for p-token's multisig signer check. Real 32-byte keys,
`#[inline(always)]` like the production code, no artificial repetition.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 140 | 146 |
| ELF bytes | 1,376 | 992 |
| static instructions | 106 | 109 |

Upstream costs **+6 CU**.

CU measured on the artifacts in this folder with the local SVM runner.

## Prebuilt artifacts

| file | what it is |
|---|---|
| `toolchain.so` | built with `cargo-build-sbf 4.3.0` |
| `upstream.so` | built with `cargo-build-sbpf` |
| `toolchain.asm` | disassembly of `toolchain.so` |
| `upstream.asm` | disassembly of `upstream.so` |

## What this reproduces from p-token

Source repo: <https://github.com/solana-program/token>

The multisig block inside
[`validate_owner`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L108),
`pinocchio/program/src/processor/mod.rs`:

```rust
let mut num_signers = 0;
let mut matched = [false; MAX_SIGNERS as usize];

for signer in signers.iter() {
    for (position, key) in multisig.signers[0..multisig.n as usize].iter().enumerate() {
        if pubkey_eq(key, signer.key()) && !matched[position] {
            if !signer.is_signer() {
                return Err(ProgramError::MissingRequiredSignature);
            }
            matched[position] = true;
            num_signers += 1;
        }
    }
}
if num_signers < multisig.m {
    return Err(ProgramError::MissingRequiredSignature);
}
```

| p-token | line | this reproducer |
|---|---|---|
| [`validate_owner`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L108) | 108 | `fn validate`, also `#[inline(always)]` |
| [`matched = [false; MAX_SIGNERS]`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L130) | 130 | `matched = [false; 11]` |
| [nested signer loop](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L132) | 132–141 | same nesting |
| [`!signer.is_signer()` early error](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L135) | 135 | `signer_flags[i] == 0` |
| [`num_signers < multisig.m`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L143) | 143 | `num_signers < threshold` |
| [`MAX_SIGNERS = 11`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/interface/src/state/multisig.rs#L10) | multisig.rs:10 | `MAX_SIGNERS = 11` |

`validate_owner` is called from ten processors — `withdraw_excess_lamports`,
`unwrap_lamports`, `close_account`, `revoke`, `set_authority`, `approve`,
`toggle_account_state`, and others. It runs on nearly every authority check.

The input models the success path: three signers, three expected keys, all
flags set, threshold 3.

## Where the 6 CU goes

Both binaries do **identical memory work** — 30 `ldxdw`, 8 `ldxb`, 7 stores,
0 stack loads, 4 stack stores on each side. Nothing spills.

The whole difference is register shuffling:

| opcode | toolchain | upstream | |
|---|---:|---:|---|
| `mov64` | 14 | **21** | +7 |
| `ja` | 5 | 4 | −1 |
| `jne` | 22 | 24 | +2 |
| `jeq` | 12 | 10 | −2 |
| everything else | | | equal |

Net **+6**. Upstream emits seven more register-to-register moves; the branch
counts cancel out.

Look at the loops side by side:

```bash
diff -y --width=90 toolchain.asm upstream.asm
```

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_multisig_real_shape.so toolchain.so

cargo build-sbpf --arch v3 --skip-builtins-check
cp target/bpfel-unknown-none/release/libptoken_repro_multisig_real_shape.so upstream.so

sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 106 vs 109
```

Copy each `.so` out right after its build — both tools write into `target/`.

## What is NOT p-token

- p-token loads keys from `AccountInfo` structures; this reads them from a flat
  instruction-data buffer.
- The `is_signer()` error path is never taken with this input — all flags are
  set. Only the success path is measured.
- `n = 3` of 11 possible signers, so 8 of the `matched` slots go unused.

## Note on build flags

Adding `--override-cpu-flag=v3` by hand makes almost no difference here —
1,000 bytes / 147 CU with the flag versus 992 bytes / 146 CU without.
