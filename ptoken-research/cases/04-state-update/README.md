# Case 04 — state-update

Compares how the two compilers build p-token's balance and delegate update.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 2,127 | 2,128 |
| ELF bytes | 936 | 536 |
| static instructions | 51 | 52 |

Upstream costs **+1 CU**.

That is not a rounding error or noise. It is one specific instruction, and it
is the same bug as case 02 — just executed once instead of 64 times.

CU measured on the artifacts in this folder with the local SVM runner.

## Prebuilt artifacts

Checked in so you can read the code without building anything:

| file | what it is |
|---|---|
| `toolchain.so` | built with `cargo-build-sbf` |
| `upstream.so` | built with `cargo-build-sbpf` |
| `toolchain.asm` | disassembly of `toolchain.so` |
| `upstream.asm` | disassembly of `upstream.so` |

Both files are short. Just read them:

```bash
cat toolchain.asm
cat upstream.asm
```

## What this reproduces from p-token

Source repo: <https://github.com/solana-program/token>
File: `pinocchio/program/src/processor/shared/transfer.rs`

This is the Transfer hot path — the balance check followed by the delegate
bookkeeping.

| p-token | line | this reproducer |
|---|---|---|
| [`amount().checked_sub(amount).ok_or(InsufficientFunds)?`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/transfer.rs#L103) | 103–105 | `account.amount.checked_sub(amount).ok_or(1u64)?` |
| [`delegated_amount().checked_sub(amount).ok_or(...)?`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/transfer.rs#L137) | 137–139 | `account.delegated_amount.checked_sub(amount).ok_or(1u64)?` |
| [`set_delegated_amount(delegated_amount)`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/transfer.rs#L142) | 142 | `account.delegated_amount = delegated` |
| [`if delegated_amount == 0 { clear_delegate() }`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/transfer.rs#L145) | 144–146 | `if delegated == 0 { account.has_delegate = false }` |

The real code:

```rust
let delegated_amount = source_account
    .delegated_amount()
    .checked_sub(amount)
    .ok_or(TokenError::InsufficientFunds)?;

if !self_transfer {
    source_account.set_delegated_amount(delegated_amount);

    if delegated_amount == 0 {
        source_account.clear_delegate();
    }
}
```

The control flow is copied faithfully: checked subtraction on the balance,
conditional checked subtraction on the delegated amount, then a zero-check that
clears the delegate.

## What is NOT from p-token

| p-token | this reproducer |
|---|---|
| packed on-chain `Account` state, `COption` delegate | flat `struct Account { amount, delegated_amount, has_delegate }` |
| straight-line code inside `process_transfer` | `#[inline(never)]` function |
| runs once per transfer | 64 iterations in a loop |

## Two of three paths are dead

This is the biggest caveat. The test input is `amount = 1_000_000 + seed`, and
the loop subtracts at most 8 per iteration — 288 total over 64 iterations.

That means:

- `checked_sub` **can never fail**, so the `InsufficientFunds` path is unreachable
- `delegated_amount` **never reaches zero**, so `clear_delegate()` is unreachable

Only the happy path is measured. And the two compilers lay out the callee
*differently* — upstream hoists `r0 = 0x1` and moves the delegate block out of
line at `jmp_0158`, toolchain keeps it inline — so the untaken paths are exactly
where they would diverge.

On this input both callees happen to execute the same 18 instructions. That is
luck, not equivalence. Feed it an input that underflows, or one that drives the
delegate to zero, and this case would likely stop being +1.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_state_update.so toolchain.so

cargo build-sbpf --arch v3 --skip-builtins-check
cp target/bpfel-unknown-none/release/libptoken_repro_state_update.so upstream.so
```

Copy each `.so` out right after its build — both tools write into `target/`
and the second one overwrites the first.

## Disassemble it

```bash
sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 51 vs 52
```

## Where the 1 CU goes

Everything reconciles exactly to the measured CU:

| | toolchain | upstream |
|---|---:|---:|
| prologue | 8 | **9** |
| loop body x 64 | 15 -> 960 | 15 -> 960 |
| callee x 64 | 18 -> 1,152 | 18 -> 1,152 |
| epilogue | 7 | 7 |
| **total** | **2,127** | **2,128** |

The loop and the callee are instruction-for-instruction equal. The entire
difference is one instruction in the prologue:

```bash
sed -n '/^entrypoint:/,/^jmp_/p' toolchain.asm
sed -n '/^entrypoint:/,/^jmp_/p' upstream.asm
```

```
TOOLCHAIN (8 instructions)          UPSTREAM (9 instructions)
  w1 = *(u8 *)(r1 + 0x10)             w1 = *(u8 *)(r1 + 0x10)
  r1 += 0xf4240                       r2 = 0x1              <- extra
  *(u64 *)(r10 - 0xfe8) = r1          *(u8 *)(r10 - 0x18) = w2
  *(u64 *)(r10 - 0xff0) = r1          r1 += 0xf4240
  r6 = 0x0                            *(u64 *)(r10 - 0x20) = r1
  *(u8 *)(r10 - 0xfe0) = 0x1   <-     *(u64 *)(r10 - 0x28) = r1
  r7 = 0x0                            r7 = 0x0
  goto jmp_0108                       r6 = 0x0
                                      goto jmp_0068
```

Toolchain stores the constant `1` straight to memory in one instruction.
Upstream puts it in a register first, then stores the register.

**This is exactly the same bug as case 02.** There it sat inside a function
called 64 times and cost 64 CU. Here it is in the prologue, executed once, and
costs 1.

Same root cause, cost scaling purely with execution count. That is good evidence
the bug is real and not an artifact of case 02's shape.

## What to take from this

**Small but useful.** It confirms case 02's store-immediate regression in a
second, independent program.

It also establishes a baseline worth stating: when neither compiler makes an
instruction-selection mistake, they produce **exactly equal code** for real
p-token control flow — 15 and 18 instructions, matched one for one.

Upstream is not broadly worse at codegen. It loses on specific, nameable
patterns.

## Note on memory

Both binaries perform the **same** memory operations: 194 loads, 133 stores,
1 stack load, 5 stack stores. The whole difference is one register move.
Register spilling explains none of it.

## Note on build flags

Unlike case 03, this case is **not** affected by `--override-cpu-flag=v3`.
Adding it by hand gives the same 52 instructions; only `w` vs `r` register
rendering differs in the disassembly.
