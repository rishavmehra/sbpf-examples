.globl entrypoint

fn_0000:
  r3 = *(u64 *)(r2 + 0x0)
  r4 = *(u64 *)(r1 + 0x0)
  if r4 != r3 goto jmp_0068
  r3 = *(u64 *)(r2 + 0x8)
  r4 = *(u64 *)(r1 + 0x8)
  if r4 != r3 goto jmp_0068
  r3 = *(u64 *)(r2 + 0x10)
  r4 = *(u64 *)(r1 + 0x10)
  if r4 != r3 goto jmp_0068
  r3 = 0x0
  r2 = *(u64 *)(r2 + 0x18)
  r1 = *(u64 *)(r1 + 0x18)
  if r1 == r2 goto jmp_0070

jmp_0068:
  r3 = 0x1

jmp_0070:
  r0 = 0x1
  if r3 == 0x0 goto jmp_0088
  r0 = 0x0

jmp_0088:
  exit

entrypoint:
  w6 = *(u8 *)(r1 + 0x10)
  r1 = 0x101010101010101 ll
  r2 = r6
  r2 *= r1
  *(u64 *)(r10 - 0xfc0) = r2
  *(u64 *)(r10 - 0xfc8) = r2
  *(u64 *)(r10 - 0xfd0) = r2
  *(u64 *)(r10 - 0xfd8) = r2
  *(u64 *)(r10 - 0xfe1) = r2
  *(u64 *)(r10 - 0xfe8) = r2
  *(u64 *)(r10 - 0xff0) = r2
  *(u64 *)(r10 - 0xff8) = r2
  r7 = 0x0
  r8 = 0x0

jmp_0108:
  r9 = r7
  r9 &= 0xff
  r1 = r9
  r1 >>= 0x5
  r1 ^= r6
  *(u8 *)(r10 - 0xfd9) = w1
  r1 = r10
  r1 += -0xfd8
  r2 = r10
  r2 += -0xff8
  call fn_0000
  r8 += r0
  r7 += 0x1
  if r9 < 0x3f goto jmp_0108
  *(u64 *)(r10 - 0x1000) = r8
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit
