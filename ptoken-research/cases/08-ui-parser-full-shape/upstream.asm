.globl entrypoint

entrypoint:
  r2 = 0x1
  *(u16 *)(r10 - 0x110) = w2
  *(u8 *)(r10 - 0x118) = w2
  r2 = 0x2e0000002e ll
  *(u64 *)(r10 - 0x120) = r2
  r2 = 0x100
  *(u64 *)(r10 - 0x128) = r2
  *(u64 *)(r10 - 0x138) = r2
  *(u64 *)(r10 - 0x148) = r2
  r6 = 0x0
  *(u64 *)(r10 - 0x130) = r6
  *(u64 *)(r10 - 0x150) = r6
  r1 += 0x10
  *(u64 *)(r10 - 0x140) = r1
  r1 = r10
  r1 += -0x150
  call fn_0608
  r7 = r2
  if r0 == 0x0 goto jmp_0600
  *(u64 *)(r10 - 0x160) = r0
  r1 = r10
  r1 += -0x150
  call fn_0608
  if r0 == 0x0 goto jmp_00d0
  r6 = r2

jmp_00d0:
  r8 = 0x1
  if r0 == 0x0 goto jmp_00e8
  r8 = r0

jmp_00e8:
  r9 = r6
  if r9 == 0x0 goto jmp_01b8
  r3 = r8
  r3 += r9
  w1 = *(u8 *)(r3 - 0x1)
  r2 = r1
  r2 <<= 0x38
  r2 s>>= 0x38
  if r2 s> -0x1 goto jmp_0190
  r6 = r3
  r6 += -0x2
  w4 = *(u8 *)(r3 - 0x2)
  r4 <<= 0x38
  r4 s>>= 0x38
  r2 = r4
  r2 &= 0x1f
  if r4 s< -0x40 goto jmp_01e8

jmp_0170:
  r1 &= 0x3f
  r2 <<= 0x6
  r2 |= r1
  goto jmp_01a8

jmp_0190:
  r3 += -0x1
  r6 = r3
  r2 = r1

jmp_01a8:
  r6 -= r8
  if r2 == 0x30 goto jmp_00e8

jmp_01b8:
  r1 = r9
  *(u64 *)(r10 - 0x158) = r7
  r1 |= r7
  r7 = -0x1
  if r1 == 0x0 goto jmp_0590
  goto jmp_0288

jmp_01e8:
  r6 = r3
  r6 += -0x3
  w5 = *(u8 *)(r3 - 0x3)
  r5 <<= 0x38
  r5 s>>= 0x38
  r2 = r5
  r2 &= 0xf
  if r5 s< -0x40 goto jmp_0248

jmp_0228:
  r4 &= 0x3f
  r2 <<= 0x6
  r2 |= r4
  goto jmp_0170

jmp_0248:
  r5 &= 0x3f
  w2 = *(u8 *)(r3 - 0x4)
  r2 &= 0x7
  r2 <<= 0x6
  r2 |= r5
  r3 += -0x4
  r6 = r3
  goto jmp_0228

jmp_0288:
  r1 = r10
  r1 += -0x150
  call fn_0608
  if r9 > 0xff goto jmp_0590
  if r0 != 0x0 goto jmp_0590
  r4 = *(u64 *)(r10 - 0x158)
  r4 += 0xff
  if r4 > 0x101 goto jmp_0590
  r6 = r10
  r6 += -0x108
  r1 = r6
  r2 = 0x30
  r3 = 0x101
  *(u64 *)(r10 - 0x168) = r4
  call fn_0bb0
  r1 = r6
  r2 = *(u64 *)(r10 - 0x160)
  r7 = *(u64 *)(r10 - 0x158)
  r3 = r7
  call sol_memcpy_
  r6 += r7
  r1 = r6
  r2 = r8
  r3 = r9
  call sol_memcpy_
  r5 = *(u64 *)(r10 - 0x168)
  r7 = -0x1
  if r5 == 0x0 goto jmp_0590
  if r5 != 0x1 goto jmp_0390
  w2 = *(u8 *)(r10 - 0x108)
  if r2 == 0x2b goto jmp_0590
  if r2 == 0x2d goto jmp_0590
  goto jmp_0398

jmp_0390:
  w2 = *(u8 *)(r10 - 0x108)

jmp_0398:
  r1 = -0x1
  if r2 == 0x2b goto jmp_03b0
  r1 = 0x0

jmp_03b0:
  r3 = 0x1
  r4 = *(u64 *)(r10 - 0x158)
  if r2 == 0x2b goto jmp_03d0
  r3 = 0x0

jmp_03d0:
  r6 = r10
  r6 += -0x108
  r6 += r3
  r5 -= r3
  if r5 < 0x11 goto jmp_0420
  r4 += r1
  r8 = -0xff
  r8 -= r4
  r0 = 0x0
  goto jmp_04a0

