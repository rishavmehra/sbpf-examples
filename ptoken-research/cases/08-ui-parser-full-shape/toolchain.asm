.globl entrypoint

fn_0000:
  w2 = *(u8 *)(r1 + 0x41)
  if r2 == 0x0 goto jmp_0020
  r0 = 0x0
  goto jmp_0598

jmp_0020:
  r0 = *(u64 *)(r1 + 0x10)
  r8 = *(u64 *)(r1 + 0x28)
  r2 = *(u64 *)(r1 + 0x18)
  *(u64 *)(r10 - 0xff0) = r2
  if r8 > r2 goto jmp_0540
  r5 = *(u64 *)(r1 + 0x20)
  if r8 < r5 goto jmp_0540
  r2 = r1
  r2 += 0x30
  w3 = *(u8 *)(r1 + 0x38)
  *(u64 *)(r10 - 0xfe0) = r2
  r2 += r3
  w7 = *(u8 *)(r2 - 0x1)
  *(u64 *)(r10 - 0xfe8) = r3
  if r3 >= 0x5 goto jmp_03f0
  r2 = 0x101010101010101 ll
  r3 = r7
  r3 *= r2
  *(u64 *)(r10 - 0x1000) = r3

jmp_00c0:
  r2 = r0
  r2 += r5
  r4 = r8
  r4 -= r5
  *(u64 *)(r10 - 0xff8) = r5
  if r4 >= 0x10 goto jmp_0138
  if r8 == r5 goto jmp_0538
  r3 = 0x0

jmp_0100:
  r5 = r2
  r5 += r3
  w5 = *(u8 *)(r5 + 0x0)
  if r5 == r7 goto jmp_02e8
  r3 += 0x1
  if r3 < r4 goto jmp_0100
  goto jmp_0538

jmp_0138:
  r3 = 0x0
  r5 = r2
  r5 += 0x7
  r5 &= -0x8
  if r5 == r2 goto jmp_01a0
  r5 -= r2

jmp_0168:
  r6 = r2
  r6 += r3
  w6 = *(u8 *)(r6 + 0x0)
  if r6 == r7 goto jmp_02e8
  r3 += 0x1
  if r3 < r5 goto jmp_0168
  r3 = r5

jmp_01a0:
  *(u64 *)(r10 - 0xfd0) = r7
  *(u64 *)(r10 - 0xfd8) = r8
  r5 = r4
  r5 += -0x10
  if r3 > r5 goto jmp_0278

jmp_01c8:
  r9 = r2
  r9 += r3
  r8 = *(u64 *)(r9 + 0x8)
  r7 = *(u64 *)(r10 - 0x1000)
  r8 ^= r7
  r6 = 0x101010101010100 ll
  r6 -= r8
  r6 |= r8
  r8 = *(u64 *)(r9 + 0x0)
  r8 ^= r7
  r9 = 0x101010101010100 ll
  r9 -= r8
  r9 |= r8
  r9 &= r6
  r6 = -0x7f7f7f7f7f7f7f80 ll
  r9 &= r6
  if r9 != r6 goto jmp_0278
  r3 += 0x10
  if r3 <= r5 goto jmp_01c8

jmp_0278:
  r8 = *(u64 *)(r10 - 0xfd8)
  r7 = *(u64 *)(r10 - 0xfd0)
  if r4 == r3 goto jmp_0538
  r4 -= r3
  r2 += r3
  r5 = 0x0

jmp_02a8:
  r6 = r2
  r6 += r5
  w6 = *(u8 *)(r6 + 0x0)
  if r6 == r7 goto jmp_02e0
  r5 += 0x1
  if r5 < r4 goto jmp_02a8
  goto jmp_0538

jmp_02e0:
  r3 += r5

jmp_02e8:
  r5 = *(u64 *)(r10 - 0xff8)
  r5 += r3
  r5 += 0x1
  *(u64 *)(r1 + 0x20) = r5
  r2 = *(u64 *)(r10 - 0xfe8)
  if r5 < r2 goto jmp_03b8
  r2 = *(u64 *)(r10 - 0xff0)
  if r5 > r2 goto jmp_03b8
  r9 = r5
  r3 = *(u64 *)(r10 - 0xfe8)
  r9 -= r3
  r2 = r0
  r2 += r9
  *(u64 *)(r10 - 0xfd8) = r1
  r1 = r2
  r2 = *(u64 *)(r10 - 0xfe0)
  *(u64 *)(r10 - 0xff8) = r0
  r6 = r5
  call fn_0c98
  r5 = r6
  r1 = *(u64 *)(r10 - 0xfd8)
  r2 = r0
  r0 = *(u64 *)(r10 - 0xff8)
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x0 goto jmp_03c8

jmp_03b8:
  if r8 >= r5 goto jmp_00c0
  goto jmp_0540

jmp_03c8:
  r2 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r1 + 0x0) = r5
  r0 += r2
  goto jmp_0590

jmp_03e8:
  if r8 < r5 goto jmp_0540

jmp_03f0:
  r2 = r0
  r2 += r5
  r3 = r8
  r3 -= r5
  *(u64 *)(r10 - 0xff8) = r5
  if r3 > 0xf goto jmp_0478
  r5 = 0x0
  if r3 == 0x0 goto jmp_04c0

jmp_0430:
  r4 = r2
  r4 += r5
  w4 = *(u8 *)(r4 + 0x0)
  if r4 == r7 goto jmp_04d0
  r5 += 0x1
  if r5 < r3 goto jmp_0430
  r4 = 0x0
  r5 = r3
  goto jmp_04d8

jmp_0478:
  r6 = r1
  r1 = r7
  r9 = r0
  call fn_0ac8
  r4 = r0
  r0 = r9
  r5 = r1
  r1 = r6
  goto jmp_04d8

jmp_04c0:
  r4 = 0x0
  goto jmp_04d8

jmp_04d0:
  r4 = 0x1

jmp_04d8:
  if r4 != 0x1 goto jmp_0538
  r2 = *(u64 *)(r10 - 0xff8)
  r2 += r5
  r5 = r2
  r5 += 0x1
  *(u64 *)(r1 + 0x20) = r5
  r2 = *(u64 *)(r10 - 0xfe8)
  if r5 < r2 goto jmp_03e8
  r2 = *(u64 *)(r10 - 0xff0)
  if r5 > r2 goto jmp_03e8
  r1 = *(u64 *)(r10 - 0xfe8)
  call fn_0ab0

jmp_0538:
  *(u64 *)(r1 + 0x20) = r8

jmp_0540:
  r2 = *(u64 *)(r1 + 0x0)
  r0 += r2
  r9 = *(u64 *)(r1 + 0x8)
  r3 = r0
  if r9 != r2 goto jmp_0570
  r3 = 0x0

jmp_0570:
  w4 = *(u8 *)(r1 + 0x40)
  if r4 != 0x0 goto jmp_0588
  r0 = r3

jmp_0588:
  *(u8 *)(r1 + 0x41) = 0x1

jmp_0590:
  r9 -= r2

jmp_0598:
  r1 = r9
  exit

entrypoint:
  r2 = 0x2e0000002e ll
  *(u64 *)(r10 - 0xec8) = r2
  r1 += 0x10
  *(u64 *)(r10 - 0xee8) = r1
  *(u16 *)(r10 - 0xeb8) = 0x1
  *(u8 *)(r10 - 0xec0) = 0x1
  *(u64 *)(r10 - 0xed0) = 0x100
  *(u64 *)(r10 - 0xed8) = 0x0
  *(u64 *)(r10 - 0xee0) = 0x100
  *(u64 *)(r10 - 0xef0) = 0x100
  *(u64 *)(r10 - 0xef8) = 0x0
  r1 = r10
  r1 += -0xef8
  call fn_0000
  r6 = r0
  r7 = r1
  if r6 == 0x0 goto jmp_0aa0
  r1 = r10
  r1 += -0xef8
  call fn_0000
  r8 = 0x1
  if r0 == 0x0 goto jmp_0678
  r8 = r0
  if r0 != 0x0 goto jmp_06b0
  goto jmp_0680

jmp_0678:
  if r0 != 0x0 goto jmp_06b0

jmp_0680:
  r1 = 0x0
  goto jmp_06b0

jmp_0690:
  r1 += -0x1
  r3 = r2
  r1 -= r8
  if r3 != 0x30 goto jmp_07f8

jmp_06b0:
  r9 = r1
  if r9 == 0x0 goto jmp_07e8
  r1 = r8
  r1 += r9
  w2 = *(u8 *)(r1 - 0x1)
  r2 <<= 0x38
  r2 s>>= 0x38
  if r2 s> -0x1 goto jmp_0690
  w4 = *(u8 *)(r1 - 0x2)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s>= -0x40 goto jmp_0770
  w3 = *(u8 *)(r1 - 0x3)
  r3 <<= 0x38
  r3 s>>= 0x38
  if r3 s>= -0x40 goto jmp_0790
  r5 = r3
  r5 &= 0x3f
  w3 = *(u8 *)(r1 - 0x4)
  r3 &= 0x7
  r3 <<= 0x6
  r3 |= r5
  r1 += -0x4
  goto jmp_07a0

jmp_0770:
  r1 += -0x2
  r4 &= 0x1f
  r3 = r4
  goto jmp_07b8

jmp_0790:
  r1 += -0x3
  r3 &= 0xf

jmp_07a0:
  r4 &= 0x3f
  r3 <<= 0x6
  r3 |= r4

jmp_07b8:
  r2 &= 0x3f
  r3 <<= 0x6
  r3 |= r2
  r1 -= r8
  if r3 == 0x30 goto jmp_06b0
  goto jmp_07f8

jmp_07e8:
  r9 = 0x0
  if r7 == 0x0 goto jmp_0908

jmp_07f8:
  r1 = r10
  r1 += -0xef8
  call fn_0000
  r1 = r0
  r0 = -0x1
  if r9 > 0xff goto jmp_0910
  if r1 != 0x0 goto jmp_0910
  *(u64 *)(r10 - 0xea8) = r6
  r6 = r7
  r6 += 0xff
  if r6 > 0x101 goto jmp_0910
  *(u64 *)(r10 - 0xeb0) = r7
  r7 = r10
  r7 += -0x1000
  r1 = r7
  r2 = 0x30
  r3 = 0x101
  call fn_0cd8
  r1 = r7
  r2 = *(u64 *)(r10 - 0xea8)
  r3 = *(u64 *)(r10 - 0xeb0)
  call sol_memcpy_
  r1 = *(u64 *)(r10 - 0xeb0)
  r7 += r1
  r1 = r7
  r7 = *(u64 *)(r10 - 0xeb0)
  r2 = r8
  r3 = r9
  call sol_memcpy_
  if r7 == -0xff goto jmp_0908
  if r7 != -0xfe goto jmp_0938
  w1 = *(u8 *)(r10 - 0x1000)
  if r1 == 0x2b goto jmp_0908
  if r1 != 0x2d goto jmp_0940

jmp_0908:
  r0 = -0x1

jmp_0910:
  *(u64 *)(r10 - 0x1000) = r0
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit

jmp_0938:
  w1 = *(u8 *)(r10 - 0x1000)

jmp_0940:
  r2 = r1
  r1 = 0x1
  if r2 == 0x2b goto jmp_0960
  r1 = 0x0

jmp_0960:
  r7 = r10
  r7 += -0x1000
  r7 += r1
  r0 = 0x0
  r6 -= r1
  if r6 >= 0x11 goto jmp_09e0
  if r6 == 0x0 goto jmp_0910

jmp_0998:
  w1 = *(u8 *)(r7 + 0x0)
  r1 += -0x30
  if r1 > 0x9 goto jmp_0908
  r0 *= 0xa
  r0 += r1
  r7 += 0x1
  r6 += -0x1
  if r6 != 0x0 goto jmp_0998
  goto jmp_0910

jmp_09e0:
  if r6 == 0x0 goto jmp_0910
  r1 = r0
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_0d00
  r2 = 0x1
  if r1 != 0x0 goto jmp_0a28
  r2 = 0x0

jmp_0a28:
  r2 &= 0x1
  if r2 != 0x0 goto jmp_0908
  w1 = *(u8 *)(r7 + 0x0)
  r1 += -0x30
  if r1 > 0x9 goto jmp_0908
  r2 = r0
  r0 += r1
  r1 = 0x1
  if r0 < r2 goto jmp_0a78
  r1 = 0x0

jmp_0a78:
  r7 += 0x1
  r6 += -0x1
  r1 &= 0x1
  if r1 == 0x0 goto jmp_09e0
  goto jmp_0908

jmp_0aa0:
  call fn_0ab8

fn_0aa8:
jmp_0aa8:
  goto jmp_0aa8

fn_0ab0:
  call fn_0aa8

fn_0ab8:
  call fn_0ac0

fn_0ac0:
  call fn_0aa8

fn_0ac8:
  r4 = r1
  r1 = 0x0
  r5 = r2
  r5 += 0x7
  r5 &= -0x8
  r4 &= 0xff
  if r5 == r2 goto jmp_0b40
  r5 -= r2

jmp_0b08:
  r0 = r2
  r0 += r1
  w0 = *(u8 *)(r0 + 0x0)
  if r0 == r4 goto jmp_0c88
  r1 += 0x1
  if r1 < r5 goto jmp_0b08
  r1 = r5

jmp_0b40:
  r5 = r3
  r5 += -0x10
  if r1 > r5 goto jmp_0c20
  r6 = 0x101010101010101 ll
  r0 = r4
  r0 *= r6
  r6 = -0x7f7f7f7f7f7f7f80 ll

jmp_0b88:
  r7 = r2
  r7 += r1
  r8 = *(u64 *)(r7 + 0x8)
  r8 ^= r0
  r9 = 0x101010101010100 ll
  r9 -= r8
  r9 |= r8
  r7 = *(u64 *)(r7 + 0x0)
  r7 ^= r0
  r8 = 0x101010101010100 ll
  r8 -= r7
  r8 |= r7
  r8 &= r9
  r8 &= r6
  if r8 != r6 goto jmp_0c20
  r1 += 0x10
  if r1 <= r5 goto jmp_0b88

jmp_0c20:
  if r3 == r1 goto jmp_0c70
  r3 -= r1
  r2 += r1
  r5 = 0x0

jmp_0c40:
  r0 = r2
  r0 += r5
  w0 = *(u8 *)(r0 + 0x0)
  if r0 == r4 goto jmp_0c80
  r5 += 0x1
  if r5 < r3 goto jmp_0c40

jmp_0c70:
  r0 = 0x0
  goto jmp_0c90

jmp_0c80:
  r1 += r5

jmp_0c88:
  r0 = 0x1

jmp_0c90:
  exit

fn_0c98:
  *(u32 *)(r10 - 0x1000) = 0x0
  r4 = r10
  r4 += -0x1000
  call sol_memcmp_
  w0 = *(u32 *)(r10 - 0x1000)
  r0 <<= 0x20
  r0 s>>= 0x20
  exit

fn_0cd8:
  r6 = r1
  r2 &= 0xff
  call sol_memset_
  r0 = r6
  exit

fn_0d00:
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
  if r9 < r6 goto jmp_0db0
  r8 = 0x0

jmp_0db0:
  r6 = r9
  r6 <<= 0x20
  r7 = r0
  r7 += r6
  if r7 < r0 goto jmp_0de0
  r2 = 0x0

jmp_0de0:
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
