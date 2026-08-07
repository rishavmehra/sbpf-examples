; Claire's exact hand-written repro: a 6-argument call spills the 6th arg to a
; SECOND stack addressed by r11.
;   caller: stxdw [r11-0x8], r0   (store outgoing 6th arg)
;   callee: ldxdw r1, [r11+0x8]   (read incoming 6th arg)
;
; This does NOT assemble: sBPF has no r11 register (the VM reserves reg 11 as
; its program counter), so the assembler rejects the two r11 memory operands
; below with "expected memory_op". That is the whole reason the sbpf-linker
; pass rewrites r11 -> r10. Compare with six_args_r10.s.

.globl entrypoint

entrypoint:
  mov64 r1, 0x1
  stxw [r10-0x18], r1
  mov64 r1, r10
  add64 r1, -0x18
  mov64 r1, 0x2
  stxw [r10-0x14], r1
  mov64 r1, r10
  add64 r1, -0x14
  mov64 r1, 0x3
  stxw [r10-0x10], r1
  mov64 r1, r10
  add64 r1, -0x10
  mov64 r1, 0x4
  stxw [r10-0xc], r1
  mov64 r1, r10
  add64 r1, -0xc
  mov64 r1, 0x5
  stxw [r10-0x8], r1
  mov64 r1, r10
  add64 r1, -0x8
  mov64 r1, 0x6
  stxw [r10-0x4], r1
  mov64 r1, r10
  add64 r1, -0x4
  ldxw r5, [r10-0x8]
  ldxw r4, [r10-0xc]
  ldxw r3, [r10-0x10]
  ldxw r2, [r10-0x14]
  ldxw r1, [r10-0x18]
  ldxw r0, [r10-0x4]
  stxdw [r11-0x8], r0
  call fn_0128
  stxw [r10-0x4], r0
  mov64 r1, r10
  add64 r1, -0x4
  mov64 r0, 0x0
  exit

fn_0128:
  mov64 r0, r2
  add64 r0, r1
  add64 r0, r3
  add64 r0, r4
  add64 r0, r5
  ldxdw r1, [r11+0x8]
  add64 r0, r1
  exit