jmp_0420:
  r7 = 0x0
  if r5 == 0x0 goto jmp_0590
  r2 = *(u64 *)(r10 - 0x158)
  r2 += r1
  r1 = -0xff
  r1 -= r2
  r2 = 0x0
  goto jmp_05b8

jmp_0460:
  r8 += 0x1
  r1 = 0x1
  if r8 == 0x0 goto jmp_0480
  r1 = 0x0

jmp_0480:
  r6 += 0x1
  r1 &= 0x1
  r7 = r0
  if r1 != 0x0 goto jmp_0590

jmp_04a0:
  r1 = r0
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_0a88
  r1 = 0x1
  if r2 != 0x0 goto jmp_04e0
  r1 = 0x0

jmp_04e0:
  r7 = -0x1
  r1 &= 0x1
  if r1 != 0x0 goto jmp_0590
  r3 = r0
  w1 = *(u8 *)(r6 + 0x0)
  r1 += -0x30
  r2 = r1
  r2 <<= 0x20
  r2 >>= 0x20
  r0 += r2
  r2 = 0x1
  if r0 < r3 goto jmp_0548
  r2 = 0x0

jmp_0548:
  if r1 > 0x9 goto jmp_0590
  r2 &= 0x1
  if r2 != 0x0 goto jmp_0590
  goto jmp_0460

jmp_0568:
  r2 *= 0xa
  r2 += r3
  r6 += 0x1
  r7 = r2
  if r4 != 0x1 goto jmp_05b8

jmp_0590:
  *(u64 *)(r10 - 0x108) = r7
  r1 = r10
  r1 += -0x108
  r0 = 0x0
  exit

jmp_05b8:
  r7 = -0x1
  w3 = *(u8 *)(r6 + 0x0)
  r3 += -0x30
  if r3 > 0x9 goto jmp_0590
  r1 += 0x1
  r4 = 0x1
  if r1 == 0x0 goto jmp_0568
  r4 = 0x0
  goto jmp_0568

jmp_0600:
  call fn_0cb0

fn_0608:
  r0 = 0x0
  w3 = *(u8 *)(r1 + 0x41)
  if r3 != 0x0 goto jmp_0a58
  r6 = *(u64 *)(r1 + 0x10)
  r3 = *(u64 *)(r1 + 0x28)
  r8 = *(u64 *)(r1 + 0x20)
  if r3 < r8 goto jmp_0a08
  r2 = *(u64 *)(r1 + 0x18)
  *(u64 *)(r10 - 0x28) = r2
  if r3 > r2 goto jmp_0a08
  w4 = *(u8 *)(r1 + 0x38)
  r2 = r1
  r2 += 0x30
  *(u64 *)(r10 - 0x10) = r2
  *(u64 *)(r10 - 0x8) = r4
  r2 += r4
  w9 = *(u8 *)(r2 - 0x1)
  r2 = 0x101010101010101 ll
  r4 = r9
  r4 *= r2
  *(u64 *)(r10 - 0x30) = r4
  *(u64 *)(r10 - 0x20) = r3

jmp_06c0:
  r5 = r6
  r5 += r8
  r4 = r3
  r4 -= r8
  *(u64 *)(r10 - 0x18) = r8
  if r4 > 0xf goto jmp_0738
  if r3 == r8 goto jmp_0a00
  r7 = 0x0

jmp_0700:
  r2 = r5
  r2 += r7
  w2 = *(u8 *)(r2 + 0x0)
  if r2 == r9 goto jmp_0908
  r7 += 0x1
  if r7 < r4 goto jmp_0700
  goto jmp_0a00

jmp_0738:
  r8 = 0x0
  r7 = r5
  r7 += 0x7
  r7 &= -0x8
  if r7 == r5 goto jmp_07a8
  r8 = r7
  r8 -= r5
  r7 = 0x0

jmp_0778:
  r2 = r5
  r2 += r7
  w2 = *(u8 *)(r2 + 0x0)
  if r2 == r9 goto jmp_0908
  r7 += 0x1
  if r7 < r8 goto jmp_0778

jmp_07a8:
  *(u64 *)(r10 - 0x38) = r6
  r7 = r4
  r7 += -0x10
  r0 = *(u64 *)(r10 - 0x30)
  if r8 > r7 goto jmp_0868

jmp_07d0:
  r2 = r5
  r2 += r8
  r3 = *(u64 *)(r2 + 0x8)
  r3 ^= r0
  r6 = 0x101010101010100 ll
  r6 -= r3
  r6 |= r3
  r2 = *(u64 *)(r2 + 0x0)
  r2 ^= r0
  r3 = 0x101010101010100 ll
  r3 -= r2
  r3 |= r2
  r3 &= r6
  r2 = -0x7f7f7f7f7f7f7f80 ll
  r3 &= r2
  if r3 == r2 goto jmp_08a8

