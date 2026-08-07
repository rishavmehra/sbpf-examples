; The same program as six_args_r11.s, but with the two r11 spill accesses
; rewritten EXACTLY as the sbpf-linker r11->r10 pass does:
;   caller store [r11-0x8] (negative off)  -> [r10-0x20]           (own frame)
;   callee load  [r11+0x8] (positive off)  -> [r10-(0x1000+0x20)]  (reach back
;                                                                    one 0x1000
;                                                                    frame)
;
; The tail returns `sum - 21`, so a return of 0 means the 6th arg was read back
; correctly through the r10 slot. This one assembles, loads, and runs.

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
  stxdw [r10-0x20], r0
  call fn_0128
  stxw [r10-0x4], r0
  mov64 r1, r10
  add64 r1, -0x4
  sub64 r0, 0x15
  exit

fn_0128:
  mov64 r0, r2
  add64 r0, r1
  add64 r0, r3
  add64 r0, r4
  add64 r0, r5
  ldxdw r1, [r10-0x1020]
  add64 r0, r1
  exit
