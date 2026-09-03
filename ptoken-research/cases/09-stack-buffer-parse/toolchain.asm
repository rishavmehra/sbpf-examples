.globl entrypoint

entrypoint:
  r7 = r1
  r6 = r10
  r6 += -0xff8
  r1 = r6
  r2 = 0x30
  r3 = 0x101
  call fn_0188
  r7 += 0x10
  r1 = r6
  r2 = r7
  r3 = 0x100
  call sol_memcpy_
  r7 = 0xff
  w1 = *(u8 *)(r10 - 0xff8)
  if r1 == 0x2b goto jmp_0080
  r7 = 0x100

jmp_0080:
  r0 = 0x0
  r2 = 0x1
  if r1 == 0x2b goto jmp_00a0
  r2 = 0x0

jmp_00a0:
  r6 += r2

jmp_00a8:
  r1 = r0
  if r7 == 0x0 goto jmp_0160
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_01b0
  r2 = 0x1
  if r1 != 0x0 goto jmp_00f0
  r2 = 0x0

jmp_00f0:
  r1 = -0x1
  r2 &= 0x1
  if r2 != 0x0 goto jmp_0160
  w2 = *(u8 *)(r6 + 0x0)
  r2 += -0x30
  if r2 > 0x9 goto jmp_0160
  r3 = r0
  r0 += r2
  r2 = 0x1
  if r0 < r3 goto jmp_0148
  r2 = 0x0

jmp_0148:
  r6 += 0x1
  r7 += -0x1
  if r2 != 0x1 goto jmp_00a8

jmp_0160:
  *(u64 *)(r10 - 0x1000) = r1
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit

fn_0188:
  r6 = r1
  r2 &= 0xff
  call sol_memset_
  r0 = r6
  exit

fn_01b0:
  *(u64 *)(r10 - 0xff8) = r2
  r2 = r1
  r2 <<= 0x20
  r2 >>= 0x20
  r7 = r3
  r7 <<= 0x20
  r7 >>= 0x20
  *(u64 *)(r10 - 0x1000) = r1
  r1 >>= 0x20
  r0 = r7
  r0 *= r2
  r7 *= r1
  r5 = r3
  r5 >>= 0x20
  r6 = r5
  r6 *= r2
  r9 = r6
  r9 += r7
  r2 = 0x1
  r8 = 0x1
  if r9 < r6 goto jmp_0260
  r8 = 0x0

jmp_0260:
  r6 = r9
  r6 <<= 0x20
  r7 = r0
  r7 += r6
  if r7 < r0 goto jmp_0290
  r2 = 0x0

jmp_0290:
  r9 >>= 0x20
  r8 <<= 0x20
  r8 |= r9
  r0 = *(u64 *)(r10 - 0xff8)
  r3 *= r0
  r0 = *(u64 *)(r10 - 0x1000)
  r4 *= r0
  r4 += r3
  r5 *= r1
  r5 += r4
  r5 += r8
  r5 += r2
  r0 = r7
  r1 = r5
  exit