jmp_0868:
  r0 = 0x0
  r6 = *(u64 *)(r10 - 0x38)
  r3 = *(u64 *)(r10 - 0x20)
  if r4 == r8 goto jmp_0a00
  r4 -= r8
  r5 += r8
  r7 = 0x0
  goto jmp_08c0

jmp_08a8:
  r8 += 0x10
  if r8 > r7 goto jmp_0868
  goto jmp_07d0

jmp_08c0:
  r2 = r5
  r2 += r7
  w2 = *(u8 *)(r2 + 0x0)
  if r2 == r9 goto jmp_08f8
  r7 += 0x1
  if r7 < r4 goto jmp_08c0
  goto jmp_0a00

jmp_08f8:
  r8 += r7
  r7 = r8

jmp_0908:
  r2 = *(u64 *)(r10 - 0x18)
  r2 += r7
  r2 += 0x1
  *(u64 *)(r1 + 0x20) = r2
  r8 = r2
  r3 = *(u64 *)(r10 - 0x8)
  if r2 < r3 goto jmp_0950
  r2 = *(u64 *)(r10 - 0x28)
  if r8 <= r2 goto jmp_0968

jmp_0950:
  r3 = *(u64 *)(r10 - 0x20)
  if r3 < r8 goto jmp_0a08
  goto jmp_06c0

jmp_0968:
  r2 = r8
  r3 = *(u64 *)(r10 - 0x8)
  r2 -= r3
  if r3 == 0x0 goto jmp_0a60
  r4 = r6
  r4 += r2
  r7 = 0x0
  goto jmp_09c0

jmp_09a8:
  r7 += 0x1
  r3 = *(u64 *)(r10 - 0x8)
  if r7 >= r3 goto jmp_0a60

jmp_09c0:
  r3 = r4
  r3 += r7
  r5 = *(u64 *)(r10 - 0x10)
  r5 += r7
  w5 = *(u8 *)(r5 + 0x0)
  w3 = *(u8 *)(r3 + 0x0)
  if r3 == r5 goto jmp_09a8
  goto jmp_0950

jmp_0a00:
  *(u64 *)(r1 + 0x20) = r3

jmp_0a08:
  r2 = 0x1
  *(u8 *)(r1 + 0x41) = w2
  r2 = *(u64 *)(r1 + 0x8)
  r3 = *(u64 *)(r1 + 0x0)
  w1 = *(u8 *)(r1 + 0x40)
  if r1 != 0x0 goto jmp_0a40
  if r2 == r3 goto jmp_0a58

jmp_0a40:
  r2 -= r3
  r3 += r6
  r0 = r3

jmp_0a58:
  exit

jmp_0a60:
  r0 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r1 + 0x0) = r8
  r2 -= r0
  r0 += r6
  goto jmp_0a58

fn_0a88:
  r2 *= r3
  r6 = r1
  r6 >>= 0x20
  r0 = r3
  r0 >>= 0x20
  r5 = r0
  r5 *= r6
  r5 += r2
  r4 *= r1
  r5 += r4
  r3 <<= 0x20
  r3 >>= 0x20
  r2 = r3
  r2 *= r6
  r1 <<= 0x20
  r1 >>= 0x20
  r3 *= r1
  r4 = r3
  r4 >>= 0x20
  r4 += r2
  r2 = r4
  r2 >>= 0x20
  r5 += r2
  r0 *= r1
  r4 <<= 0x20
  r4 >>= 0x20
  r4 += r0
  r1 = r4
  r1 >>= 0x20
  r5 += r1
  r4 <<= 0x20
  r3 <<= 0x20
  r3 >>= 0x20
  r4 |= r3
  r0 = r4
  r2 = r5
  exit

fn_0bb0:
  r6 = r1
  if r3 > 0x50 goto jmp_0c90
  r1 = 0x0
  if r3 < 0x8 goto jmp_0c50
  r4 = r2
  r4 &= 0xff
  r1 = 0x101010101010101 ll
  r4 *= r1
  r5 = 0x0
  r1 = 0x0

jmp_0c08:
  r0 = r6
  r0 += r5
  *(u64 *)(r0 + 0x0) = r4
  r1 += 0x8
  r0 = r5
  r0 += 0x10
  r5 = r1
  if r0 > r3 goto jmp_0c50
  goto jmp_0c08

jmp_0c50:
  if r1 >= r3 goto jmp_0c80

jmp_0c58:
  r4 = r6
  r4 += r1
  *(u8 *)(r4 + 0x0) = w2
  r1 += 0x1
  if r1 < r3 goto jmp_0c58

jmp_0c80:
  r0 = r6
  exit

jmp_0c90:
  r2 &= 0xff
  r1 = r6
  call sol_memset_
  goto jmp_0c80

fn_0cb0:
  call fn_0cb8

fn_0cb8:
  call fn_0cc0

fn_0cc0:
jmp_0cc0:
  goto jmp_0cc0
