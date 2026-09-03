.globl entrypoint

entrypoint:
  w1 = *(u8 *)(r1 + 0x10)
  r2 = 0x1
  *(u8 *)(r10 - 0x18) = w2
  r1 += 0xf4240
  *(u64 *)(r10 - 0x20) = r1
  *(u64 *)(r10 - 0x28) = r1
  r7 = 0x0
  r6 = 0x0
  goto jmp_0068

jmp_0048:
  r1 ^= r7
  r6 += 0x1
  r7 = r1
  if r6 == 0x40 goto jmp_00c0

jmp_0068:
  r2 = r6
  r2 &= 0x7
  r2 += 0x1
  r1 = r10
  r1 += -0x28
  call fn_00f8
  r0 &= 0x1
  r1 = -0x1
  if r0 != 0x0 goto jmp_0048
  r1 = r2
  goto jmp_0048

jmp_00c0:
  r2 = *(u64 *)(r10 - 0x28)
  *(u64 *)(r10 - 0x8) = r2
  *(u64 *)(r10 - 0x10) = r1
  r1 = r10
  r1 += -0x10
  r0 = 0x0
  exit

fn_00f8:
  r3 = 0x1
  r4 = *(u64 *)(r1 + 0x0)
  r0 = 0x1
  if r4 < r2 goto jmp_0148
  w5 = *(u8 *)(r1 + 0x10)
  if r5 != 0x0 goto jmp_0158

jmp_0128:
  r4 -= r2
  *(u64 *)(r1 + 0x0) = r4
  r0 = 0x0
  r3 = r4

jmp_0148:
  r2 = r3
  exit

jmp_0158:
  r5 = *(u64 *)(r1 + 0x8)
  if r5 < r2 goto jmp_0148
  r3 = r5
  r3 -= r2
  *(u64 *)(r1 + 0x8) = r3
  if r5 != r2 goto jmp_0128
  r3 = 0x0
  *(u8 *)(r1 + 0x10) = w3
  goto jmp_0128
