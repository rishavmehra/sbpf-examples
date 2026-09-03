# Case 02 — unpack-checked

Compares how the two compilers build p-token's amount/decimals decoder.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 1,801 | 1,865 |
| ELF bytes | 848 | 448 |
| static instructions | 40 | 41 |

Upstream costs **+64 CU**.

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
File: `pinocchio/program/src/processor/mod.rs`

| p-token | line | this reproducer |
|---|---|---|
| [`unpack_amount_and_decimals`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L217) | 217 | `fn unpack_amount_and_decimals` |
| [`U64_BYTES`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L74) | 74 | the literal `8` |

The real function:

```rust
#[inline(always)]
const fn unpack_amount_and_decimals(instruction_data: &[u8]) -> Result<(u64, u8), TokenError> {
    if likely(instruction_data.len() >= 9) {
        let (amount, decimals) = instruction_data.split_at(U64_BYTES);
        Ok((
            unsafe { u64::from_le_bytes(*(amount.as_ptr() as *const [u8; U64_BYTES])) },
            decimals[0],
        ))
    } else {
        Err(TokenError::InvalidInstruction)
    }
}
```

It runs on every "checked" instruction:

- [`transfer_checked.rs:11`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/transfer_checked.rs#L11)
- [`mint_to_checked.rs:8`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mint_to_checked.rs#L8)
- [`burn_checked.rs:8`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/burn_checked.rs#L8)
- [`approve_checked.rs:8`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/approve_checked.rs#L8)

## What is NOT from p-token

Three differences that matter:

| p-token | this reproducer |
|---|---|
| `#[inline(always)]` | `#[inline(never)]` |
| `const fn` | plain `fn` |
| `likely(len >= 9)` | plain `if len < 9` |
| called once per instruction | called 64 times in a loop |

The 64-iteration loop is scaffolding so the effect is measurable.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_unpack_checked.so toolchain.so

cargo build-sbpf --arch v3
cp target/bpfel-unknown-none/release/libptoken_repro_unpack_checked.so upstream.so
```

Copy each `.so` out right after its build — both tools write into `target/`
and the second one overwrites the first.

## Disassemble it

```bash
sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 40 vs 41
```

## Where the 64 CU goes

The loops are instruction-for-instruction identical. The whole difference is
in the called function.

```bash
sed -n '/^fn_0000:/,/exit/p' toolchain.asm
sed -n '/^fn_0120:/,/exit/p' upstream.asm
```

```
TOOLCHAIN (4 instructions)          UPSTREAM (5 instructions)
  *(u8  *)(r1 + 0x10) = w3            *(u8  *)(r1 + 0x10) = w3
  *(u64 *)(r1 + 0x8)  = r2            *(u64 *)(r1 + 0x8)  = r2
  *(u64 *)(r1 + 0x0)  = 0x0           r2 = 0x0            <- extra
  exit                                *(u64 *)(r1 + 0x0)  = r2
                                      exit
```

SBF can store a constant straight to memory in one instruction. Toolchain uses
it. Upstream does not — it puts the `0` in a register first, then stores the
register.

1 extra instruction x 64 calls = **+64 CU**. That is the entire gap.

You can see it as register moves in the trace summary: 516 vs 580, a difference
of exactly 64.

## Important: the length check is gone

Look at either function above. There is no `if len >= 9` anywhere — just three
stores and an exit.

Both compilers proved the caller always passes a 9-byte array and deleted the
check, even through `#[inline(never)]`. So despite the name, **this case does
not test a checked unpack.**

What it actually measures is the return-slot round-trip. `Result<(u64, u8), TokenError>`
is 24 bytes, too big to return in registers, so it comes back through a hidden
pointer: the caller passes a stack address in `r1`, the callee writes 3 fields
there, the caller reads 2 back. That is the 193 loads and 193 stores in the trace.

In real p-token this never happens, because the function is `#[inline(always)]`
and gets folded into the caller. No call, no return slot, no round-trip.

## What to take from this

**The +64 is a real compiler finding.** LLVM 23 lost SBF's store-immediate
instruction selection. It fires in any program that stores a constant to
memory, which is most of them. Case 04 hits the same bug in its prologue and
costs +1 CU there, confirming it scales purely with execution count.

**It is not a p-token cost.** The function is inlined in production, so the
call this case measures never occurs.

To make this case faithful, two changes are needed: mark the function
`#[inline(always)]`, and pass a slice whose length is not a compile-time
constant so the check survives.

## Note on memory

Both binaries perform the **same** memory operations: 193 loads, 193 stores,
192 stack loads, 1 stack store. The whole 64 CU difference is one extra
register move per call. Register spilling explains none of it.

Caveat on that last number: the summary counts only direct `[r10-...]` accesses.
The callee's 3 stores per call go through `r1`, which holds a copy of a stack
address, so they are counted as stores but not as *stack* stores.
