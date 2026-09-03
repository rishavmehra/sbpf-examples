.globl entrypoint

fn_0000:
  r3 = 0x1
  r4 = *(u64 *)(r1 + 0x0)
  if r4 >= r2 goto jmp_0028
  r0 = 0x1
  goto jmp_0098

jmp_0028:
  w5 = *(u8 *)(r1 + 0x10)
  if r5 == 0x0 goto jmp_0078
  r5 = *(u64 *)(r1 + 0x8)
  r0 = 0x1
  if r5 < r2 goto jmp_0098
  r3 = r5
  r3 -= r2
  *(u64 *)(r1 + 0x8) = r3
  if r5 != r2 goto jmp_0078
  *(u8 *)(r1 + 0x10) = 0x0

jmp_0078:
  r4 -= r2
  *(u64 *)(r1 + 0x0) = r4
  r0 = 0x0
  r3 = r4

jmp_0098:
  r1 = r3
  exit

entrypoint:
  w1 = *(u8 *)(r1 + 0x10)
  r1 += 0xf4240
  *(u64 *)(r10 - 0xfe8) = r1
  *(u64 *)(r10 - 0xff0) = r1
  r6 = 0x0
  *(u8 *)(r10 - 0xfe0) = 0x1
  r7 = 0x0
  goto jmp_0108

jmp_00e8:
  r2 ^= r6
  r7 += 0x1
  r6 = r2
  if r7 == 0x40 goto jmp_0160

jmp_0108:
  r2 = r7
  r2 &= 0x7
  r2 += 0x1
  r1 = r10
  r1 += -0xff0
  call fn_0000
  r0 &= 0x1
  r2 = -0x1
  if r0 != 0x0 goto jmp_00e8
  r2 = r1
  goto jmp_00e8

jmp_0160:
  r1 = *(u64 *)(r10 - 0xff0)
  *(u64 *)(r10 - 0xff8) = r1
  *(u64 *)(r10 - 0x1000) = r2
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit
