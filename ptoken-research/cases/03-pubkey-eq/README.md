# Case 03 — pubkey-eq

Compares how the two compilers build p-token's public-key comparison.

| | |
|---|---|
| toolchain | `cargo-build-sbf 4.3.0` — platform-tools v1.57, target `sbf-solana-solana` |
| upstream | `cargo-build-sbpf` — rustc 1.100 nightly, LLVM 23.1.0, target `bpfel-unknown-none` + `sbpf-linker` |

## Result

| | toolchain | upstream |
|---|---:|---:|
| CU | 2,003 | 2,035 |
| ELF bytes | 944 | 544 |
| static instructions | 51 | 52 |

Upstream costs **+32 CU**.

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

The function body is a **verbatim copy** of `pubkey_eq` from the `pinocchio`
crate (v0.9.3), which p-token depends on:

```rust
pub const fn pubkey_eq(p1: &Pubkey, p2: &Pubkey) -> bool {
    let p1_ptr = p1.as_ptr() as *const u64;
    let p2_ptr = p2.as_ptr() as *const u64;
    unsafe {
        read_unaligned(p1_ptr)           == read_unaligned(p2_ptr)
            && read_unaligned(p1_ptr.add(1)) == read_unaligned(p2_ptr.add(1))
            && read_unaligned(p1_ptr.add(2)) == read_unaligned(p2_ptr.add(2))
            && read_unaligned(p1_ptr.add(3)) == read_unaligned(p2_ptr.add(3))
    }
}
```

A 32-byte key compared as four `u64` words, with short-circuit `&&`.

Source repo: <https://github.com/solana-program/token>

p-token calls it almost everywhere:

| call site | line |
|---|---|
| [`processor/mod.rs` — owner check](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L113) | 113 |
| [`processor/mod.rs` — multisig signer loop](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/mod.rs#L134) | 134 |
| [`shared/transfer.rs` — mint match](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/transfer.rs#L107) | 107, 117 |
| [`shared/burn.rs` — delegate match](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/burn.rs#L64) | 52, 64 |
| [`shared/mint_to.rs`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/mint_to.rs#L39) | 39 |
| [`shared/approve.rs`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/approve.rs#L62) | 62 |
| [`shared/toggle_account_state.rs`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/program/src/processor/shared/toggle_account_state.rs#L29) | 29 |
| [`interface/src/state/account.rs`](https://github.com/solana-program/token/blob/dbd8943/pinocchio/interface/src/state/account.rs#L159) | 159 |

## What is NOT from p-token

| p-token | this reproducer |
|---|---|
| `pub const fn`, no inline attribute, gets inlined | `#[inline(never)]` |
| keys differ in byte 0 in practice | keys differ in **byte 31** |
| called once per check | called 64 times in a loop |

The second one matters most. The test data is `right[31] = seed ^ (i >> 5)`, so
the difference is always in the **last** of the four words. The short-circuit
`&&` never exits early — all four comparisons and all eight loads run every
time.

Real keys almost always differ in the first word, so production exits after
**one** comparison. This case measures the worst case only, and the early exit
is the whole reason the 4-word structure exists.

## Build it

```bash
cargo build-sbf --arch v3
cp target/deploy/ptoken_repro_pubkey_eq.so toolchain.so

cargo build-sbpf --arch v3 --skip-builtins-check
cp target/bpfel-unknown-none/release/libptoken_repro_pubkey_eq.so upstream.so
```

Copy each `.so` out right after its build — both tools write into `target/`
and the second one overwrites the first.

## Disassemble it

```bash
sbpf disassemble --format llvm toolchain.so > toolchain.asm
sbpf disassemble --format llvm upstream.so  > upstream.asm

grep -c '^  ' toolchain.asm upstream.asm     # 51 vs 52
```

## Where the 32 CU goes

The caller loops are **identical** — 14 instructions each:

```bash
diff -y --width=80 \
  <(sed -n '/^jmp_0108:/,/^$/p' toolchain.asm) \
  <(sed -n '/^jmp_0078:/,/^$/p' upstream.asm)
```

The whole difference is block layout inside the compared function.

Toolchain places the "not equal" block so the mismatch path **falls into** it:

```
  if r1 == r2 goto jmp_0070
jmp_0068:                     <- falls straight in, no branch
  r3 = 0x1
jmp_0070:
```

Upstream places it out of line, so the mismatch path pays a jump to get back:

```
jmp_0128:
  r3 = 0x1
  goto jmp_0188               <- extra branch
```

Input data makes 32 of the 64 iterations mismatch. 1 extra instruction x 32
iterations = **+32 CU**. That is the entire gap.

## The build flag matters

`cargo build-sbpf` does not pass `--override-cpu-flag=v3`. Adding it by hand
changes the generated code:

| build | bytes | instructions | loop body |
|---|---:|---:|---:|
| `--override-cpu-flag=v3` | 552 | 53 | 15 |
| `cargo build-sbpf` | 544 | 52 | 14 |

With the flag, LLVM uses 32-bit `w` registers throughout and emits a redundant
zero-extension after the call:

```
  call fn_0118
  w1 = w0          <- dead copy, only appears with --override-cpu-flag=v3
  r7 += r1
```

Without the flag it adds the result directly (`r8 += r0`), matching toolchain.

That dead copy runs 64 times, so building with the flag reports +96 instead of
the +32 above.

Cases 01 and 02 are not affected — the flag changes only register-width
rendering there, and the instruction counts are identical either way.

## What to take from this

**+32 CU from a block-layout choice** is a small, real codegen difference.

**But it is not a p-token cost.** The function is inlined in production, and
this case's test data defeats the early exit that makes it cheap.

The controlled version of this comparison is **case 07**, which uses
`#[inline(always)]` like the real code and real 32-byte keys. There upstream
**wins by 63 CU**, and that result matched the full program almost exactly
(real p-token multisig: −64 CU).

Same function, opposite verdict, depending on how it is called.

## Note on memory

Both binaries perform the **same** memory operations: 513 loads, 73 stores,
0 stack loads, 73 stack stores. The whole difference is one branch.
Register spilling explains none of it.
