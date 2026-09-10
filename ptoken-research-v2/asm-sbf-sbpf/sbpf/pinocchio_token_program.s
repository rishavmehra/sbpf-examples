# Generated with sbpf v0.3.0
# Generated on: 2026-09-10 20:49:03 UTC

.globl entrypoint

fn_0000:
  w4 = *(u32 *)(r1 + 0x14)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x0)
  w3 = *(u32 *)(r1 + 0x10)
  r1 = r5
  call sol_panic_

fn_0030:
  r7 = r2
  r9 = r1
  r0 = 0x0
  r6 = 0xc00000000 ll
  w5 &= 0xff
  if w5 s> 0xd goto jmp_0150
  if w5 s> 0x5 goto jmp_0390
  if w5 == 0x2 goto jmp_2720
  if w5 == 0x4 goto jmp_19e8
  r2 = r7
  if w5 == 0x5 goto jmp_0098
  goto jmp_5e18

jmp_0098:
  r6 = 0x0
  r0 = 0xa
  if r2 == 0x0 goto jmp_5e18
  r0 = 0x3
  r3 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  if r1 != 0xa5 goto jmp_5e18
  w1 = *(u8 *)(r3 + 0xc4)
  if w1 > 0x2 goto jmp_5e18
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r0 = 0xa
  if r2 == 0x1 goto jmp_5e18
  r6 = 0x1100000000 ll
  r0 = 0x1100000000 ll
  if w1 == 0x2 goto jmp_5e18
  r4 = *(u64 *)(r9 + 0x8)
  w1 = *(u8 *)(r3 + 0xa0)
  if w1 == 0x1 goto jmp_3238
  r5 = *(u64 *)(r4 + 0x8)
  goto jmp_32c0

jmp_0150:
  if w5 s> 0x16 goto jmp_0780
  if w5 s> 0x12 goto jmp_1028
  r2 = r7
  if w5 == 0xe goto jmp_1c90
  if w5 == 0x10 goto jmp_0180
  goto jmp_5e18

jmp_0180:
  r0 = 0xc00000000 ll
  if r4 < 0x20 goto jmp_3d88
  r0 = 0xa
  if r2 < 0x2 goto jmp_3d88
  if r2 == 0x2 goto jmp_3d88
  r0 = 0x1
  r1 = *(u64 *)(r9 + 0x10)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = 0x515c2c1917d5a706 ll
  if r2 != r4 goto jmp_3d88
  r2 = *(u64 *)(r1 + 0x10)
  r4 = 0x7ff14a3d4cc98c21 ll
  if r2 != r4 goto jmp_3d88
  r2 = *(u64 *)(r1 + 0x18)
  r4 = 0x44fda19b08eeda58 ll
  if r2 != r4 goto jmp_3d88
  r2 = *(u64 *)(r1 + 0x20)
  r4 = 0x8ad9dbe3 ll
  if r2 != r4 goto jmp_3d88
  r8 = *(u64 *)(r9 + 0x0)
  r5 = r9
  r9 = *(u64 *)(r8 + 0x50)
  r4 = r9
  r4 += 0x80
  r2 = *(u64 *)(r1 + 0x58)
  r2 *= r4
  r6 = *(u64 *)(r1 + 0x60)
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_3ef8
  r1 = 0x4000000000000000 ll
  if r6 == r1 goto jmp_3ef0
  *(u64 *)(r10 - 0x140) = r3
  *(u64 *)(r10 - 0x138) = r5
  r1 = r2
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x130) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  w7 = w0
  r1 = r6
  call fn_17668
  if w7 s< 0x0 goto jmp_0340
  *(u64 *)(r10 - 0x130) = r0

jmp_0340:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r2 = -0x1
  if w0 s> 0x0 goto jmp_0378
  r2 = *(u64 *)(r10 - 0x130)

jmp_0378:
  r5 = *(u64 *)(r10 - 0x138)
  r3 = *(u64 *)(r10 - 0x140)
  goto jmp_3ef8

jmp_0390:
  if w5 s> 0xa goto jmp_0c38
  r2 = r7
  if w5 == 0x6 goto jmp_12d0
  if w5 == 0xa goto jmp_03b8
  goto jmp_5e18

jmp_03b8:
  r0 = 0xa
  r6 = 0x0
  if r2 < 0x3 goto jmp_5e18
  r3 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  r0 = 0x3
  if r1 != 0xa5 goto jmp_5e18
  w1 = *(u8 *)(r3 + 0xc4)
  if w1 > 0x2 goto jmp_5e18
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r6 = 0xd00000000 ll
  r0 = 0xd00000000 ll
  if w1 == 0x2 goto jmp_5e18
  r6 = 0xa00000000 ll
  w1 = *(u8 *)(r3 + 0xc5)
  r0 = 0xa00000000 ll
  if w1 == 0x1 goto jmp_5e18
  r6 = 0x300000000 ll
  r1 = *(u64 *)(r3 + 0x58)
  r5 = *(u64 *)(r9 + 0x8)
  r4 = *(u64 *)(r5 + 0x8)
  r0 = 0x300000000 ll
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r3 + 0x60)
  r4 = *(u64 *)(r5 + 0x10)
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r3 + 0x68)
  r4 = *(u64 *)(r5 + 0x18)
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r3 + 0x70)
  r4 = *(u64 *)(r5 + 0x20)
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r5 + 0x50)
  r6 = 0x0
  r0 = 0x3
  if r1 != 0x52 goto jmp_5e18
  w1 = *(u8 *)(r5 + 0x85)
  if w1 > 0x1 goto jmp_5e18
  r0 = 0x9
  if w1 != 0x1 goto jmp_5e18
  r6 = 0x1000000000 ll
  w1 = *(u8 *)(r5 + 0x86)
  r0 = 0x1000000000 ll
  if w1 != 0x1 goto jmp_5e18
  r6 = r2
  r4 = 0x400000000 ll
  r2 = *(u64 *)(r5 + 0x8a)
  r7 = r9
  r1 = *(u64 *)(r9 + 0x10)
  r8 = *(u64 *)(r1 + 0x8)
  r0 = 0x400000000 ll
  if r2 != r8 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x10)
  r8 = *(u64 *)(r5 + 0x92)
  if r8 != r2 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x18)
  r8 = *(u64 *)(r5 + 0x9a)
  if r8 != r2 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x20)
  r5 = *(u64 *)(r5 + 0xa2)
  if r5 != r2 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0x163 goto jmp_6cd8
  r2 = *(u64 *)(r1 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_6c78
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_6cd8
  r2 = *(u64 *)(r1 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_6cd8
  r2 = *(u64 *)(r1 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_6cd8
  r2 = *(u64 *)(r1 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 == r5 goto jmp_06a8
  goto jmp_6cd8

jmp_06a8:
  w2 = *(u8 *)(r1 + 0x5a)
  if w2 != 0x1 goto jmp_5688
  w2 = 0x0
  *(u32 *)(r10 - 0x140) = w2
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r6 == 0x3 goto jmp_77d8
  w2 = *(u8 *)(r1 + 0x59)
  *(u64 *)(r10 - 0x148) = r2
  if r2 > 0xb goto jmp_56e0
  r2 = *(u64 *)(r10 - 0x148)
  if w2 == 0x0 goto jmp_77d8
  r2 = r7
  r2 += 0x18
  *(u64 *)(r10 - 0x130) = r2
  r6 <<= 0x3
  r7 += r6
  *(u64 *)(r10 - 0x138) = r7
  r2 = *(u64 *)(r10 - 0x148)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x148) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x140) = w2
  r2 = r1
  r2 += 0x73
  *(u64 *)(r10 - 0x150) = r2
  goto jmp_7698

jmp_0780:
  if w5 s> 0x25 goto jmp_1170
  if w5 == 0x17 goto jmp_20a8
  *(u64 *)(r10 - 0x130) = r7
  if w5 == 0x18 goto jmp_07a8
  goto jmp_5e18

jmp_07a8:
  r1 = r4
  r1 += -0xf
  w0 = 0x1
  if r1 > r4 goto jmp_07d0
  w0 = 0x0

jmp_07d0:
  *(u64 *)(r10 - 0x138) = r9
  r5 = 0x0
  if w0 != 0x0 goto jmp_07f0
  r5 = r1

jmp_07f0:
  if r4 == 0x0 goto jmp_2958
  r6 = r3
  r6 += 0x7
  r6 &= -0x8
  r6 -= r3
  r7 = 0x0
  r2 = -0x7f7f7f7f7f7f7f80 ll

jmp_0830:
  r0 = r3
  r0 += r7
  w9 = *(u8 *)(r0 + 0x0)
  w0 = w9
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s< 0x0 goto jmp_0930
  w0 = w6
  w0 -= w7
  r0 &= 0x7
  if r0 != 0x0 goto jmp_09c8
  if r7 >= r5 goto jmp_08c8

jmp_0890:
  r0 = r3
  r0 += r7
  r8 = *(u64 *)(r0 + 0x0)
  r0 = *(u64 *)(r0 + 0x8)
  r0 |= r8
  r0 &= r2
  if r0 == 0x0 goto jmp_0918

jmp_08c8:
  if r7 >= r4 goto jmp_09d0

jmp_08d0:
  r0 = r3
  r0 += r7
  w0 = *(u8 *)(r0 + 0x0)
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s< 0x0 goto jmp_09d0
  r7 += 0x1
  if r7 < r4 goto jmp_08d0
  goto jmp_2958

jmp_0918:
  r7 += 0x10
  if r7 < r5 goto jmp_0890
  goto jmp_08c8

jmp_0930:
  r9 &= 0xff
  r8 = data_0598 ll
  r8 += r9
  r0 = 0xc00000000 ll
  w8 = *(u8 *)(r8 + 0x0)
  if w8 == 0x4 goto jmp_0a70
  if w8 == 0x3 goto jmp_09e0
  if w8 != 0x2 goto jmp_3d88
  r7 += 0x1
  if r7 < r4 goto jmp_0998
  goto jmp_3d88

jmp_0998:
  r8 = r3
  r8 += r7
  w8 = *(u8 *)(r8 + 0x0)
  w8 <<= 0x18
  w8 s>>= 0x18
  if w8 s> -0x41 goto jmp_3d88

jmp_09c8:
  r7 += 0x1

jmp_09d0:
  if r7 < r4 goto jmp_0830
  goto jmp_2958

jmp_09e0:
  r8 = r7
  r8 += 0x1
  if r8 < r4 goto jmp_0a00
  goto jmp_3d88

jmp_0a00:
  r1 = r3
  r1 += r8
  w8 = *(u8 *)(r1 + 0x0)
  w8 <<= 0x18
  w8 s>>= 0x18
  if w9 == 0xe0 goto jmp_0af0
  if w9 == 0xed goto jmp_0be0
  w1 = w9
  w1 += 0x1f
  w1 &= 0xff
  if w1 < 0xc goto jmp_0a60
  goto jmp_0bc0

jmp_0a60:
  if w8 s< -0x40 goto jmp_0be8
  goto jmp_3d88

jmp_0a70:
  r8 = r7
  r8 += 0x1
  if r8 < r4 goto jmp_0a90
  goto jmp_3d88

jmp_0a90:
  r1 = r3
  r1 += r8
  w8 = *(u8 *)(r1 + 0x0)
  w8 <<= 0x18
  w8 s>>= 0x18
  if w9 == 0xf0 goto jmp_0b08
  if w9 == 0xf4 goto jmp_0b28
  w9 += 0xf
  w9 &= 0xff
  if w9 > 0x2 goto jmp_3d88
  if w8 s< -0x40 goto jmp_0b30
  goto jmp_3d88

jmp_0af0:
  w8 &= -0x20
  if w8 == -0x60 goto jmp_0be8
  goto jmp_3d88

jmp_0b08:
  w8 += 0x70
  w8 &= 0xff
  if w8 < 0x30 goto jmp_0b30
  goto jmp_3d88

jmp_0b28:
  if w8 s> -0x71 goto jmp_3d88

jmp_0b30:
  r8 = r7
  r8 += 0x2
  if r8 >= r4 goto jmp_3d88
  r1 = r3
  r1 += r8
  w1 = *(u8 *)(r1 + 0x0)
  w1 <<= 0x18
  w1 s>>= 0x18
  if w1 s> -0x41 goto jmp_3d88
  r7 += 0x3
  if r7 >= r4 goto jmp_3d88
  r1 = r3
  r1 += r7
  w1 = *(u8 *)(r1 + 0x0)
  w1 <<= 0x18
  w1 s>>= 0x18
  if w1 s> -0x41 goto jmp_3d88
  goto jmp_09c8

jmp_0bc0:
  w9 &= 0xfe
  if w9 != 0xee goto jmp_3d88
  if w8 s< -0x40 goto jmp_0be8
  goto jmp_3d88

jmp_0be0:
  if w8 s> -0x61 goto jmp_3d88

jmp_0be8:
  r7 += 0x2
  if r7 < r4 goto jmp_0c00
  goto jmp_3d88

jmp_0c00:
  r1 = r3
  r1 += r7
  w1 = *(u8 *)(r1 + 0x0)
  w1 <<= 0x18
  w1 s>>= 0x18
  if w1 s> -0x41 goto jmp_3d88
  goto jmp_09c8

jmp_0c38:
  if w5 == 0xb goto jmp_1618
  r2 = r7
  if w5 == 0xd goto jmp_0c58
  goto jmp_5e18

jmp_0c58:
  r0 = 0xc00000000 ll
  if r4 < 0x9 goto jmp_5e18
  r0 = 0xa
  r6 = 0x0
  if r2 < 0x4 goto jmp_5e18
  r4 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r4 + 0x50)
  r0 = 0x3
  if r1 != 0xa5 goto jmp_5e18
  w1 = *(u8 *)(r4 + 0xc4)
  if w1 > 0x2 goto jmp_5e18
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r6 = 0x1100000000 ll
  r0 = 0x1100000000 ll
  if w1 == 0x2 goto jmp_5e18
  r6 = 0x300000000 ll
  r1 = *(u64 *)(r4 + 0x58)
  r5 = *(u64 *)(r9 + 0x8)
  r7 = *(u64 *)(r5 + 0x8)
  r0 = 0x300000000 ll
  if r7 != r1 goto jmp_5e18
  r1 = *(u64 *)(r4 + 0x60)
  r7 = *(u64 *)(r5 + 0x10)
  if r7 != r1 goto jmp_5e18
  r1 = *(u64 *)(r4 + 0x68)
  r7 = *(u64 *)(r5 + 0x18)
  if r7 != r1 goto jmp_5e18
  r1 = *(u64 *)(r4 + 0x70)
  r7 = *(u64 *)(r5 + 0x20)
  if r7 == r1 goto jmp_0d80
  goto jmp_5e18

jmp_0d80:
  r1 = *(u64 *)(r5 + 0x50)
  r6 = 0x0
  r0 = 0x3
  if r1 != 0x52 goto jmp_5e18
  w1 = *(u8 *)(r5 + 0x85)
  if w1 > 0x1 goto jmp_5e18
  r0 = 0x9
  if w1 != 0x1 goto jmp_5e18
  w1 = *(u8 *)(r3 + 0x8)
  r6 = 0x1200000000 ll
  w5 = *(u8 *)(r5 + 0x84)
  r0 = 0x1200000000 ll
  if w1 == w5 goto jmp_0e00
  goto jmp_5e18

jmp_0e00:
  r5 = 0x400000000 ll
  r1 = *(u64 *)(r4 + 0x78)
  r6 = *(u64 *)(r9 + 0x18)
  r7 = *(u64 *)(r6 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r7 goto jmp_7ac8
  r1 = *(u64 *)(r6 + 0x10)
  r7 = *(u64 *)(r4 + 0x80)
  if r7 != r1 goto jmp_7ac8
  r1 = *(u64 *)(r6 + 0x18)
  r7 = *(u64 *)(r4 + 0x88)
  if r7 != r1 goto jmp_7ac8
  r1 = *(u64 *)(r6 + 0x20)
  r7 = *(u64 *)(r4 + 0x90)
  if r7 != r1 goto jmp_7ac8
  r3 = *(u64 *)(r3 + 0x0)
  r1 = *(u64 *)(r6 + 0x50)
  if r1 != 0x163 goto jmp_5bf0
  r1 = *(u64 *)(r6 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_5b90
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_5bf0
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_5bf0
  r1 = *(u64 *)(r6 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_5bf0
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 == r0 goto jmp_0f40
  goto jmp_5bf0

jmp_0f40:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r6 + 0x5a)
  if w1 != 0x1 goto jmp_5490
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r2 == 0x4 goto jmp_7ae0
  w1 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x150) = r1
  if r1 > 0xb goto jmp_5740
  r1 = *(u64 *)(r10 - 0x150)
  if w1 == 0x0 goto jmp_7ae0
  r1 = *(u64 *)(r10 - 0x138)
  r0 = r1
  r0 += 0x20
  *(u64 *)(r10 - 0x140) = r0
  r2 <<= 0x3
  r1 += r2
  *(u64 *)(r10 - 0x160) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x150) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  r1 = r6
  r1 += 0x73
  *(u64 *)(r10 - 0x158) = r1
  goto jmp_7978

jmp_1028:
  if w5 == 0x13 goto jmp_2390
  if w5 == 0x15 goto jmp_1040
  goto jmp_5e18

jmp_1040:
  r0 = 0x20000000a ll
  r6 = 0x200000000 ll
  if r7 == 0x0 goto jmp_5e18
  r0 = 0x200000006 ll
  r1 = *(u64 *)(r9 + 0x0)
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_5e18
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_5e18
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_5e18
  r2 = *(u64 *)(r1 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_5e18
  r2 = *(u64 *)(r1 + 0x50)
  r0 = 0x200000000 ll
  if r2 != 0x52 goto jmp_5e18
  w1 = *(u8 *)(r1 + 0x85)
  if w1 != 0x1 goto jmp_5e18
  *(u64 *)(r10 - 0x128) = 0xa5
  r1 = r10
  r1 += -0x128
  r2 = 0x8
  call sol_set_return_data
  r0 = 0x2ffffffff ll
  goto jmp_5e18

jmp_1170:
  if w5 == 0x26 goto jmp_2450
  if w5 == 0x2d goto jmp_1188
  goto jmp_5e18

jmp_1188:
  r0 = 0xc00000000 ll
  if r4 == 0x0 goto jmp_5df8
  w6 = *(u8 *)(r3 + 0x0)
  if w6 == 0x0 goto jmp_11d0
  if w6 != 0x1 goto jmp_5df8
  if r4 > 0x8 goto jmp_11c8
  goto jmp_5df8

jmp_11c8:
  r2 = *(u64 *)(r3 + 0x1)

jmp_11d0:
  r0 = 0xa
  if r7 > 0x2 goto jmp_11e8
  goto jmp_5df8

jmp_11e8:
  r0 = 0x3
  r3 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  if r1 != 0xa5 goto jmp_5df8
  w1 = *(u8 *)(r3 + 0xc4)
  if w1 > 0x2 goto jmp_5df8
  r0 = 0x9
  if w1 == 0x0 goto jmp_5df8
  r0 = 0x1300000000 ll
  w1 = *(u8 *)(r3 + 0xc5)
  if w1 != 0x1 goto jmp_5df8
  r5 = 0x0
  r4 = *(u64 *)(r3 + 0x98)
  if w6 == 0x0 goto jmp_1290
  r0 = 0x100000000 ll
  if r4 < r2 goto jmp_5df8
  r5 = r4
  r5 -= r2
  r4 = r2

jmp_1290:
  r1 = r9
  r1 += 0x18
  *(u64 *)(r10 - 0x130) = r1
  r6 = *(u64 *)(r9 + 0x10)
  w1 = *(u8 *)(r3 + 0xa0)
  if w1 == 0x1 goto jmp_4470
  r1 = *(u64 *)(r6 + 0x8)
  goto jmp_44e8

jmp_12d0:
  r0 = 0xc00000000 ll
  if r4 < 0x2 goto jmp_5e18
  w7 = *(u8 *)(r3 + 0x0)
  if w7 > 0x3 goto jmp_5e18
  w1 = *(u8 *)(r3 + 0x1)
  r5 = 0x0
  if w1 == 0x0 goto jmp_1338
  if w1 == 0x1 goto jmp_1320
  goto jmp_5e18

jmp_1320:
  if r4 < 0x22 goto jmp_5e18
  r3 += 0x2
  r5 = r3

jmp_1338:
  r0 = 0xa
  r6 = 0x0
  if r2 > 0x1 goto jmp_1358
  goto jmp_5e18

jmp_1358:
  r4 = r9
  r4 += 0x10
  r3 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  if r1 == 0x52 goto jmp_4178
  r0 = 0x1
  if r1 != 0xa5 goto jmp_5e18
  r0 = 0x3
  w1 = *(u8 *)(r3 + 0xc4)
  if w1 > 0x2 goto jmp_5e18
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r6 = 0x1100000000 ll
  r0 = 0x1100000000 ll
  if w1 == 0x2 goto jmp_5e18
  if w7 == 0x3 goto jmp_4a10
  r6 = 0xf00000000 ll
  r0 = 0xf00000000 ll
  if w7 != 0x2 goto jmp_5e18
  r7 = 0x400000000 ll
  r1 = *(u64 *)(r3 + 0x78)
  r6 = *(u64 *)(r9 + 0x8)
  r8 = *(u64 *)(r6 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r8 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x10)
  r8 = *(u64 *)(r3 + 0x80)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x18)
  r8 = *(u64 *)(r3 + 0x88)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x20)
  r8 = *(u64 *)(r3 + 0x90)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x50)
  if r1 != 0x163 goto jmp_6870
  r1 = *(u64 *)(r6 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_6810
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_6870
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_6870
  r1 = *(u64 *)(r6 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_6870
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 == r0 goto jmp_1548
  goto jmp_6870

jmp_1548:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r6 + 0x5a)
  if w1 != 0x1 goto jmp_55a0
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r2 == 0x2 goto jmp_71d0
  w1 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x150) = r1
  if r1 > 0xb goto jmp_5740
  r1 = *(u64 *)(r10 - 0x150)
  if w1 == 0x0 goto jmp_71d0
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r2
  *(u64 *)(r10 - 0x138) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x150) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  r1 = r6
  r1 += 0x73
  *(u64 *)(r10 - 0x158) = r1
  goto jmp_7080

jmp_1618:
  r0 = 0xa
  r6 = 0x0
  r2 = r7
  if r7 < 0x3 goto jmp_5e18
  r3 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  r0 = 0x3
  if r1 != 0xa5 goto jmp_5e18
  w1 = *(u8 *)(r3 + 0xc4)
  if w1 > 0x2 goto jmp_5e18
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r6 = 0xd00000000 ll
  r0 = 0xd00000000 ll
  if w1 != 0x2 goto jmp_5e18
  r6 = 0xa00000000 ll
  w1 = *(u8 *)(r3 + 0xc5)
  r0 = 0xa00000000 ll
  if w1 == 0x1 goto jmp_5e18
  r6 = 0x300000000 ll
  r1 = *(u64 *)(r3 + 0x58)
  r5 = *(u64 *)(r9 + 0x8)
  r4 = *(u64 *)(r5 + 0x8)
  r0 = 0x300000000 ll
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r3 + 0x60)
  r4 = *(u64 *)(r5 + 0x10)
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r3 + 0x68)
  r4 = *(u64 *)(r5 + 0x18)
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r3 + 0x70)
  r4 = *(u64 *)(r5 + 0x20)
  if r4 != r1 goto jmp_5e18
  r1 = *(u64 *)(r5 + 0x50)
  r6 = 0x0
  r0 = 0x3
  if r1 != 0x52 goto jmp_5e18
  w1 = *(u8 *)(r5 + 0x85)
  if w1 > 0x1 goto jmp_5e18
  r0 = 0x9
  if w1 != 0x1 goto jmp_5e18
  r6 = 0x1000000000 ll
  w1 = *(u8 *)(r5 + 0x86)
  r0 = 0x1000000000 ll
  if w1 != 0x1 goto jmp_5e18
  r6 = r2
  r4 = 0x400000000 ll
  r2 = *(u64 *)(r5 + 0x8a)
  r7 = r9
  r1 = *(u64 *)(r9 + 0x10)
  r8 = *(u64 *)(r1 + 0x8)
  r0 = 0x400000000 ll
  if r2 != r8 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x10)
  r8 = *(u64 *)(r5 + 0x92)
  if r8 != r2 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x18)
  r8 = *(u64 *)(r5 + 0x9a)
  if r8 != r2 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x20)
  r5 = *(u64 *)(r5 + 0xa2)
  if r5 != r2 goto jmp_77c0
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0x163 goto jmp_6d60
  r2 = *(u64 *)(r1 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_6d00
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_6d60
  r2 = *(u64 *)(r1 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_6d60
  r2 = *(u64 *)(r1 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_6d60
  r2 = *(u64 *)(r1 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 == r5 goto jmp_1910
  goto jmp_6d60

jmp_1910:
  w2 = *(u8 *)(r1 + 0x5a)
  if w2 != 0x1 goto jmp_56a0
  w2 = 0x0
  *(u32 *)(r10 - 0x140) = w2
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r6 == 0x3 goto jmp_7938
  w2 = *(u8 *)(r1 + 0x59)
  *(u64 *)(r10 - 0x148) = r2
  if r2 > 0xb goto jmp_56e0
  r2 = *(u64 *)(r10 - 0x148)
  if w2 == 0x0 goto jmp_7938
  r2 = r7
  r2 += 0x18
  *(u64 *)(r10 - 0x130) = r2
  r6 <<= 0x3
  r7 += r6
  *(u64 *)(r10 - 0x138) = r7
  r2 = *(u64 *)(r10 - 0x148)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x148) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x140) = w2
  r2 = r1
  r2 += 0x73
  *(u64 *)(r10 - 0x150) = r2
  goto jmp_7818

jmp_19e8:
  r0 = 0xc00000000 ll
  if r4 < 0x8 goto jmp_5b78
  r0 = 0xa
  if r7 > 0x2 goto jmp_1a18
  goto jmp_5b78

jmp_1a18:
  r0 = 0x3
  r4 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r4 + 0x50)
  if r1 == 0xa5 goto jmp_1a40
  goto jmp_5b78

jmp_1a40:
  w1 = *(u8 *)(r4 + 0xc4)
  if w1 > 0x2 goto jmp_5b78
  r0 = 0x9
  if w1 == 0x0 goto jmp_5b78
  r0 = 0x1100000000 ll
  if w1 == 0x2 goto jmp_5b78
  r0 = 0x400000000 ll
  r1 = *(u64 *)(r4 + 0x78)
  r5 = *(u64 *)(r9 + 0x10)
  r6 = *(u64 *)(r5 + 0x8)
  if r1 != r6 goto jmp_5b78
  r1 = *(u64 *)(r5 + 0x10)
  r6 = *(u64 *)(r4 + 0x80)
  if r6 != r1 goto jmp_5b78
  r1 = *(u64 *)(r5 + 0x18)
  r6 = *(u64 *)(r4 + 0x88)
  if r6 != r1 goto jmp_5b78
  r1 = *(u64 *)(r5 + 0x20)
  r6 = *(u64 *)(r4 + 0x90)
  if r6 != r1 goto jmp_5b78
  r3 = *(u64 *)(r3 + 0x0)
  r1 = *(u64 *)(r5 + 0x50)
  if r1 != 0x163 goto jmp_5af8
  r1 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_5a98
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_5af8
  r1 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_5af8
  r1 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_5af8
  r1 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 == r0 goto jmp_1ba8
  goto jmp_5af8

jmp_1ba8:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r5 + 0x5a)
  if w1 != 0x1 goto jmp_5460
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r7 == 0x3 goto jmp_6ed8
  w1 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x148) = r1
  if r1 > 0xb goto jmp_56e0
  r1 = *(u64 *)(r10 - 0x148)
  if w1 == 0x0 goto jmp_6ed8
  r1 = *(u64 *)(r10 - 0x138)
  r0 = r1
  r0 += 0x18
  *(u64 *)(r10 - 0x130) = r0
  r7 <<= 0x3
  r1 += r7
  *(u64 *)(r10 - 0x158) = r1
  r1 = *(u64 *)(r10 - 0x148)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x148) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  r1 = r5
  r1 += 0x73
  *(u64 *)(r10 - 0x150) = r1
  goto jmp_6da0

jmp_1c90:
  r0 = 0xc00000000 ll
  if r4 < 0x9 goto jmp_5e18
  r0 = 0xa
  r6 = 0x0
  if r2 < 0x3 goto jmp_5e18
  r4 = *(u64 *)(r9 + 0x8)
  r1 = *(u64 *)(r4 + 0x50)
  r0 = 0x3
  if r1 != 0xa5 goto jmp_5e18
  w1 = *(u8 *)(r4 + 0xc4)
  if w1 > 0x2 goto jmp_5e18
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r6 = 0x1100000000 ll
  r0 = 0x1100000000 ll
  if w1 == 0x2 goto jmp_5e18
  r6 = 0xa00000000 ll
  w1 = *(u8 *)(r4 + 0xc5)
  r0 = 0xa00000000 ll
  if w1 == 0x1 goto jmp_5e18
  r6 = 0x300000000 ll
  r1 = *(u64 *)(r4 + 0x58)
  r5 = *(u64 *)(r9 + 0x0)
  r7 = *(u64 *)(r5 + 0x8)
  r0 = 0x300000000 ll
  if r7 != r1 goto jmp_5e18
  r1 = *(u64 *)(r4 + 0x60)
  r7 = *(u64 *)(r5 + 0x10)
  if r7 != r1 goto jmp_5e18
  r1 = *(u64 *)(r4 + 0x68)
  r7 = *(u64 *)(r5 + 0x18)
  if r7 != r1 goto jmp_5e18
  r1 = *(u64 *)(r4 + 0x70)
  r7 = *(u64 *)(r5 + 0x20)
  if r7 != r1 goto jmp_5e18
  r1 = *(u64 *)(r5 + 0x50)
  r6 = 0x0
  r0 = 0x3
  if r1 != 0x52 goto jmp_5e18
  w1 = *(u8 *)(r5 + 0x85)
  if w1 > 0x1 goto jmp_5e18
  r0 = 0x9
  if w1 != 0x1 goto jmp_5e18
  w1 = *(u8 *)(r3 + 0x8)
  r6 = 0x1200000000 ll
  w7 = *(u8 *)(r5 + 0x84)
  r0 = 0x1200000000 ll
  if w1 != w7 goto jmp_5e18
  r6 = 0x500000000 ll
  w1 = *(u8 *)(r5 + 0x58)
  r0 = 0x500000000 ll
  if w1 != 0x1 goto jmp_5e18
  r7 = 0x400000000 ll
  r1 = *(u64 *)(r5 + 0x5c)
  r6 = *(u64 *)(r9 + 0x10)
  r8 = *(u64 *)(r6 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r8 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x10)
  r8 = *(u64 *)(r5 + 0x64)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x18)
  r8 = *(u64 *)(r5 + 0x6c)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x20)
  r8 = *(u64 *)(r5 + 0x74)
  if r8 != r1 goto jmp_5638
  r3 = *(u64 *)(r3 + 0x0)
  r1 = *(u64 *)(r6 + 0x50)
  if r1 != 0x163 goto jmp_5e98
  r1 = *(u64 *)(r6 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_5e38
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_5e98
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_5e98
  r1 = *(u64 *)(r6 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_5e98
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 == r0 goto jmp_1fc8
  goto jmp_5e98

jmp_1fc8:
  r1 = r9
  w8 = *(u8 *)(r6 + 0x5a)
  if w8 != 0x1 goto jmp_5588
  w0 = 0x0
  *(u32 *)(r10 - 0x150) = w0
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r2 == 0x3 goto jmp_7c80
  w0 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x158) = r0
  if r0 > 0xb goto jmp_5770
  r0 = *(u64 *)(r10 - 0x158)
  if w0 == 0x0 goto jmp_7c80
  r0 = r1
  r0 += 0x18
  *(u64 *)(r10 - 0x148) = r0
  r2 <<= 0x3
  r1 += r2
  *(u64 *)(r10 - 0x138) = r1
  r1 = *(u64 *)(r10 - 0x158)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x158) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x150) = w1
  r1 = r6
  r1 += 0x73
  *(u64 *)(r10 - 0x160) = r1
  goto jmp_7b28

jmp_20a8:
  r0 = 0xc00000000 ll
  if r4 < 0x8 goto jmp_3d88
  r0 = 0xa
  if r7 == 0x0 goto jmp_3d88
  r0 = 0x6
  r2 = *(u64 *)(r9 + 0x0)
  r1 = *(u64 *)(r2 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r1 != r4 goto jmp_3d88
  r1 = *(u64 *)(r2 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r1 != r4 goto jmp_3d88
  r1 = *(u64 *)(r2 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r1 != r4 goto jmp_3d88
  r1 = *(u64 *)(r2 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r1 != r4 goto jmp_3d88
  r0 = 0x200000000 ll
  r1 = *(u64 *)(r2 + 0x50)
  if r1 != 0x52 goto jmp_3d88
  w1 = *(u8 *)(r2 + 0x85)
  if w1 != 0x1 goto jmp_3d88
  r1 = *(u64 *)(r3 + 0x0)
  r6 = r10
  r6 += -0x120
  *(u64 *)(r10 - 0x128) = 0x0
  w3 = *(u8 *)(r2 + 0x84)
  if r1 == 0x0 goto jmp_30c8
  r8 = 0x0
  r7 = 0x0

jmp_21d0:
  r2 = r1
  r1 /= 0xa
  w5 = w1
  w5 *= 0xf6
  w5 += w2
  r4 = r10
  r4 += -0x14
  r4 += r7
  w5 |= 0x30
  *(u8 *)(r4 + 0x13) = w5
  r8 += 0x1
  r7 += -0x1
  if r2 < 0xa goto jmp_2240
  goto jmp_21d0

jmp_2240:
  r2 = r10
  r2 += -0x14
  r2 += r7
  r9 = r7
  r9 = -r9
  r2 += 0x14
  if w3 == 0x0 goto jmp_34d0
  r4 = r9
  if r9 < 0x101 goto jmp_2290
  r4 = 0x101

jmp_2290:
  if r9 > r3 goto jmp_22a0
  goto jmp_37e0

jmp_22a0:
  r9 = 0x1
  r9 -= r7
  *(u64 *)(r10 - 0x130) = r3
  r4 -= r3
  *(u64 *)(r10 - 0x138) = r4
  r1 = r6
  r3 = r4
  call sol_memcpy_
  r3 = *(u64 *)(r10 - 0x138)
  r1 = r6
  r1 += r3
  *(u8 *)(r1 + 0x0) = 0x2e
  if r3 > 0xff goto jmp_3500
  r2 = 0x100
  r2 -= r3
  if r8 < 0x101 goto jmp_2328
  r8 = 0x101

jmp_2328:
  r4 = *(u64 *)(r10 - 0x130)
  r8 -= r4
  r3 = r4
  if r4 < r2 goto jmp_2350
  r3 = r2

jmp_2350:
  r2 = r10
  r2 += -0x14
  r8 += r2
  r8 += r7
  r8 += 0x14
  r1 += 0x1
  r2 = r8
  goto jmp_34f8

jmp_2390:
  r0 = 0xc00000000 ll
  if r4 == 0x0 goto jmp_3ed8
  r0 = 0xa
  if r7 == 0x0 goto jmp_3ed8
  *(u64 *)(r10 - 0x130) = r7
  w7 = *(u8 *)(r3 + 0x0)
  r1 = r9
  r8 = *(u64 *)(r1 + 0x0)
  r6 = *(u64 *)(r8 + 0x50)
  *(u32 *)(r10 - 0x114) = 0x0
  *(u32 *)(r10 - 0x117) = 0x0
  r2 = r10
  r2 += -0x128
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_2d60
  r0 = 0x10
  r1 = 0xf00000000 ll
  goto jmp_5e08

jmp_2450:
  r0 = 0xa
  r6 = 0x0
  r4 = r7
  if r7 < 0x3 goto jmp_5e18
  r3 = r9
  r3 += 0x18
  r8 = *(u64 *)(r9 + 0x0)
  r7 = *(u64 *)(r8 + 0x50)
  if r7 == 0x52 goto jmp_3098
  if r7 == 0x163 goto jmp_2ea0
  r6 = 0xd00000000 ll
  r0 = 0xd00000000 ll
  if r7 != 0xa5 goto jmp_5e18
  r0 = 0x3
  w1 = *(u8 *)(r8 + 0xc4)
  r6 = 0x0
  if w1 > 0x2 goto jmp_5e18
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r6 = 0xa00000000 ll
  w1 = *(u8 *)(r8 + 0xc5)
  r0 = 0xa00000000 ll
  if w1 == 0x1 goto jmp_5e18
  r1 = *(u64 *)(r8 + 0x78)
  r5 = *(u64 *)(r9 + 0x10)
  r2 = *(u64 *)(r5 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r2 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x10)
  r2 = *(u64 *)(r8 + 0x80)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x18)
  r2 = *(u64 *)(r8 + 0x88)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x20)
  r2 = *(u64 *)(r8 + 0x90)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x50)
  if r1 != 0x163 goto jmp_4970
  r1 = *(u64 *)(r5 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_4910
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_4970
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_4970
  r1 = *(u64 *)(r5 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_4970
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_2650
  goto jmp_4970

jmp_2650:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r5 + 0x5a)
  if w1 != 0x1 goto jmp_5558
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r4 == 0x3 goto jmp_7f48
  w1 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x148) = r1
  if r1 > 0xb goto jmp_56e0
  r1 = *(u64 *)(r10 - 0x148)
  if w1 == 0x0 goto jmp_7f48
  r4 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r4
  *(u64 *)(r10 - 0x158) = r1
  r1 = *(u64 *)(r10 - 0x148)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x148) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  r1 = r5
  r1 += 0x73
  *(u64 *)(r10 - 0x150) = r1
  goto jmp_7e20

jmp_2720:
  r2 = r9
  r0 = 0xc00000000 ll
  if r4 == 0x0 goto jmp_3ed8
  r0 = 0xa
  if r7 < 0x2 goto jmp_3ed8
  r0 = 0x1
  r1 = *(u64 *)(r2 + 0x8)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = 0x515c2c1917d5a706 ll
  if r4 != r5 goto jmp_3ed8
  r4 = *(u64 *)(r1 + 0x10)
  r5 = 0x7ff14a3d4cc98c21 ll
  if r4 != r5 goto jmp_3ed8
  r4 = *(u64 *)(r1 + 0x18)
  r5 = 0x44fda19b08eeda58 ll
  if r4 != r5 goto jmp_3ed8
  r4 = *(u64 *)(r1 + 0x20)
  r5 = 0x8ad9dbe3 ll
  if r4 != r5 goto jmp_3ed8
  w5 = *(u8 *)(r3 + 0x0)
  r8 = *(u64 *)(r2 + 0x0)
  r9 = *(u64 *)(r8 + 0x50)
  r4 = r9
  r4 += 0x80
  r3 = *(u64 *)(r1 + 0x58)
  r3 *= r4
  r4 = *(u64 *)(r8 + 0x48)
  r6 = *(u64 *)(r1 + 0x60)
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_3100
  r1 = 0x4000000000000000 ll
  if r6 == r1 goto jmp_30f8
  *(u64 *)(r10 - 0x148) = r4
  *(u32 *)(r10 - 0x140) = w5
  *(u64 *)(r10 - 0x130) = r7
  *(u64 *)(r10 - 0x138) = r2
  r1 = r3
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x150) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  w7 = w0
  r1 = r6
  call fn_17668
  if w7 s< 0x0 goto jmp_28f8
  *(u64 *)(r10 - 0x150) = r0

jmp_28f8:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r3 = -0x1
  if w0 s> 0x0 goto jmp_2930
  r3 = *(u64 *)(r10 - 0x150)

jmp_2930:
  r2 = *(u64 *)(r10 - 0x138)
  r7 = *(u64 *)(r10 - 0x130)
  w5 = *(u32 *)(r10 - 0x140)
  r4 = *(u64 *)(r10 - 0x148)
  goto jmp_3100

jmp_2958:
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x130)
  if r1 == 0x0 goto jmp_3d88
  r0 = 0x6
  r1 = *(u64 *)(r10 - 0x138)
  r1 = *(u64 *)(r1 + 0x0)
  r2 = *(u64 *)(r1 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_3d88
  r2 = *(u64 *)(r1 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_3d88
  r2 = *(u64 *)(r1 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_3d88
  r2 = *(u64 *)(r1 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 != r5 goto jmp_3d88
  r0 = 0x200000000 ll
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0x52 goto jmp_3d88
  w2 = *(u8 *)(r1 + 0x85)
  if w2 != 0x1 goto jmp_3d88
  r5 = 0x0
  w1 = *(u8 *)(r1 + 0x84)
  *(u64 *)(r10 - 0x130) = r1
  *(u64 *)(r10 - 0x140) = r3
  goto jmp_2a98

jmp_2a60:
  r0 += r5
  if r0 < r4 goto jmp_2d08

jmp_2a70:
  r0 += 0x1
  r9 = 0x0
  r6 = 0x1
  r5 = r0
  if r0 > r4 goto jmp_6130

jmp_2a98:
  r7 = r3
  r7 += r5
  r8 = r4
  r8 -= r5
  if r8 > 0xf goto jmp_2b20
  r9 = 0x0
  r6 = 0x1
  if r4 == r5 goto jmp_6130
  r0 = 0x0

jmp_2ae0:
  r1 = r7
  r1 += r0
  w1 = *(u8 *)(r1 + 0x0)
  if w1 == 0x2e goto jmp_2a60
  r9 = 0x0
  r0 += 0x1
  if r0 < r8 goto jmp_2ae0
  goto jmp_6130

jmp_2b20:
  r1 = 0x0
  r0 = r7
  r0 += 0x7
  r0 &= -0x8
  if r0 == r7 goto jmp_2b90
  r1 = r0
  r1 -= r7
  r0 = 0x0

jmp_2b60:
  r2 = r7
  r2 += r0
  w2 = *(u8 *)(r2 + 0x0)
  if w2 == 0x2e goto jmp_2a60
  r0 += 0x1
  if r0 < r1 goto jmp_2b60

jmp_2b90:
  *(u64 *)(r10 - 0x138) = r5
  r3 = r8
  r3 += -0x10
  if r1 > r3 goto jmp_2c68

jmp_2bb0:
  r6 = r7
  r6 += r1
  r5 = *(u64 *)(r6 + 0x8)
  r9 = r5
  r0 = 0x2e2e2e2e2e2e2e2e ll
  r9 ^= r0
  r2 = 0x101010101010100 ll
  r2 -= r9
  r2 |= r5
  r5 = *(u64 *)(r6 + 0x0)
  r6 = r5
  r6 ^= r0
  r9 = 0x101010101010100 ll
  r9 -= r6
  r9 |= r5
  r9 &= r2
  r2 = -0x7f7f7f7f7f7f7f80 ll
  r9 &= r2
  if r9 == r2 goto jmp_2cb0

jmp_2c68:
  r9 = 0x0
  r6 = 0x1
  r3 = *(u64 *)(r10 - 0x140)
  r5 = *(u64 *)(r10 - 0x138)
  if r8 == r1 goto jmp_6130
  r8 -= r1
  r7 += r1
  r0 = 0x0
  goto jmp_2cc8

jmp_2cb0:
  r1 += 0x10
  if r1 > r3 goto jmp_2c68
  goto jmp_2bb0

jmp_2cc8:
  r2 = r7
  r2 += r0
  w2 = *(u8 *)(r2 + 0x0)
  if w2 == 0x2e goto jmp_2d48
  r9 = 0x0
  r0 += 0x1
  if r0 < r8 goto jmp_2cc8
  goto jmp_6130

jmp_2d08:
  r1 = r3
  r1 += r0
  w1 = *(u8 *)(r1 + 0x0)
  if w1 != 0x2e goto jmp_2a70
  r5 = r0
  r5 += 0x1
  if r5 < r4 goto jmp_60d0
  goto jmp_6090

jmp_2d48:
  r1 += r0
  r0 = r1
  goto jmp_2a60

jmp_2d60:
  *(u32 *)(r10 - 0x140) = w7
  r6 += 0x80
  r1 = *(u64 *)(r10 - 0x128)
  r1 *= r6
  r6 = *(u64 *)(r10 - 0x120)
  r7 = *(u64 *)(r8 + 0x48)
  r4 = 0x3ff0000000000000 ll
  r2 = r9
  r3 = *(u64 *)(r10 - 0x130)
  if r6 == r4 goto jmp_3da8
  r4 = 0x4000000000000000 ll
  if r6 == r4 goto jmp_3da0
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x148) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  *(u32 *)(r10 - 0x150) = w0
  r1 = r6
  call fn_17668
  w1 = *(u32 *)(r10 - 0x150)
  if w1 s< 0x0 goto jmp_2e50
  *(u64 *)(r10 - 0x148) = r0

jmp_2e50:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  if w0 s> 0x0 goto jmp_2e88
  r1 = *(u64 *)(r10 - 0x148)

jmp_2e88:
  r2 = r9
  r3 = *(u64 *)(r10 - 0x130)
  goto jmp_3da8

jmp_2ea0:
  r1 = *(u64 *)(r8 + 0x8)
  r5 = *(u64 *)(r9 + 0x10)
  r2 = *(u64 *)(r5 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r2 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x10)
  r2 = *(u64 *)(r8 + 0x10)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x18)
  r2 = *(u64 *)(r8 + 0x18)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x20)
  r2 = *(u64 *)(r8 + 0x20)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x50)
  if r1 != 0x163 goto jmp_5890
  r1 = *(u64 *)(r5 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_5830
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_5890
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_5890
  r1 = *(u64 *)(r5 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_5890
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_2fc8
  goto jmp_5890

jmp_2fc8:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r5 + 0x5a)
  if w1 != 0x1 goto jmp_55d0
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r4 == 0x3 goto jmp_7de0
  w1 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x148) = r1
  if r1 > 0xb goto jmp_56e0
  r1 = *(u64 *)(r10 - 0x148)
  if w1 == 0x0 goto jmp_7de0
  r4 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r4
  *(u64 *)(r10 - 0x158) = r1
  r1 = *(u64 *)(r10 - 0x148)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x148) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  r1 = r5
  r1 += 0x73
  *(u64 *)(r10 - 0x150) = r1
  goto jmp_7cb8

jmp_3098:
  w1 = *(u8 *)(r8 + 0x85)
  if w1 == 0x1 goto jmp_35d8
  r0 = 0x9
  if w1 == 0x0 goto jmp_5e18
  r0 = 0x3
  goto jmp_5e18

jmp_30c8:
  r2 = 0x1
  *(u64 *)(r10 - 0x128) = 0x1
  *(u8 *)(r10 - 0x120) = 0x30
  r7 = 0x1
  if w3 == 0x0 goto jmp_3d68
  goto jmp_3580

jmp_30f8:
  r3 <<= 0x1

jmp_3100:
  r0 = 0x3
  if r9 != 0x163 goto jmp_3ed8
  w1 = *(u8 *)(r8 + 0x5a)
  if w1 == 0x1 goto jmp_3ec8
  if w1 != 0x0 goto jmp_3ed8
  r0 = 0x0
  if r4 < r3 goto jmp_3ed8
  r3 = r7
  r3 += -0x2
  *(u8 *)(r8 + 0x58) = w5
  *(u8 *)(r8 + 0x59) = w3
  r0 = 0x700000000 ll
  w1 = w3
  w1 += -0x1
  w1 &= 0xff
  if w1 > 0xa goto jmp_3ed8
  r0 = 0x800000000 ll
  w5 += -0x1
  w5 &= 0xff
  if w5 > 0xa goto jmp_3ed8
  if r3 == 0x0 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x10)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x73) = r1
  *(u64 *)(r8 + 0x6b) = r0
  *(u64 *)(r8 + 0x63) = r5
  *(u64 *)(r8 + 0x5b) = r4
  if r3 != 0x1 goto jmp_4fa0

jmp_3208:
  *(u8 *)(r8 + 0x5a) = 0x1
  r0 = 0xffffffff ll
  r1 = 0xf00000000 ll
  goto jmp_5e08

jmp_3238:
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r3 + 0xa4)
  if r0 != r5 goto jmp_32c0
  r1 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r3 + 0xac)
  r5 = r0
  if r6 != r1 goto jmp_32c0
  r1 = *(u64 *)(r4 + 0x18)
  r6 = *(u64 *)(r3 + 0xb4)
  r5 = r0
  if r6 != r1 goto jmp_32c0
  r1 = r4
  r1 += 0x8
  r6 = *(u64 *)(r4 + 0x20)
  r7 = *(u64 *)(r3 + 0xbc)
  r5 = r0
  if r7 == r6 goto jmp_32f0

jmp_32c0:
  r0 = 0x400000000 ll
  r1 = r3
  r1 += 0x78
  r6 = *(u64 *)(r3 + 0x78)
  if r6 != r5 goto jmp_7030

jmp_32f0:
  r0 = 0x400000000 ll
  r5 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r1 + 0x8)
  if r6 != r5 goto jmp_7030
  r5 = *(u64 *)(r4 + 0x18)
  r6 = *(u64 *)(r1 + 0x10)
  if r6 != r5 goto jmp_7030
  r5 = *(u64 *)(r4 + 0x20)
  r1 = *(u64 *)(r1 + 0x18)
  if r1 != r5 goto jmp_7030
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_5800
  r1 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r1 == r5 goto jmp_57a0
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_5800
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_5800
  r1 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_5800
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 == r5 goto jmp_33f8
  goto jmp_5800

jmp_33f8:
  r5 = r9
  w1 = *(u8 *)(r4 + 0x5a)
  if w1 != 0x1 goto jmp_56b8
  w1 = 0x0
  *(u32 *)(r10 - 0x130) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r2 == 0x2 goto jmp_7048
  w1 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0x140) = r1
  if r1 > 0xb goto jmp_5710
  r1 = *(u64 *)(r10 - 0x140)
  if w1 == 0x0 goto jmp_7048
  r1 = r5
  r5 += 0x10
  r2 <<= 0x3
  r1 += r2
  *(u64 *)(r10 - 0x138) = r1
  r1 = *(u64 *)(r10 - 0x140)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x140) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x130) = w1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0x148) = r1
  goto jmp_6f18

jmp_34d0:
  *(u64 *)(r10 - 0x130) = r3
  r3 = r9
  if r9 < 0x101 goto jmp_34f0
  r3 = 0x101

jmp_34f0:
  r1 = r6

jmp_34f8:
  call sol_memcpy_

jmp_3500:
  r1 = r9
  if r9 < 0x101 goto jmp_3518
  r1 = 0x101

jmp_3518:
  r3 = *(u64 *)(r10 - 0x130)
  if r9 > 0x101 goto jmp_3530
  goto jmp_3548

jmp_3530:
  r2 = r6
  r2 += r1
  *(u8 *)(r2 - 0x1) = 0x40

jmp_3548:
  r2 = *(u64 *)(r10 - 0x128)
  r2 += r1
  *(u64 *)(r10 - 0x128) = r2
  if r2 > 0x101 goto jmp_3d40
  r7 = r2
  if w3 == 0x0 goto jmp_3d68

jmp_3578:
  if r7 > 0xf goto jmp_38d0

jmp_3580:
  r2 = 0x0
  if r7 == 0x0 goto jmp_3d68
  r1 = 0x0

jmp_3598:
  r2 = r6
  r2 += r1
  w2 = *(u8 *)(r2 + 0x0)
  if w2 == 0x2e goto jmp_3a38
  r1 += 0x1
  r2 = r7
  if r1 < r7 goto jmp_3598
  goto jmp_3d68

jmp_35d8:
  w1 = *(u8 *)(r8 + 0x58)
  if w1 != 0x1 goto jmp_4410
  r1 = *(u64 *)(r8 + 0x5c)
  r5 = *(u64 *)(r9 + 0x10)
  r2 = *(u64 *)(r5 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r2 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x10)
  r2 = *(u64 *)(r8 + 0x64)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x18)
  r2 = *(u64 *)(r8 + 0x6c)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x20)
  r2 = *(u64 *)(r8 + 0x74)
  if r2 != r1 goto jmp_55e8
  r1 = *(u64 *)(r5 + 0x50)
  if r1 != 0x163 goto jmp_49f0
  r1 = *(u64 *)(r5 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_4990
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_49f0
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_49f0
  r1 = *(u64 *)(r5 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_49f0
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_3710
  goto jmp_49f0

jmp_3710:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r5 + 0x5a)
  if w1 != 0x1 goto jmp_5570
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r4 == 0x3 goto jmp_80a8
  w1 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x148) = r1
  if r1 > 0xb goto jmp_56e0
  r1 = *(u64 *)(r10 - 0x148)
  if w1 == 0x0 goto jmp_80a8
  r4 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r4
  *(u64 *)(r10 - 0x158) = r1
  r1 = *(u64 *)(r10 - 0x148)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x148) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x140) = w1
  r1 = r5
  r1 += 0x73
  *(u64 *)(r10 - 0x150) = r1
  goto jmp_7f80

jmp_37e0:
  *(u64 *)(r10 - 0x130) = r2
  r7 = r3
  r7 += 0x2
  r3 -= r4
  *(u16 *)(r10 - 0x120) = 0x2e30
  r1 = r10
  r1 += -0x11e
  w2 = 0x30
  r9 = r3
  r8 = r4
  call sol_memset_
  r2 = r9
  if r2 == 0xff goto jmp_3898
  r1 = r2
  r1 ^= 0xff
  if r8 < r1 goto jmp_3868
  r8 = r1

jmp_3868:
  r1 = r6
  r1 += r2
  r1 += 0x2
  r2 = *(u64 *)(r10 - 0x130)
  r3 = r8
  call sol_memcpy_

jmp_3898:
  r1 = *(u64 *)(r10 - 0x128)
  r7 += r1
  *(u64 *)(r10 - 0x128) = r7
  if r7 < 0x102 goto jmp_3578
  r7 = 0x101
  *(u8 *)(r10 - 0x20) = 0x40
  *(u64 *)(r10 - 0x128) = 0x101

jmp_38d0:
  r1 = 0x0
  r2 = r7
  r2 += -0x10
  r3 = 0x2e2e2e2e2e2e2e2e ll
  r4 = -0x7f7f7f7f7f7f7f80 ll
  goto jmp_3920

jmp_3910:
  r1 += 0x10
  if r1 > r2 goto jmp_39c0

jmp_3920:
  r5 = r10
  r5 += -0x128
  r5 += r1
  r0 = *(u64 *)(r5 + 0x10)
  r8 = r0
  r8 ^= r3
  r9 = 0x101010101010100 ll
  r9 -= r8
  r9 |= r0
  r5 = *(u64 *)(r5 + 0x8)
  r0 = r5
  r0 ^= r3
  r8 = 0x101010101010100 ll
  r8 -= r0
  r8 |= r5
  r8 &= r9
  r8 &= r4
  if r8 == r4 goto jmp_3910

jmp_39c0:
  r2 = r7
  if r7 == r1 goto jmp_3d68
  r3 = r7
  r3 -= r1
  r4 = r6
  r4 += r1
  r1 = 0x0

jmp_39f8:
  r2 = r4
  r2 += r1
  w2 = *(u8 *)(r2 + 0x0)
  if w2 == 0x2e goto jmp_3a38
  r1 += 0x1
  r2 = r7
  if r1 < r3 goto jmp_39f8
  goto jmp_3d68

jmp_3a38:
  r1 = r7
  if r1 == 0x0 goto jmp_3b10
  r4 = r6
  r4 += r1
  w3 = *(u8 *)(r4 - 0x1)
  r2 = r3
  r2 &= 0xff
  w3 <<= 0x18
  w3 s>>= 0x18
  if w3 s> -0x1 goto jmp_3ae8
  r7 = r4
  r7 += -0x2
  w5 = *(u8 *)(r4 - 0x2)
  w5 <<= 0x18
  w5 s>>= 0x18
  w3 = w5
  w3 &= 0x1f
  if w5 s< -0x40 goto jmp_3ca0

jmp_3ac8:
  r2 &= 0x3f
  r3 <<= 0x6
  r3 |= r2
  goto jmp_3b00

jmp_3ae8:
  r4 += -0x1
  r7 = r4
  r3 = r2

jmp_3b00:
  r7 -= r6
  if r3 == 0x30 goto jmp_3a38

jmp_3b10:
  r2 = 0x0
  if r1 == 0x0 goto jmp_3d68
  r5 = r6
  r5 += r1
  w3 = *(u8 *)(r5 - 0x1)
  r2 = r3
  r2 &= 0xff
  w3 <<= 0x18
  w3 s>>= 0x18
  if w3 s> -0x1 goto jmp_3bc0
  r3 = r5
  r3 += -0x2
  w0 = *(u8 *)(r5 - 0x2)
  w0 <<= 0x18
  w0 s>>= 0x18
  w4 = w0
  w4 &= 0x1f
  if w0 s< -0x40 goto jmp_3c00

jmp_3ba0:
  r2 &= 0x3f
  r4 <<= 0x6
  r4 |= r2
  goto jmp_3bd8

jmp_3bc0:
  r5 += -0x1
  r3 = r5
  r4 = r2

jmp_3bd8:
  r3 -= r6
  r2 = r1
  r1 = r3
  if r4 == 0x2e goto jmp_3b10
  goto jmp_3d68

jmp_3c00:
  r3 = r5
  r3 += -0x3
  w7 = *(u8 *)(r5 - 0x3)
  w7 <<= 0x18
  w7 s>>= 0x18
  w4 = w7
  w4 &= 0xf
  if w7 s< -0x40 goto jmp_3c60

jmp_3c40:
  r0 &= 0x3f
  r4 <<= 0x6
  r4 |= r0
  goto jmp_3ba0

jmp_3c60:
  r7 &= 0x3f
  w4 = *(u8 *)(r5 - 0x4)
  r4 &= 0x7
  r4 <<= 0x6
  r4 |= r7
  r5 += -0x4
  r3 = r5
  goto jmp_3c40

jmp_3ca0:
  r7 = r4
  r7 += -0x3
  w0 = *(u8 *)(r4 - 0x3)
  w0 <<= 0x18
  w0 s>>= 0x18
  w3 = w0
  w3 &= 0xf
  if w0 s< -0x40 goto jmp_3d00

jmp_3ce0:
  r5 &= 0x3f
  r3 <<= 0x6
  r3 |= r5
  goto jmp_3ac8

jmp_3d00:
  r0 &= 0x3f
  w3 = *(u8 *)(r4 - 0x4)
  r3 &= 0x7
  r3 <<= 0x6
  r3 |= r0
  r4 += -0x4
  r7 = r4
  goto jmp_3ce0

jmp_3d40:
  r2 = 0x101
  *(u8 *)(r10 - 0x20) = 0x40
  *(u64 *)(r10 - 0x128) = 0x101
  r7 = 0x101
  if w3 != 0x0 goto jmp_38d0

jmp_3d68:
  r1 = r6

jmp_3d70:
  call sol_set_return_data

jmp_3d78:
  r0 = 0xffffffff ll

jmp_3d88:
  r1 = 0xe00000000 ll
  goto jmp_5e08

jmp_3da0:
  r1 <<= 0x1

jmp_3da8:
  r0 = 0x3
  r4 = *(u64 *)(r8 + 0x50)
  w5 = *(u32 *)(r10 - 0x140)
  if r4 != 0x163 goto jmp_3ed8
  w4 = *(u8 *)(r8 + 0x5a)
  if w4 == 0x1 goto jmp_3ec8
  if w4 != 0x0 goto jmp_3ed8
  r0 = 0x0
  if r7 < r1 goto jmp_3ed8
  r1 = r3
  r1 += -0x1
  *(u8 *)(r8 + 0x58) = w5
  *(u8 *)(r8 + 0x59) = w1
  r0 = 0x700000000 ll
  w4 = w1
  w4 += -0x1
  w4 &= 0xff
  if w4 > 0xa goto jmp_3ed8
  r0 = 0x800000000 ll
  w5 += -0x1
  w5 &= 0xff
  if w5 > 0xa goto jmp_3ed8
  if r1 == 0x0 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x8)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0x73) = r4
  *(u64 *)(r8 + 0x6b) = r6
  *(u64 *)(r8 + 0x63) = r0
  *(u64 *)(r8 + 0x5b) = r5
  if r1 != 0x1 goto jmp_4c78

jmp_3ec0:
  goto jmp_3208

jmp_3ec8:
  r0 = 0x600000000 ll

jmp_3ed8:
  r1 = 0xf00000000 ll
  goto jmp_5e08

jmp_3ef0:
  r2 <<= 0x1

jmp_3ef8:
  r1 = *(u64 *)(r5 + 0x8)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = -0x7b7e5401a87764fa ll
  if r4 == r5 goto jmp_3f30

jmp_3f20:
  w5 = 0x0
  goto jmp_3f98

jmp_3f30:
  r4 = *(u64 *)(r1 + 0x10)
  r5 = 0x35c01846637f68fb ll
  if r4 != r5 goto jmp_3f20
  r4 = *(u64 *)(r1 + 0x18)
  r5 = 0x553beb1adc39c4da ll
  if r4 != r5 goto jmp_3f20
  w5 = 0x1
  r4 = *(u64 *)(r1 + 0x20)
  r0 = 0x100000000f0a098 ll
  if r4 != r0 goto jmp_3f20

jmp_3f98:
  r0 = 0x3
  if r9 == 0xa5 goto jmp_3fb0
  goto jmp_3d88

jmp_3fb0:
  w4 = *(u8 *)(r8 + 0xc4)
  if w4 > 0x2 goto jmp_3d88
  r0 = 0x600000000 ll
  if w4 != 0x0 goto jmp_3d88
  r0 = 0x0
  r6 = *(u64 *)(r8 + 0x48)
  if r6 < r2 goto jmp_3d88
  r7 = r3
  r4 = r1
  r4 += 0x8
  r3 = r8
  r3 += 0x58
  if w5 != 0x0 goto jmp_54a8
  r0 = 0x6
  r5 = *(u64 *)(r1 + 0x28)
  r6 = -0x6c5e9a281e0922fa ll
  r2 = r7
  if r5 != r6 goto jmp_3d88
  r5 = *(u64 *)(r1 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r5 != r6 goto jmp_3d88
  r5 = *(u64 *)(r1 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r5 != r6 goto jmp_3d88
  r5 = *(u64 *)(r1 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r5 == r6 goto jmp_40b8
  goto jmp_3d88

jmp_40b8:
  r0 = 0x200000000 ll
  r5 = *(u64 *)(r1 + 0x50)
  if r5 != 0x52 goto jmp_3d88
  w1 = *(u8 *)(r1 + 0x85)
  if w1 != 0x1 goto jmp_3d88
  *(u8 *)(r8 + 0xc4) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r0
  *(u64 *)(r3 + 0x8) = r5
  *(u64 *)(r3 + 0x0) = r1
  r1 = *(u64 *)(r2 + 0x18)
  *(u64 *)(r8 + 0x90) = r1
  r1 = *(u64 *)(r2 + 0x10)
  *(u64 *)(r8 + 0x88) = r1
  r1 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r8 + 0x80) = r1
  r1 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r8 + 0x78) = r1
  goto jmp_3d78

jmp_4178:
  w1 = *(u8 *)(r3 + 0x85)
  r0 = 0x3
  if w1 > 0x1 goto jmp_4198
  r0 = 0x9

jmp_4198:
  if w1 != 0x1 goto jmp_5e18
  if w7 == 0x1 goto jmp_46d0
  r6 = 0xf00000000 ll
  r0 = 0xf00000000 ll
  if w7 != 0x0 goto jmp_5e18
  r6 = 0x500000000 ll
  w1 = *(u8 *)(r3 + 0x58)
  r0 = 0x500000000 ll
  if w1 == 0x1 goto jmp_4208
  goto jmp_5e18

jmp_4208:
  r7 = 0x400000000 ll
  r1 = *(u64 *)(r3 + 0x5c)
  r6 = *(u64 *)(r9 + 0x8)
  r8 = *(u64 *)(r6 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r8 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x10)
  r8 = *(u64 *)(r3 + 0x64)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x18)
  r8 = *(u64 *)(r3 + 0x6c)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x20)
  r8 = *(u64 *)(r3 + 0x74)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x50)
  if r1 != 0x163 goto jmp_6a88
  r1 = *(u64 *)(r6 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_6a28
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_6a88
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_6a88
  r1 = *(u64 *)(r6 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_6a88
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 == r0 goto jmp_4340
  goto jmp_6a88

jmp_4340:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r6 + 0x5a)
  if w1 != 0x1 goto jmp_5608
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r2 == 0x2 goto jmp_74d8
  w1 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x150) = r1
  if r1 > 0xb goto jmp_5740
  r1 = *(u64 *)(r10 - 0x150)
  if w1 == 0x0 goto jmp_74d8
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r2
  *(u64 *)(r10 - 0x138) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x150) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  r1 = r6
  r1 += 0x73
  *(u64 *)(r10 - 0x158) = r1
  goto jmp_7390

jmp_4410:
  r6 = 0xf00000000 ll
  r1 = *(u64 *)(r9 + 0x10)
  r0 = 0xf00000000 ll
  if r8 == r1 goto jmp_4448
  goto jmp_5e18

jmp_4448:
  r0 = 0x7
  w1 = *(u8 *)(r1 + 0x1)
  r6 = 0x0
  if w1 == 0x0 goto jmp_5e18
  goto jmp_58a8

jmp_4470:
  r1 = *(u64 *)(r6 + 0x8)
  r0 = *(u64 *)(r3 + 0xa4)
  if r0 != r1 goto jmp_44e8
  r2 = *(u64 *)(r6 + 0x10)
  r8 = *(u64 *)(r3 + 0xac)
  r1 = r0
  if r8 != r2 goto jmp_44e8
  r2 = *(u64 *)(r6 + 0x18)
  r8 = *(u64 *)(r3 + 0xb4)
  r1 = r0
  if r8 != r2 goto jmp_44e8
  r2 = *(u64 *)(r6 + 0x20)
  r8 = *(u64 *)(r3 + 0xbc)
  r1 = r0
  if r8 == r2 goto jmp_52d8

jmp_44e8:
  r0 = 0x400000000 ll
  r2 = *(u64 *)(r3 + 0x78)
  if r2 != r1 goto jmp_5df8
  r1 = *(u64 *)(r6 + 0x10)
  r2 = *(u64 *)(r3 + 0x80)
  if r2 != r1 goto jmp_5df8
  r1 = *(u64 *)(r6 + 0x18)
  r2 = *(u64 *)(r3 + 0x88)
  if r2 != r1 goto jmp_5df8
  r1 = *(u64 *)(r6 + 0x20)
  r2 = *(u64 *)(r3 + 0x90)
  if r2 != r1 goto jmp_5df8
  r1 = *(u64 *)(r6 + 0x50)
  if r1 != 0x163 goto jmp_5ce0
  r1 = *(u64 *)(r6 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_5c80
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_5ce0
  r1 = *(u64 *)(r6 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_5ce0
  r1 = *(u64 *)(r6 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_5ce0
  r1 = *(u64 *)(r6 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_4600
  goto jmp_5ce0

jmp_4600:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r6 + 0x5a)
  if w1 != 0x1 goto jmp_5668
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r7 == 0x3 goto jmp_8228
  w1 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x150) = r1
  if r1 > 0xb goto jmp_5740
  r1 = *(u64 *)(r10 - 0x150)
  if w1 == 0x0 goto jmp_8228
  r7 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r7
  *(u64 *)(r10 - 0x160) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x150) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  r1 = r6
  r1 += 0x73
  *(u64 *)(r10 - 0x158) = r1
  goto jmp_80e8

jmp_46d0:
  r6 = 0x1000000000 ll
  w1 = *(u8 *)(r3 + 0x86)
  r0 = 0x1000000000 ll
  if w1 == 0x1 goto jmp_4708
  goto jmp_5e18

jmp_4708:
  r7 = 0x400000000 ll
  r1 = *(u64 *)(r3 + 0x8a)
  r6 = *(u64 *)(r9 + 0x8)
  r8 = *(u64 *)(r6 + 0x8)
  r0 = 0x400000000 ll
  if r1 != r8 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x10)
  r8 = *(u64 *)(r3 + 0x92)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x18)
  r8 = *(u64 *)(r3 + 0x9a)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x20)
  r8 = *(u64 *)(r3 + 0xa2)
  if r8 != r1 goto jmp_5638
  r1 = *(u64 *)(r6 + 0x50)
  if r1 != 0x163 goto jmp_6b28
  r1 = *(u64 *)(r6 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_6ac8
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_6b28
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_6b28
  r1 = *(u64 *)(r6 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_6b28
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 == r0 goto jmp_4840
  goto jmp_6b28

jmp_4840:
  *(u64 *)(r10 - 0x138) = r9
  w1 = *(u8 *)(r6 + 0x5a)
  if w1 != 0x1 goto jmp_5620
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r2 == 0x2 goto jmp_7658
  w1 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x150) = r1
  if r1 > 0xb goto jmp_5740
  r1 = *(u64 *)(r10 - 0x150)
  if w1 == 0x0 goto jmp_7658
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r2
  *(u64 *)(r10 - 0x138) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x150) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  r1 = r6
  r1 += 0x73
  *(u64 *)(r10 - 0x158) = r1
  goto jmp_7510

jmp_4910:
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_4970
  r1 = *(u64 *)(r5 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_4970
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_2650

jmp_4970:
  r0 = 0x7
  w1 = *(u8 *)(r5 + 0x1)
  if w1 == 0x0 goto jmp_55e8
  goto jmp_58a8

jmp_4990:
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_49f0
  r1 = *(u64 *)(r5 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_49f0
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_3710

jmp_49f0:
  r0 = 0x7
  w1 = *(u8 *)(r5 + 0x1)
  if w1 == 0x0 goto jmp_55e8
  goto jmp_58a8

jmp_4a10:
  w7 = *(u8 *)(r3 + 0xd9)
  r0 = 0xdd
  if w7 == 0x1 goto jmp_4a30
  r0 = 0x78

jmp_4a30:
  *(u64 *)(r10 - 0x138) = r9
  r6 = r3
  r6 += 0xdd
  r1 = r6
  if w7 == 0x1 goto jmp_4a68
  r1 = r3
  r1 += 0x78

jmp_4a68:
  r8 = r3
  r8 += r0
  r9 = *(u64 *)(r8 + 0x0)
  r0 = *(u64 *)(r10 - 0x138)
  r8 = *(u64 *)(r0 + 0x8)
  r7 = *(u64 *)(r8 + 0x8)
  r0 = 0x400000000 ll
  if r9 != r7 goto jmp_55e8
  r7 = *(u64 *)(r8 + 0x10)
  r9 = *(u64 *)(r1 + 0x8)
  if r9 != r7 goto jmp_55e8
  r7 = *(u64 *)(r8 + 0x18)
  r9 = *(u64 *)(r1 + 0x10)
  if r9 != r7 goto jmp_55e8
  r7 = *(u64 *)(r8 + 0x20)
  r1 = *(u64 *)(r1 + 0x18)
  if r1 != r7 goto jmp_55e8
  r1 = *(u64 *)(r8 + 0x50)
  if r1 != 0x163 goto jmp_69a8
  r1 = *(u64 *)(r8 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_6948
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_69a8
  r1 = *(u64 *)(r8 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_69a8
  r1 = *(u64 *)(r8 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_69a8
  r1 = *(u64 *)(r8 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 == r0 goto jmp_4ba8
  goto jmp_69a8

jmp_4ba8:
  r1 = *(u64 *)(r10 - 0x138)
  w1 = *(u8 *)(r8 + 0x5a)
  if w1 != 0x1 goto jmp_55b8
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r2 == 0x2 goto jmp_7358
  w1 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x150) = r1
  if r1 > 0xb goto jmp_5740
  r1 = *(u64 *)(r10 - 0x150)
  if w1 == 0x0 goto jmp_7358
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0x138)
  r1 += r2
  *(u64 *)(r10 - 0x138) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x150) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x148) = w1
  r1 = r8
  r1 += 0x73
  *(u64 *)(r10 - 0x158) = r1
  goto jmp_7208

jmp_4c78:
  r4 = *(u64 *)(r2 + 0x10)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0x93) = r4
  *(u64 *)(r8 + 0x8b) = r6
  *(u64 *)(r8 + 0x83) = r0
  *(u64 *)(r8 + 0x7b) = r5
  if r3 < 0x4 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x18)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0xb3) = r4
  *(u64 *)(r8 + 0xab) = r6
  *(u64 *)(r8 + 0xa3) = r0
  *(u64 *)(r8 + 0x9b) = r5
  if r1 == 0x3 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x20)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0xd3) = r4
  *(u64 *)(r8 + 0xcb) = r6
  *(u64 *)(r8 + 0xc3) = r0
  *(u64 *)(r8 + 0xbb) = r5
  if r3 < 0x6 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x28)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0xf3) = r4
  *(u64 *)(r8 + 0xeb) = r6
  *(u64 *)(r8 + 0xe3) = r0
  *(u64 *)(r8 + 0xdb) = r5
  if r1 == 0x5 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x30)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0x113) = r4
  *(u64 *)(r8 + 0x10b) = r6
  *(u64 *)(r8 + 0x103) = r0
  *(u64 *)(r8 + 0xfb) = r5
  if r3 < 0x8 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x38)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0x133) = r4
  *(u64 *)(r8 + 0x12b) = r6
  *(u64 *)(r8 + 0x123) = r0
  *(u64 *)(r8 + 0x11b) = r5
  if r1 == 0x7 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x40)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0x153) = r4
  *(u64 *)(r8 + 0x14b) = r6
  *(u64 *)(r8 + 0x143) = r0
  *(u64 *)(r8 + 0x13b) = r5
  if r3 < 0xa goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x48)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0x173) = r4
  *(u64 *)(r8 + 0x16b) = r6
  *(u64 *)(r8 + 0x163) = r0
  *(u64 *)(r8 + 0x15b) = r5
  if r1 == 0x9 goto jmp_3ec0
  r4 = *(u64 *)(r2 + 0x50)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r4 + 0x18)
  r4 = *(u64 *)(r4 + 0x20)
  *(u64 *)(r8 + 0x193) = r4
  *(u64 *)(r8 + 0x18b) = r6
  *(u64 *)(r8 + 0x183) = r0
  *(u64 *)(r8 + 0x17b) = r5
  if r3 < 0xc goto jmp_3ec0
  r2 = *(u64 *)(r2 + 0x58)
  r3 = *(u64 *)(r2 + 0x8)
  r4 = *(u64 *)(r2 + 0x10)
  r5 = *(u64 *)(r2 + 0x18)
  r2 = *(u64 *)(r2 + 0x20)
  *(u64 *)(r8 + 0x1b3) = r2
  *(u64 *)(r8 + 0x1ab) = r5
  *(u64 *)(r8 + 0x1a3) = r4
  *(u64 *)(r8 + 0x19b) = r3
  if r1 == 0xb goto jmp_3ec0
  goto jmp_52c0

jmp_4fa0:
  r1 = *(u64 *)(r2 + 0x18)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x93) = r1
  *(u64 *)(r8 + 0x8b) = r0
  *(u64 *)(r8 + 0x83) = r5
  *(u64 *)(r8 + 0x7b) = r4
  if r7 < 0x5 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x20)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xb3) = r1
  *(u64 *)(r8 + 0xab) = r0
  *(u64 *)(r8 + 0xa3) = r5
  *(u64 *)(r8 + 0x9b) = r4
  if r3 == 0x3 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x28)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xd3) = r1
  *(u64 *)(r8 + 0xcb) = r0
  *(u64 *)(r8 + 0xc3) = r5
  *(u64 *)(r8 + 0xbb) = r4
  if r7 < 0x7 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x30)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xf3) = r1
  *(u64 *)(r8 + 0xeb) = r0
  *(u64 *)(r8 + 0xe3) = r5
  *(u64 *)(r8 + 0xdb) = r4
  if r3 == 0x5 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x38)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x113) = r1
  *(u64 *)(r8 + 0x10b) = r0
  *(u64 *)(r8 + 0x103) = r5
  *(u64 *)(r8 + 0xfb) = r4
  if r7 < 0x9 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x40)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x133) = r1
  *(u64 *)(r8 + 0x12b) = r0
  *(u64 *)(r8 + 0x123) = r5
  *(u64 *)(r8 + 0x11b) = r4
  if r3 == 0x7 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x48)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x153) = r1
  *(u64 *)(r8 + 0x14b) = r0
  *(u64 *)(r8 + 0x143) = r5
  *(u64 *)(r8 + 0x13b) = r4
  if r7 < 0xb goto jmp_3208
  r1 = *(u64 *)(r2 + 0x50)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x173) = r1
  *(u64 *)(r8 + 0x16b) = r0
  *(u64 *)(r8 + 0x163) = r5
  *(u64 *)(r8 + 0x15b) = r4
  if r3 == 0x9 goto jmp_3208
  r1 = *(u64 *)(r2 + 0x58)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x193) = r1
  *(u64 *)(r8 + 0x18b) = r0
  *(u64 *)(r8 + 0x183) = r5
  *(u64 *)(r8 + 0x17b) = r4
  if r7 < 0xd goto jmp_3208
  r1 = *(u64 *)(r2 + 0x60)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x1b3) = r1
  *(u64 *)(r8 + 0x1ab) = r5
  *(u64 *)(r8 + 0x1a3) = r4
  *(u64 *)(r8 + 0x19b) = r2
  if r3 == 0xb goto jmp_3208

jmp_52c0:
  r1 = data_0700 ll
  call fn_18a00

jmp_52d8:
  r1 = *(u64 *)(r6 + 0x50)
  if r1 != 0x163 goto jmp_6c10
  r0 = r9
  r1 = *(u64 *)(r6 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_6ba8
  r2 = -0x6c5e9a281e0922fa ll
  r9 = r0
  if r1 != r2 goto jmp_6c10
  r1 = *(u64 *)(r6 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_6c10
  r1 = *(u64 *)(r6 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_6c10
  r1 = *(u64 *)(r6 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_5398
  goto jmp_6c10

jmp_5398:
  w1 = *(u8 *)(r6 + 0x5a)
  if w1 != 0x1 goto jmp_5650
  w1 = 0x0
  *(u32 *)(r10 - 0x150) = w1
  *(u32 *)(r10 - 0x121) = 0x0
  *(u64 *)(r10 - 0x128) = 0x0
  if r7 == 0x3 goto jmp_83c8
  w1 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x158) = r1
  if r1 > 0xb goto jmp_5770
  r1 = *(u64 *)(r10 - 0x158)
  if w1 == 0x0 goto jmp_83c8
  r7 <<= 0x3
  r1 = r0
  r1 += r7
  *(u64 *)(r10 - 0x168) = r1
  r1 = *(u64 *)(r10 - 0x158)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x158) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x150) = w1
  r1 = r6
  r1 += 0x73
  *(u64 *)(r10 - 0x160) = r1
  goto jmp_8270

jmp_5460:
  r0 = 0x9
  if w1 == 0x0 goto jmp_5b78
  r0 = 0x3
  r1 = 0x1d00000000 ll
  goto jmp_5e08

jmp_5490:
  r0 = 0x9
  if w1 == 0x0 goto jmp_56d0
  goto jmp_56c8

jmp_54a8:
  *(u8 *)(r8 + 0xc4) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r0
  *(u64 *)(r3 + 0x8) = r5
  *(u64 *)(r3 + 0x0) = r1
  r1 = *(u64 *)(r7 + 0x18)
  *(u64 *)(r8 + 0x90) = r1
  r1 = *(u64 *)(r7 + 0x10)
  *(u64 *)(r8 + 0x88) = r1
  r1 = *(u64 *)(r7 + 0x8)
  *(u64 *)(r8 + 0x80) = r1
  r1 = *(u64 *)(r7 + 0x0)
  *(u64 *)(r8 + 0x78) = r1
  *(u64 *)(r8 + 0xc9) = r2
  r6 -= r2
  *(u64 *)(r8 + 0x98) = r6
  *(u8 *)(r8 + 0xc5) = 0x1
  goto jmp_3d78

jmp_5558:
  r0 = 0x9
  if w1 == 0x0 goto jmp_55e8
  goto jmp_55e0

jmp_5570:
  r0 = 0x9
  if w1 == 0x0 goto jmp_55e8
  goto jmp_55e0

jmp_5588:
  r0 = 0x9
  if w8 == 0x0 goto jmp_56d0
  goto jmp_56c8

jmp_55a0:
  r0 = 0x9
  if w1 == 0x0 goto jmp_5638
  goto jmp_5630

jmp_55b8:
  r0 = 0x9
  if w1 == 0x0 goto jmp_55e8
  goto jmp_55e0

jmp_55d0:
  r0 = 0x9
  if w1 == 0x0 goto jmp_55e8

jmp_55e0:
  r0 = 0x3

jmp_55e8:
  r6 = r0
  r1 = 0x400000000 ll
  goto jmp_5e10

jmp_5608:
  r0 = 0x9
  if w1 == 0x0 goto jmp_5638
  goto jmp_5630

jmp_5620:
  r0 = 0x9
  if w1 == 0x0 goto jmp_5638

jmp_5630:
  r0 = 0x3

jmp_5638:
  r6 = r0
  r6 &= r7
  goto jmp_5e18

jmp_5650:
  r0 = 0x9
  if w1 == 0x0 goto jmp_5df8
  goto jmp_5678

jmp_5668:
  r0 = 0x9
  if w1 == 0x0 goto jmp_5df8

jmp_5678:
  r0 = 0x3
  goto jmp_5df8

jmp_5688:
  r0 = 0x9
  if w2 == 0x0 goto jmp_56d0
  goto jmp_56c8

jmp_56a0:
  r0 = 0x9
  if w2 == 0x0 goto jmp_56d0
  goto jmp_56c8

jmp_56b8:
  r0 = 0x9
  if w1 == 0x0 goto jmp_56d0

jmp_56c8:
  r0 = 0x3

jmp_56d0:
  r6 = 0x0
  goto jmp_5e18

jmp_56e0:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x148)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_5710:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x140)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_5740:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x150)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_5770:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x158)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_57a0:
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r1 != r5 goto jmp_5800
  r1 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r1 != r5 goto jmp_5800
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r1 == r5 goto jmp_33f8

jmp_5800:
  r0 = 0x7
  w1 = *(u8 *)(r4 + 0x1)
  if w1 == 0x0 goto jmp_7030

jmp_5818:
  *(u64 *)(r3 + 0xd1) = 0x0
  *(u8 *)(r3 + 0xa0) = 0x0
  goto jmp_5c60

jmp_5830:
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_5890
  r1 = *(u64 *)(r5 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_5890
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_2fc8

jmp_5890:
  r0 = 0x7
  w1 = *(u8 *)(r5 + 0x1)
  if w1 == 0x0 goto jmp_55e8

jmp_58a8:
  *(u32 *)(r10 - 0x114) = 0x0
  *(u32 *)(r10 - 0x117) = 0x0
  r2 = r10
  r2 += -0x128
  r6 = 0x0
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_5910
  r0 = 0x10
  goto jmp_5e18

jmp_5910:
  r7 += 0x80
  r1 = *(u64 *)(r10 - 0x128)
  r1 *= r7
  r6 = *(u64 *)(r10 - 0x120)
  r3 = 0x3ff0000000000000 ll
  r2 = r9
  if r6 == r3 goto jmp_5a30
  r3 = 0x4000000000000000 ll
  if r6 == r3 goto jmp_5a28
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x130) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  w7 = w0
  r1 = r6
  call fn_17668
  if w7 s< 0x0 goto jmp_59e0
  *(u64 *)(r10 - 0x130) = r0

jmp_59e0:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  if w0 s> 0x0 goto jmp_5a18
  r1 = *(u64 *)(r10 - 0x130)

jmp_5a18:
  r2 = r9
  goto jmp_5a30

jmp_5a28:
  r1 <<= 0x1

jmp_5a30:
  r6 = 0x0
  r3 = *(u64 *)(r8 + 0x48)
  r0 = 0x0
  if r3 < r1 goto jmp_5e18
  *(u64 *)(r8 + 0x48) = r1
  r3 -= r1
  r1 = *(u64 *)(r2 + 0x8)
  r2 = *(u64 *)(r1 + 0x48)
  r3 += r2
  *(u64 *)(r1 + 0x48) = r3
  r0 = 0xffffffff ll
  goto jmp_5e18

jmp_5a98:
  r1 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_5af8
  r1 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_5af8
  r1 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_1ba8

jmp_5af8:
  r0 = 0x7
  w1 = *(u8 *)(r5 + 0x1)
  if w1 == 0x0 goto jmp_5b78

jmp_5b10:
  r1 = *(u64 *)(r9 + 0x8)
  *(u8 *)(r4 + 0xa0) = 0x1
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r4 + 0xbc) = r1
  *(u64 *)(r4 + 0xb4) = r0
  *(u64 *)(r4 + 0xac) = r5
  *(u64 *)(r4 + 0xa4) = r2
  *(u64 *)(r4 + 0xd1) = r3
  r0 = 0xffffffff ll

jmp_5b78:
  r1 = 0x1d00000000 ll
  goto jmp_5e08

jmp_5b90:
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_5bf0
  r1 = *(u64 *)(r6 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_5bf0
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_0f40

jmp_5bf0:
  r0 = 0x7
  w1 = *(u8 *)(r6 + 0x1)
  if w1 == 0x0 goto jmp_7ac8

jmp_5c08:
  r1 = *(u64 *)(r9 + 0x10)
  *(u8 *)(r4 + 0xa0) = 0x1
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r4 + 0xbc) = r1
  *(u64 *)(r4 + 0xb4) = r0
  *(u64 *)(r4 + 0xac) = r5
  *(u64 *)(r4 + 0xa4) = r2
  *(u64 *)(r4 + 0xd1) = r3

jmp_5c60:
  r0 = 0xffffffff ll
  r6 = 0x0
  goto jmp_5e18

jmp_5c80:
  r1 = *(u64 *)(r6 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_5ce0
  r1 = *(u64 *)(r6 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_5ce0
  r1 = *(u64 *)(r6 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_4600

jmp_5ce0:
  r0 = 0x7
  w1 = *(u8 *)(r6 + 0x1)
  if w1 == 0x0 goto jmp_5df8

jmp_5cf8:
  if r4 != 0x0 goto jmp_5da0
  r1 = *(u64 *)(r3 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_5d90
  r1 = *(u64 *)(r3 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_5d90
  r1 = *(u64 *)(r3 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_5d90
  r0 = 0xffffffff ll
  r1 = *(u64 *)(r3 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_5df8

jmp_5d90:
  r0 = 0x6
  goto jmp_5df8

jmp_5da0:
  *(u64 *)(r3 + 0x98) = r5
  r0 = 0xffffffff ll
  r1 = *(u64 *)(r9 + 0x8)
  if r3 == r1 goto jmp_5df8
  r2 = *(u64 *)(r3 + 0x48)
  r2 -= r4
  *(u64 *)(r3 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r4
  *(u64 *)(r1 + 0x48) = r2

jmp_5df8:
  r1 = 0x1f00000000 ll

jmp_5e08:
  r6 = r0

jmp_5e10:
  r6 &= r1

jmp_5e18:
  r0 <<= 0x20
  r0 >>= 0x20
  r0 |= r6
  exit

jmp_5e38:
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_5e98
  r1 = *(u64 *)(r6 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_5e98
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_1fc8

jmp_5e98:
  r0 = 0x7
  w1 = *(u8 *)(r6 + 0x1)
  if w1 == 0x0 goto jmp_5638

jmp_5eb0:
  if r3 != 0x0 goto jmp_5ff0
  r0 = 0x6
  r1 = *(u64 *)(r5 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  r6 = 0x0
  if r1 != r2 goto jmp_5e18
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_5e18
  r1 = *(u64 *)(r5 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_5e18
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_5f50
  goto jmp_5e18

jmp_5f50:
  r1 = *(u64 *)(r4 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_5fe0
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_5fe0
  r1 = *(u64 *)(r4 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_5fe0
  r0 = 0xffffffff ll
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_5e18

jmp_5fe0:
  r0 = 0x6
  goto jmp_5e18

jmp_5ff0:
  r0 = *(u64 *)(r5 + 0x7c)
  r1 = r0
  r1 += r3
  w2 = 0x1
  if r1 < r0 goto jmp_6020
  w2 = 0x0

jmp_6020:
  r6 = 0xe00000000 ll
  w2 &= 0x1
  r0 = 0xe00000000 ll
  if w2 != 0x0 goto jmp_5e18
  *(u64 *)(r5 + 0x7c) = r1
  r1 = *(u64 *)(r4 + 0x98)
  r1 += r3
  *(u64 *)(r4 + 0x98) = r1

jmp_6070:
  r6 = 0x0
  r0 = 0xffffffff ll
  goto jmp_5e18

jmp_6090:
  r1 = r4
  if r5 == r4 goto jmp_6108

jmp_60a0:
  r1 = r3
  r2 = r4
  r3 = r5
  r5 = data_06e8 ll
  call fn_18a10

jmp_60d0:
  r1 = r3
  r1 += r5
  w2 = *(u8 *)(r1 + 0x0)
  w2 <<= 0x18
  w2 s>>= 0x18
  r1 = r5
  if w2 s< -0x40 goto jmp_60a0

jmp_6108:
  r4 -= r1
  r6 = r3
  r6 += r1
  r9 = r4
  r4 = r0

jmp_6130:
  r7 = r9
  if r7 == 0x0 goto jmp_62c0
  r5 = r6
  r5 += r7
  w2 = *(u8 *)(r5 - 0x1)
  r1 = r2
  r1 &= 0xff
  w2 <<= 0x18
  w2 s>>= 0x18
  if w2 s> -0x1 goto jmp_61f0
  r9 = r5
  r9 += -0x2
  w0 = *(u8 *)(r5 - 0x2)
  w0 <<= 0x18
  w0 s>>= 0x18
  w2 = w0
  w2 &= 0x1f
  if w0 s< -0x40 goto jmp_6220

jmp_61c0:
  r1 &= 0x3f
  r2 <<= 0x6
  r2 |= r1
  r9 -= r6
  if r2 == 0x30 goto jmp_6130
  goto jmp_62d8

jmp_61f0:
  r5 += -0x1
  r9 = r5
  r2 = r1
  r9 -= r6
  if r2 == 0x30 goto jmp_6130
  goto jmp_62d8

jmp_6220:
  r9 = r5
  r9 += -0x3
  w8 = *(u8 *)(r5 - 0x3)
  w8 <<= 0x18
  w8 s>>= 0x18
  w2 = w8
  w2 &= 0xf
  if w8 s< -0x40 goto jmp_6280

jmp_6260:
  r0 &= 0x3f
  r2 <<= 0x6
  r2 |= r0
  goto jmp_61c0

jmp_6280:
  r8 &= 0x3f
  w2 = *(u8 *)(r5 - 0x4)
  r2 &= 0x7
  r2 <<= 0x6
  r2 |= r8
  r5 += -0x4
  r9 = r5
  goto jmp_6260

jmp_62c0:
  r0 = 0x1
  if r4 == 0x0 goto jmp_3d88
  goto jmp_6338

jmp_62d8:
  if r7 > 0xf goto jmp_6418
  r1 = 0x0
  r0 = 0x1

jmp_62f0:
  r2 = r6
  r2 += r1
  w2 = *(u8 *)(r2 + 0x0)
  if w2 == 0x2e goto jmp_3d88
  r1 += 0x1
  if r1 < r7 goto jmp_62f0

jmp_6320:
  r0 = 0x1
  r1 = *(u64 *)(r10 - 0x130)
  if r7 > r1 goto jmp_3d88

jmp_6338:
  r2 = r4
  r1 = *(u64 *)(r10 - 0x130)
  r2 += r1
  if r2 > 0x101 goto jmp_3d88
  *(u64 *)(r10 - 0x130) = r2
  r8 = r10
  r8 += -0x128
  r1 = r8
  w2 = 0x30
  r3 = 0x101
  r9 = r4
  call fn_18470
  r1 = r8
  r2 = *(u64 *)(r10 - 0x140)
  r3 = r9
  call sol_memcpy_
  r8 += r9
  r1 = r8
  r8 = *(u64 *)(r10 - 0x130)
  r2 = r6
  r3 = r7
  call sol_memcpy_
  if r8 == 0x0 goto jmp_67c8
  if r8 != 0x1 goto jmp_6600
  w1 = *(u8 *)(r10 - 0x128)
  if w1 == 0x2b goto jmp_67c8
  if w1 == 0x2d goto jmp_67c8
  goto jmp_6608

jmp_6418:
  r1 = 0x0
  r2 = r6
  r2 += 0x7
  r2 &= -0x8
  if r2 == r6 goto jmp_6490
  r1 = r2
  r1 -= r6
  r2 = 0x0
  r0 = 0x1

jmp_6460:
  r5 = r6
  r5 += r2
  w5 = *(u8 *)(r5 + 0x0)
  if w5 == 0x2e goto jmp_3d88
  r2 += 0x1
  if r2 < r1 goto jmp_6460

jmp_6490:
  r2 = r7
  r2 += -0x10
  *(u64 *)(r10 - 0x138) = r2
  if r1 > r2 goto jmp_6568

jmp_64b0:
  r8 = r6
  r8 += r1
  r5 = *(u64 *)(r8 + 0x8)
  r9 = r5
  r2 = 0x2e2e2e2e2e2e2e2e ll
  r9 ^= r2
  r0 = 0x101010101010100 ll
  r0 -= r9
  r0 |= r5
  r5 = *(u64 *)(r8 + 0x0)
  r8 = r5
  r8 ^= r2
  r9 = 0x101010101010100 ll
  r9 -= r8
  r9 |= r5
  r9 &= r0
  r2 = -0x7f7f7f7f7f7f7f80 ll
  r9 &= r2
  if r9 == r2 goto jmp_65a8

jmp_6568:
  if r7 == r1 goto jmp_6320
  r2 = r7
  r2 -= r1
  r5 = r6
  r5 += r1
  r1 = 0x0
  r0 = 0x1
  goto jmp_65c8

jmp_65a8:
  r1 += 0x10
  r2 = *(u64 *)(r10 - 0x138)
  if r1 > r2 goto jmp_6568
  goto jmp_64b0

jmp_65c8:
  r8 = r5
  r8 += r1
  w8 = *(u8 *)(r8 + 0x0)
  if w8 == 0x2e goto jmp_3d88
  r1 += 0x1
  if r1 < r2 goto jmp_65c8
  goto jmp_6320

jmp_6600:
  w1 = *(u8 *)(r10 - 0x128)

jmp_6608:
  w2 = 0x1
  if w1 == 0x2b goto jmp_6620
  w2 = 0x0

jmp_6620:
  r6 = r10
  r6 += -0x128
  r6 += r2
  r8 -= r2
  if r8 < 0x11 goto jmp_6660
  r0 = 0x0
  r8 = -r8
  goto jmp_6720

jmp_6660:
  r0 = 0x0
  if r8 == 0x0 goto jmp_67e8
  r8 = -r8
  goto jmp_66a8

jmp_6680:
  r0 *= 0xa
  r0 += r1
  r6 += 0x1
  w2 &= 0x1
  if w2 != 0x0 goto jmp_67e8

jmp_66a8:
  w1 = *(u8 *)(r6 + 0x0)
  w1 += -0x30
  if w1 > 0x9 goto jmp_67c8
  r8 += 0x1
  w2 = 0x1
  if r8 == 0x0 goto jmp_6680
  w2 = 0x0
  goto jmp_6680

jmp_66e8:
  r8 += 0x1
  w1 = 0x1
  if r8 == 0x0 goto jmp_6708
  w1 = 0x0

jmp_6708:
  r6 += 0x1
  w1 &= 0x1
  if w1 != 0x0 goto jmp_67e8

jmp_6720:
  r1 = r0
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_18350
  w1 = 0x1
  if r2 != 0x0 goto jmp_6760
  w1 = 0x0

jmp_6760:
  w1 &= 0x1
  if w1 != 0x0 goto jmp_67c8
  r3 = r0
  w1 = *(u8 *)(r6 + 0x0)
  w1 += -0x30
  r0 += r1
  w2 = 0x1
  if r0 < r3 goto jmp_67a8
  w2 = 0x0

jmp_67a8:
  if w1 > 0x9 goto jmp_67c8
  w2 &= 0x1
  if w2 != 0x0 goto jmp_67c8
  goto jmp_66e8

jmp_67c8:
  r0 = 0x1
  r1 = 0xe00000000 ll
  goto jmp_5e08

jmp_67e8:
  *(u64 *)(r10 - 0x128) = r0
  r1 = r10
  r1 += -0x128
  r2 = 0x8
  goto jmp_3d70

jmp_6810:
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_6870
  r1 = *(u64 *)(r6 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_6870
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_1548

jmp_6870:
  r0 = 0x7
  w1 = *(u8 *)(r6 + 0x1)
  if w1 == 0x0 goto jmp_5638

jmp_6888:
  r6 = 0xc00000000 ll
  r0 = 0xc00000000 ll
  if r5 == 0x0 goto jmp_5e18
  r1 = r3
  r1 += 0x78
  r2 = *(u64 *)(r5 + 0x0)
  r4 = *(u64 *)(r5 + 0x8)
  r0 = *(u64 *)(r5 + 0x10)
  r5 = *(u64 *)(r5 + 0x18)
  *(u64 *)(r1 + 0x18) = r5
  *(u64 *)(r1 + 0x10) = r0
  *(u64 *)(r1 + 0x8) = r4
  *(u64 *)(r1 + 0x0) = r2
  r0 = 0xffffffff ll
  *(u64 *)(r3 + 0xd1) = 0x0
  *(u8 *)(r3 + 0xa0) = 0x0
  w1 = *(u8 *)(r3 + 0xc5)
  r6 = 0x0
  if w1 != 0x1 goto jmp_5e18
  *(u8 *)(r3 + 0xd9) = 0x0
  goto jmp_5e18

jmp_6948:
  r1 = *(u64 *)(r8 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_69a8
  r1 = *(u64 *)(r8 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_69a8
  r1 = *(u64 *)(r8 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_4ba8

jmp_69a8:
  r0 = 0x7
  w1 = *(u8 *)(r8 + 0x1)
  if w1 == 0x0 goto jmp_55e8

jmp_69c0:
  if r5 == 0x0 goto jmp_6a18
  *(u8 *)(r3 + 0xd9) = 0x1
  r1 = *(u64 *)(r5 + 0x0)
  r2 = *(u64 *)(r5 + 0x8)
  r3 = *(u64 *)(r5 + 0x10)
  r4 = *(u64 *)(r5 + 0x18)
  *(u64 *)(r6 + 0x18) = r4
  *(u64 *)(r6 + 0x10) = r3
  *(u64 *)(r6 + 0x8) = r2
  *(u64 *)(r6 + 0x0) = r1
  goto jmp_6070

jmp_6a18:
  *(u8 *)(r3 + 0xd9) = 0x0
  goto jmp_6070

jmp_6a28:
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_6a88
  r1 = *(u64 *)(r6 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_6a88
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_4340

jmp_6a88:
  r0 = 0x7
  w1 = *(u8 *)(r6 + 0x1)
  if w1 == 0x0 goto jmp_5638

jmp_6aa0:
  if r5 == 0x0 goto jmp_6ab8
  r3 += 0x5c
  goto jmp_6b50

jmp_6ab8:
  *(u8 *)(r3 + 0x58) = 0x0
  goto jmp_6070

jmp_6ac8:
  r1 = *(u64 *)(r6 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_6b28
  r1 = *(u64 *)(r6 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_6b28
  r1 = *(u64 *)(r6 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_4840

jmp_6b28:
  r0 = 0x7
  w1 = *(u8 *)(r6 + 0x1)
  if w1 == 0x0 goto jmp_5638

jmp_6b40:
  if r5 == 0x0 goto jmp_6b98
  r3 += 0x8a

jmp_6b50:
  r1 = *(u64 *)(r5 + 0x0)
  r2 = *(u64 *)(r5 + 0x8)
  r4 = *(u64 *)(r5 + 0x10)
  r5 = *(u64 *)(r5 + 0x18)
  *(u64 *)(r3 + 0x18) = r5
  *(u64 *)(r3 + 0x10) = r4
  *(u64 *)(r3 + 0x8) = r2
  *(u64 *)(r3 + 0x0) = r1
  goto jmp_6070

jmp_6b98:
  *(u8 *)(r3 + 0x86) = 0x0
  goto jmp_6070

jmp_6ba8:
  r1 = *(u64 *)(r6 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  r9 = r0
  if r1 != r2 goto jmp_6c10
  r1 = *(u64 *)(r6 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_6c10
  r1 = *(u64 *)(r6 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_5398

jmp_6c10:
  r0 = 0x7
  w1 = *(u8 *)(r6 + 0x1)
  if w1 == 0x0 goto jmp_5df8

jmp_6c28:
  r0 = 0x100000000 ll
  r1 = *(u64 *)(r3 + 0xd1)
  if r1 < r4 goto jmp_5df8
  r2 = r1
  r2 -= r4
  *(u64 *)(r3 + 0xd1) = r2
  if r1 != r4 goto jmp_5cf8
  *(u8 *)(r3 + 0xa0) = 0x0
  goto jmp_5cf8

jmp_6c78:
  r2 = *(u64 *)(r1 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_6cd8
  r2 = *(u64 *)(r1 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_6cd8
  r2 = *(u64 *)(r1 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_06a8

jmp_6cd8:
  r0 = 0x7
  w1 = *(u8 *)(r1 + 0x1)
  if w1 == 0x0 goto jmp_77c0

jmp_6cf0:
  *(u8 *)(r3 + 0xc4) = 0x2
  goto jmp_5c60

jmp_6d00:
  r2 = *(u64 *)(r1 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_6d60
  r2 = *(u64 *)(r1 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_6d60
  r2 = *(u64 *)(r1 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_1910

jmp_6d60:
  r0 = 0x7
  w1 = *(u8 *)(r1 + 0x1)
  if w1 == 0x0 goto jmp_77c0

jmp_6d78:
  *(u8 *)(r3 + 0xc4) = 0x1
  goto jmp_5c60

jmp_6d88:
  r1 = *(u64 *)(r10 - 0x130)
  r2 = *(u64 *)(r10 - 0x158)
  if r1 == r2 goto jmp_6ed8

jmp_6da0:
  r9 = r10
  r9 += -0x128
  r1 = *(u64 *)(r10 - 0x130)
  r7 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x130) = r1
  r1 = *(u64 *)(r7 + 0x8)
  r2 = *(u64 *)(r10 - 0x148)
  r8 = *(u64 *)(r10 - 0x150)
  goto jmp_6e58

jmp_6df0:
  r0 = *(u64 *)(r7 + 0x10)
  r6 = *(u64 *)(r8 - 0x10)
  if r6 != r0 goto jmp_6e38
  r0 = *(u64 *)(r7 + 0x18)
  r6 = *(u64 *)(r8 - 0x8)
  if r6 != r0 goto jmp_6e38
  r0 = *(u64 *)(r7 + 0x20)
  r6 = *(u64 *)(r8 + 0x0)
  if r6 == r0 goto jmp_6e70

jmp_6e38:
  r8 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_6d88

jmp_6e58:
  r0 = *(u64 *)(r8 - 0x18)
  if r0 != r1 goto jmp_6e38
  goto jmp_6df0

jmp_6e70:
  w0 = *(u8 *)(r9 + 0x0)
  if w0 != 0x0 goto jmp_6e38
  w0 = *(u8 *)(r7 + 0x1)
  if w0 != 0x0 goto jmp_6eb0

jmp_6e90:
  r0 = 0x7
  r1 = 0x1d00000000 ll
  goto jmp_5e08

jmp_6eb0:
  *(u8 *)(r9 + 0x0) = 0x1
  w0 = *(u32 *)(r10 - 0x140)
  w0 += 0x1
  *(u32 *)(r10 - 0x140) = w0
  goto jmp_6e38

jmp_6ed8:
  w1 = *(u8 *)(r5 + 0x58)
  w2 = *(u32 *)(r10 - 0x140)
  w2 &= 0xff
  if w2 < w1 goto jmp_6e90
  r9 = *(u64 *)(r10 - 0x138)
  goto jmp_5b10

jmp_6f08:
  r2 = *(u64 *)(r10 - 0x138)
  if r5 == r2 goto jmp_7048

jmp_6f18:
  r7 = r10
  r7 += -0x128
  r8 = *(u64 *)(r5 + 0x0)
  r5 += 0x8
  r9 = *(u64 *)(r8 + 0x8)
  r2 = *(u64 *)(r10 - 0x140)
  r6 = *(u64 *)(r10 - 0x148)
  goto jmp_6fc0

jmp_6f58:
  r0 = *(u64 *)(r8 + 0x10)
  r1 = *(u64 *)(r6 - 0x10)
  if r1 != r0 goto jmp_6fa0
  r1 = *(u64 *)(r8 + 0x18)
  r0 = *(u64 *)(r6 - 0x8)
  if r0 != r1 goto jmp_6fa0
  r1 = *(u64 *)(r8 + 0x20)
  r0 = *(u64 *)(r6 + 0x0)
  if r0 == r1 goto jmp_6fd8

jmp_6fa0:
  r6 += 0x20
  r7 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_6f08

jmp_6fc0:
  r0 = *(u64 *)(r6 - 0x18)
  if r0 != r9 goto jmp_6fa0
  goto jmp_6f58

jmp_6fd8:
  w1 = *(u8 *)(r7 + 0x0)
  if w1 != 0x0 goto jmp_6fa0
  w1 = *(u8 *)(r8 + 0x1)
  if w1 != 0x0 goto jmp_7008

jmp_6ff8:
  r0 = 0x7
  goto jmp_7030

jmp_7008:
  *(u8 *)(r7 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x130)
  w1 += 0x1
  *(u32 *)(r10 - 0x130) = w1
  goto jmp_6fa0

jmp_7030:
  r1 = 0x400000000 ll
  goto jmp_5e08

jmp_7048:
  w2 = *(u8 *)(r4 + 0x58)
  w1 = *(u32 *)(r10 - 0x130)
  w1 &= 0xff
  if w1 < w2 goto jmp_6ff8
  goto jmp_5818

jmp_7070:
  r1 = *(u64 *)(r10 - 0x138)
  if r4 == r1 goto jmp_71d0

jmp_7080:
  r9 = r10
  r9 += -0x128
  r1 = *(u64 *)(r4 + 0x0)
  r4 += 0x8
  *(u64 *)(r10 - 0x140) = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r0 = *(u64 *)(r10 - 0x158)
  goto jmp_7150

jmp_70d0:
  r2 = *(u64 *)(r10 - 0x140)
  r8 = *(u64 *)(r2 + 0x10)
  r2 = *(u64 *)(r0 - 0x10)
  if r2 != r8 goto jmp_7130
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x18)
  r8 = *(u64 *)(r0 - 0x8)
  if r8 != r2 goto jmp_7130
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x20)
  r8 = *(u64 *)(r0 + 0x0)
  if r8 == r2 goto jmp_7170

jmp_7130:
  r0 += 0x20
  r9 += 0x1
  r1 += -0x20
  if r1 == 0x0 goto jmp_7070

jmp_7150:
  r8 = *(u64 *)(r0 - 0x18)
  r2 = *(u64 *)(r10 - 0x130)
  if r8 != r2 goto jmp_7130
  goto jmp_70d0

jmp_7170:
  w2 = *(u8 *)(r9 + 0x0)
  if w2 != 0x0 goto jmp_7130
  r2 = *(u64 *)(r10 - 0x140)
  w2 = *(u8 *)(r2 + 0x1)
  if w2 != 0x0 goto jmp_71a8

jmp_7198:
  r0 = 0x7
  goto jmp_5638

jmp_71a8:
  *(u8 *)(r9 + 0x0) = 0x1
  w2 = *(u32 *)(r10 - 0x148)
  w2 += 0x1
  *(u32 *)(r10 - 0x148) = w2
  goto jmp_7130

jmp_71d0:
  w1 = *(u8 *)(r6 + 0x58)
  w2 = *(u32 *)(r10 - 0x148)
  w2 &= 0xff
  if w2 < w1 goto jmp_7198
  goto jmp_6888

jmp_71f8:
  r1 = *(u64 *)(r10 - 0x138)
  if r4 == r1 goto jmp_7358

jmp_7208:
  r9 = r10
  r9 += -0x128
  r1 = *(u64 *)(r4 + 0x0)
  r4 += 0x8
  *(u64 *)(r10 - 0x140) = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r0 = *(u64 *)(r10 - 0x150)
  r2 = *(u64 *)(r10 - 0x158)
  goto jmp_72d8

jmp_7258:
  r1 = *(u64 *)(r10 - 0x140)
  r7 = *(u64 *)(r1 + 0x10)
  r1 = *(u64 *)(r2 - 0x10)
  if r1 != r7 goto jmp_72b8
  r1 = *(u64 *)(r10 - 0x140)
  r1 = *(u64 *)(r1 + 0x18)
  r7 = *(u64 *)(r2 - 0x8)
  if r7 != r1 goto jmp_72b8
  r1 = *(u64 *)(r10 - 0x140)
  r1 = *(u64 *)(r1 + 0x20)
  r7 = *(u64 *)(r2 + 0x0)
  if r7 == r1 goto jmp_72f8

jmp_72b8:
  r2 += 0x20
  r9 += 0x1
  r0 += -0x20
  if r0 == 0x0 goto jmp_71f8

jmp_72d8:
  r7 = *(u64 *)(r2 - 0x18)
  r1 = *(u64 *)(r10 - 0x130)
  if r7 != r1 goto jmp_72b8
  goto jmp_7258

jmp_72f8:
  w1 = *(u8 *)(r9 + 0x0)
  if w1 != 0x0 goto jmp_72b8
  r1 = *(u64 *)(r10 - 0x140)
  w1 = *(u8 *)(r1 + 0x1)
  if w1 != 0x0 goto jmp_7330

jmp_7320:
  r0 = 0x7
  goto jmp_55e8

jmp_7330:
  *(u8 *)(r9 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x148)
  w1 += 0x1
  *(u32 *)(r10 - 0x148) = w1
  goto jmp_72b8

jmp_7358:
  w1 = *(u8 *)(r8 + 0x58)
  w2 = *(u32 *)(r10 - 0x148)
  w2 &= 0xff
  if w2 < w1 goto jmp_7320
  goto jmp_69c0

jmp_7380:
  r1 = *(u64 *)(r10 - 0x138)
  if r4 == r1 goto jmp_74d8

jmp_7390:
  r9 = r10
  r9 += -0x128
  r1 = *(u64 *)(r4 + 0x0)
  r4 += 0x8
  *(u64 *)(r10 - 0x140) = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r0 = *(u64 *)(r10 - 0x158)
  goto jmp_7460

jmp_73e0:
  r2 = *(u64 *)(r10 - 0x140)
  r8 = *(u64 *)(r2 + 0x10)
  r2 = *(u64 *)(r0 - 0x10)
  if r2 != r8 goto jmp_7440
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x18)
  r8 = *(u64 *)(r0 - 0x8)
  if r8 != r2 goto jmp_7440
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x20)
  r8 = *(u64 *)(r0 + 0x0)
  if r8 == r2 goto jmp_7480

jmp_7440:
  r0 += 0x20
  r9 += 0x1
  r1 += -0x20
  if r1 == 0x0 goto jmp_7380

jmp_7460:
  r8 = *(u64 *)(r0 - 0x18)
  r2 = *(u64 *)(r10 - 0x130)
  if r8 != r2 goto jmp_7440
  goto jmp_73e0

jmp_7480:
  w2 = *(u8 *)(r9 + 0x0)
  if w2 != 0x0 goto jmp_7440
  r2 = *(u64 *)(r10 - 0x140)
  w2 = *(u8 *)(r2 + 0x1)
  if w2 != 0x0 goto jmp_74b0

jmp_74a8:
  goto jmp_7198

jmp_74b0:
  *(u8 *)(r9 + 0x0) = 0x1
  w2 = *(u32 *)(r10 - 0x148)
  w2 += 0x1
  *(u32 *)(r10 - 0x148) = w2
  goto jmp_7440

jmp_74d8:
  w1 = *(u8 *)(r6 + 0x58)
  w2 = *(u32 *)(r10 - 0x148)
  w2 &= 0xff
  if w2 < w1 goto jmp_74a8
  goto jmp_6aa0

jmp_7500:
  r1 = *(u64 *)(r10 - 0x138)
  if r4 == r1 goto jmp_7658

jmp_7510:
  r9 = r10
  r9 += -0x128
  r1 = *(u64 *)(r4 + 0x0)
  r4 += 0x8
  *(u64 *)(r10 - 0x140) = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r1 = *(u64 *)(r10 - 0x150)
  r0 = *(u64 *)(r10 - 0x158)
  goto jmp_75e0

jmp_7560:
  r2 = *(u64 *)(r10 - 0x140)
  r8 = *(u64 *)(r2 + 0x10)
  r2 = *(u64 *)(r0 - 0x10)
  if r2 != r8 goto jmp_75c0
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x18)
  r8 = *(u64 *)(r0 - 0x8)
  if r8 != r2 goto jmp_75c0
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x20)
  r8 = *(u64 *)(r0 + 0x0)
  if r8 == r2 goto jmp_7600

jmp_75c0:
  r0 += 0x20
  r9 += 0x1
  r1 += -0x20
  if r1 == 0x0 goto jmp_7500

jmp_75e0:
  r8 = *(u64 *)(r0 - 0x18)
  r2 = *(u64 *)(r10 - 0x130)
  if r8 != r2 goto jmp_75c0
  goto jmp_7560

jmp_7600:
  w2 = *(u8 *)(r9 + 0x0)
  if w2 != 0x0 goto jmp_75c0
  r2 = *(u64 *)(r10 - 0x140)
  w2 = *(u8 *)(r2 + 0x1)
  if w2 != 0x0 goto jmp_7630

jmp_7628:
  goto jmp_7198

jmp_7630:
  *(u8 *)(r9 + 0x0) = 0x1
  w2 = *(u32 *)(r10 - 0x148)
  w2 += 0x1
  *(u32 *)(r10 - 0x148) = w2
  goto jmp_75c0

jmp_7658:
  w1 = *(u8 *)(r6 + 0x58)
  w2 = *(u32 *)(r10 - 0x148)
  w2 &= 0xff
  if w2 < w1 goto jmp_7628
  goto jmp_6b40

jmp_7680:
  r2 = *(u64 *)(r10 - 0x138)
  r5 = *(u64 *)(r10 - 0x130)
  if r5 == r2 goto jmp_77d8

jmp_7698:
  r8 = r10
  r8 += -0x128
  r2 = *(u64 *)(r10 - 0x130)
  r9 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x130) = r2
  r6 = *(u64 *)(r9 + 0x8)
  r2 = *(u64 *)(r10 - 0x148)
  r7 = *(u64 *)(r10 - 0x150)
  goto jmp_7750

jmp_76e8:
  r5 = *(u64 *)(r9 + 0x10)
  r0 = *(u64 *)(r7 - 0x10)
  if r0 != r5 goto jmp_7730
  r5 = *(u64 *)(r9 + 0x18)
  r0 = *(u64 *)(r7 - 0x8)
  if r0 != r5 goto jmp_7730
  r5 = *(u64 *)(r9 + 0x20)
  r0 = *(u64 *)(r7 + 0x0)
  if r0 == r5 goto jmp_7768

jmp_7730:
  r7 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7680

jmp_7750:
  r5 = *(u64 *)(r7 - 0x18)
  if r5 != r6 goto jmp_7730
  goto jmp_76e8

jmp_7768:
  w5 = *(u8 *)(r8 + 0x0)
  if w5 != 0x0 goto jmp_7730
  w5 = *(u8 *)(r9 + 0x1)
  if w5 != 0x0 goto jmp_7798

jmp_7788:
  r0 = 0x7
  goto jmp_77c0

jmp_7798:
  *(u8 *)(r8 + 0x0) = 0x1
  w5 = *(u32 *)(r10 - 0x140)
  w5 += 0x1
  *(u32 *)(r10 - 0x140) = w5
  goto jmp_7730

jmp_77c0:
  r6 = r0
  r6 &= r4
  goto jmp_5e18

jmp_77d8:
  w1 = *(u8 *)(r1 + 0x58)
  w2 = *(u32 *)(r10 - 0x140)
  w2 &= 0xff
  if w2 < w1 goto jmp_7788
  goto jmp_6cf0

jmp_7800:
  r2 = *(u64 *)(r10 - 0x138)
  r5 = *(u64 *)(r10 - 0x130)
  if r5 == r2 goto jmp_7938

jmp_7818:
  r8 = r10
  r8 += -0x128
  r2 = *(u64 *)(r10 - 0x130)
  r9 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x130) = r2
  r6 = *(u64 *)(r9 + 0x8)
  r2 = *(u64 *)(r10 - 0x148)
  r7 = *(u64 *)(r10 - 0x150)
  goto jmp_78d0

jmp_7868:
  r5 = *(u64 *)(r9 + 0x10)
  r0 = *(u64 *)(r7 - 0x10)
  if r0 != r5 goto jmp_78b0
  r5 = *(u64 *)(r9 + 0x18)
  r0 = *(u64 *)(r7 - 0x8)
  if r0 != r5 goto jmp_78b0
  r5 = *(u64 *)(r9 + 0x20)
  r0 = *(u64 *)(r7 + 0x0)
  if r0 == r5 goto jmp_78e8

jmp_78b0:
  r7 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7800

jmp_78d0:
  r5 = *(u64 *)(r7 - 0x18)
  if r5 != r6 goto jmp_78b0
  goto jmp_7868

jmp_78e8:
  w5 = *(u8 *)(r8 + 0x0)
  if w5 != 0x0 goto jmp_78b0
  w5 = *(u8 *)(r9 + 0x1)
  if w5 != 0x0 goto jmp_7910

jmp_7908:
  goto jmp_7788

jmp_7910:
  *(u8 *)(r8 + 0x0) = 0x1
  w5 = *(u32 *)(r10 - 0x140)
  w5 += 0x1
  *(u32 *)(r10 - 0x140) = w5
  goto jmp_78b0

jmp_7938:
  w1 = *(u8 *)(r1 + 0x58)
  w2 = *(u32 *)(r10 - 0x140)
  w2 &= 0xff
  if w2 < w1 goto jmp_7908
  goto jmp_6d78

jmp_7960:
  r1 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r10 - 0x160)
  if r1 == r2 goto jmp_7ae0

jmp_7978:
  r8 = r10
  r8 += -0x128
  r1 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x140) = r1
  *(u64 *)(r10 - 0x130) = r2
  r9 = *(u64 *)(r2 + 0x8)
  r2 = *(u64 *)(r10 - 0x150)
  r0 = *(u64 *)(r10 - 0x158)
  goto jmp_7a50

jmp_79d0:
  r1 = *(u64 *)(r10 - 0x130)
  r7 = *(u64 *)(r1 + 0x10)
  r1 = *(u64 *)(r0 - 0x10)
  if r1 != r7 goto jmp_7a30
  r1 = *(u64 *)(r10 - 0x130)
  r1 = *(u64 *)(r1 + 0x18)
  r7 = *(u64 *)(r0 - 0x8)
  if r7 != r1 goto jmp_7a30
  r1 = *(u64 *)(r10 - 0x130)
  r1 = *(u64 *)(r1 + 0x20)
  r7 = *(u64 *)(r0 + 0x0)
  if r7 == r1 goto jmp_7a68

jmp_7a30:
  r0 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7960

jmp_7a50:
  r7 = *(u64 *)(r0 - 0x18)
  if r7 != r9 goto jmp_7a30
  goto jmp_79d0

jmp_7a68:
  w1 = *(u8 *)(r8 + 0x0)
  if w1 != 0x0 goto jmp_7a30
  r1 = *(u64 *)(r10 - 0x130)
  w1 = *(u8 *)(r1 + 0x1)
  if w1 != 0x0 goto jmp_7aa0

jmp_7a90:
  r0 = 0x7
  goto jmp_7ac8

jmp_7aa0:
  *(u8 *)(r8 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x148)
  w1 += 0x1
  *(u32 *)(r10 - 0x148) = w1
  goto jmp_7a30

jmp_7ac8:
  r6 = r0
  r6 &= r5
  goto jmp_5e18

jmp_7ae0:
  w1 = *(u8 *)(r6 + 0x58)
  w2 = *(u32 *)(r10 - 0x148)
  w2 &= 0xff
  if w2 < w1 goto jmp_7a90
  r9 = *(u64 *)(r10 - 0x138)
  goto jmp_5c08

jmp_7b10:
  r1 = *(u64 *)(r10 - 0x138)
  r2 = *(u64 *)(r10 - 0x148)
  if r2 == r1 goto jmp_7c80

jmp_7b28:
  r8 = r10
  r8 += -0x128
  r1 = *(u64 *)(r10 - 0x148)
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x148) = r1
  *(u64 *)(r10 - 0x140) = r2
  r1 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r1 = *(u64 *)(r10 - 0x158)
  r0 = *(u64 *)(r10 - 0x160)
  goto jmp_7c08

jmp_7b88:
  r2 = *(u64 *)(r10 - 0x140)
  r9 = *(u64 *)(r2 + 0x10)
  r2 = *(u64 *)(r0 - 0x10)
  if r2 != r9 goto jmp_7be8
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x18)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r2 goto jmp_7be8
  r2 = *(u64 *)(r10 - 0x140)
  r2 = *(u64 *)(r2 + 0x20)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 == r2 goto jmp_7c28

jmp_7be8:
  r0 += 0x20
  r8 += 0x1
  r1 += -0x20
  if r1 == 0x0 goto jmp_7b10

jmp_7c08:
  r9 = *(u64 *)(r0 - 0x18)
  r2 = *(u64 *)(r10 - 0x130)
  if r9 != r2 goto jmp_7be8
  goto jmp_7b88

jmp_7c28:
  w2 = *(u8 *)(r8 + 0x0)
  if w2 != 0x0 goto jmp_7be8
  r2 = *(u64 *)(r10 - 0x140)
  w2 = *(u8 *)(r2 + 0x1)
  if w2 != 0x0 goto jmp_7c58

jmp_7c50:
  goto jmp_7198

jmp_7c58:
  *(u8 *)(r8 + 0x0) = 0x1
  w2 = *(u32 *)(r10 - 0x150)
  w2 += 0x1
  *(u32 *)(r10 - 0x150) = w2
  goto jmp_7be8

jmp_7c80:
  w1 = *(u8 *)(r6 + 0x58)
  w2 = *(u32 *)(r10 - 0x150)
  w2 &= 0xff
  if w2 < w1 goto jmp_7c50
  goto jmp_5eb0

jmp_7ca8:
  r1 = *(u64 *)(r10 - 0x158)
  if r3 == r1 goto jmp_7de0

jmp_7cb8:
  r6 = r10
  r6 += -0x128
  r1 = *(u64 *)(r3 + 0x0)
  r3 += 0x8
  r4 = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r2 = *(u64 *)(r10 - 0x148)
  r0 = *(u64 *)(r10 - 0x150)
  goto jmp_7d70

jmp_7d08:
  r1 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r1 goto jmp_7d50
  r1 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r1 goto jmp_7d50
  r1 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 == r1 goto jmp_7d90

jmp_7d50:
  r0 += 0x20
  r6 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7ca8

jmp_7d70:
  r1 = *(u64 *)(r0 - 0x18)
  r9 = *(u64 *)(r10 - 0x130)
  if r1 != r9 goto jmp_7d50
  goto jmp_7d08

jmp_7d90:
  w1 = *(u8 *)(r6 + 0x0)
  if w1 != 0x0 goto jmp_7d50
  w1 = *(u8 *)(r4 + 0x1)
  if w1 != 0x0 goto jmp_7db8

jmp_7db0:
  goto jmp_7320

jmp_7db8:
  *(u8 *)(r6 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x140)
  w1 += 0x1
  *(u32 *)(r10 - 0x140) = w1
  goto jmp_7d50

jmp_7de0:
  w1 = *(u8 *)(r5 + 0x58)
  w4 = *(u32 *)(r10 - 0x140)
  w4 &= 0xff
  if w4 < w1 goto jmp_7db0

jmp_7e00:
  r9 = *(u64 *)(r10 - 0x138)
  goto jmp_58a8

jmp_7e10:
  r1 = *(u64 *)(r10 - 0x158)
  if r3 == r1 goto jmp_7f48

jmp_7e20:
  r6 = r10
  r6 += -0x128
  r1 = *(u64 *)(r3 + 0x0)
  r3 += 0x8
  r4 = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r2 = *(u64 *)(r10 - 0x148)
  r0 = *(u64 *)(r10 - 0x150)
  goto jmp_7ed8

jmp_7e70:
  r1 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r1 goto jmp_7eb8
  r1 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r1 goto jmp_7eb8
  r1 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 == r1 goto jmp_7ef8

jmp_7eb8:
  r0 += 0x20
  r6 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7e10

jmp_7ed8:
  r1 = *(u64 *)(r0 - 0x18)
  r9 = *(u64 *)(r10 - 0x130)
  if r1 != r9 goto jmp_7eb8
  goto jmp_7e70

jmp_7ef8:
  w1 = *(u8 *)(r6 + 0x0)
  if w1 != 0x0 goto jmp_7eb8
  w1 = *(u8 *)(r4 + 0x1)
  if w1 != 0x0 goto jmp_7f20

jmp_7f18:
  goto jmp_7320

jmp_7f20:
  *(u8 *)(r6 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x140)
  w1 += 0x1
  *(u32 *)(r10 - 0x140) = w1
  goto jmp_7eb8

jmp_7f48:
  w1 = *(u8 *)(r5 + 0x58)
  w4 = *(u32 *)(r10 - 0x140)
  w4 &= 0xff
  if w4 < w1 goto jmp_7f18
  goto jmp_7e00

jmp_7f70:
  r1 = *(u64 *)(r10 - 0x158)
  if r3 == r1 goto jmp_80a8

jmp_7f80:
  r6 = r10
  r6 += -0x128
  r1 = *(u64 *)(r3 + 0x0)
  r3 += 0x8
  r4 = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x130) = r1
  r2 = *(u64 *)(r10 - 0x148)
  r0 = *(u64 *)(r10 - 0x150)
  goto jmp_8038

jmp_7fd0:
  r1 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r1 goto jmp_8018
  r1 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r1 goto jmp_8018
  r1 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 == r1 goto jmp_8058

jmp_8018:
  r0 += 0x20
  r6 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7f70

jmp_8038:
  r1 = *(u64 *)(r0 - 0x18)
  r9 = *(u64 *)(r10 - 0x130)
  if r1 != r9 goto jmp_8018
  goto jmp_7fd0

jmp_8058:
  w1 = *(u8 *)(r6 + 0x0)
  if w1 != 0x0 goto jmp_8018
  w1 = *(u8 *)(r4 + 0x1)
  if w1 != 0x0 goto jmp_8080

jmp_8078:
  goto jmp_7320

jmp_8080:
  *(u8 *)(r6 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x140)
  w1 += 0x1
  *(u32 *)(r10 - 0x140) = w1
  goto jmp_8018

jmp_80a8:
  w1 = *(u8 *)(r5 + 0x58)
  w4 = *(u32 *)(r10 - 0x140)
  w4 &= 0xff
  if w4 < w1 goto jmp_8078
  goto jmp_7e00

jmp_80d0:
  r1 = *(u64 *)(r10 - 0x130)
  r2 = *(u64 *)(r10 - 0x160)
  if r1 == r2 goto jmp_8228

jmp_80e8:
  r8 = r10
  r8 += -0x128
  r1 = *(u64 *)(r10 - 0x130)
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x130) = r1
  r7 = r2
  r1 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x140) = r1
  r2 = *(u64 *)(r10 - 0x150)
  r0 = *(u64 *)(r10 - 0x158)
  goto jmp_81b0

jmp_8148:
  r1 = *(u64 *)(r7 + 0x10)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r1 goto jmp_8190
  r1 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r1 goto jmp_8190
  r1 = *(u64 *)(r7 + 0x20)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 == r1 goto jmp_81d0

jmp_8190:
  r0 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_80d0

jmp_81b0:
  r1 = *(u64 *)(r0 - 0x18)
  r9 = *(u64 *)(r10 - 0x140)
  if r1 != r9 goto jmp_8190
  goto jmp_8148

jmp_81d0:
  w1 = *(u8 *)(r8 + 0x0)
  if w1 != 0x0 goto jmp_8190
  w1 = *(u8 *)(r7 + 0x1)
  if w1 != 0x0 goto jmp_8200

jmp_81f0:
  r0 = 0x7
  goto jmp_5df8

jmp_8200:
  *(u8 *)(r8 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x148)
  w1 += 0x1
  *(u32 *)(r10 - 0x148) = w1
  goto jmp_8190

jmp_8228:
  w1 = *(u8 *)(r6 + 0x58)
  w7 = *(u32 *)(r10 - 0x148)
  w7 &= 0xff
  if w7 < w1 goto jmp_81f0
  r9 = *(u64 *)(r10 - 0x138)
  goto jmp_5cf8

jmp_8258:
  r1 = *(u64 *)(r10 - 0x130)
  r2 = *(u64 *)(r10 - 0x168)
  if r1 == r2 goto jmp_83c8

jmp_8270:
  r8 = r10
  r8 += -0x128
  r1 = *(u64 *)(r10 - 0x130)
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x130) = r1
  *(u64 *)(r10 - 0x148) = r2
  r1 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x140) = r1
  r1 = *(u64 *)(r10 - 0x158)
  r9 = *(u64 *)(r10 - 0x160)
  goto jmp_8350

jmp_82d0:
  r2 = *(u64 *)(r10 - 0x148)
  r7 = *(u64 *)(r2 + 0x10)
  r2 = *(u64 *)(r9 - 0x10)
  if r2 != r7 goto jmp_8330
  r2 = *(u64 *)(r10 - 0x148)
  r7 = *(u64 *)(r2 + 0x18)
  r2 = *(u64 *)(r9 - 0x8)
  if r2 != r7 goto jmp_8330
  r2 = *(u64 *)(r10 - 0x148)
  r7 = *(u64 *)(r2 + 0x20)
  r2 = *(u64 *)(r9 + 0x0)
  if r2 == r7 goto jmp_8370

jmp_8330:
  r9 += 0x20
  r8 += 0x1
  r1 += -0x20
  if r1 == 0x0 goto jmp_8258

jmp_8350:
  r2 = *(u64 *)(r9 - 0x18)
  r7 = *(u64 *)(r10 - 0x140)
  if r2 != r7 goto jmp_8330
  goto jmp_82d0

jmp_8370:
  w2 = *(u8 *)(r8 + 0x0)
  if w2 != 0x0 goto jmp_8330
  r2 = *(u64 *)(r10 - 0x148)
  w2 = *(u8 *)(r2 + 0x1)
  if w2 != 0x0 goto jmp_83a0

jmp_8398:
  goto jmp_81f0

jmp_83a0:
  *(u8 *)(r8 + 0x0) = 0x1
  w2 = *(u32 *)(r10 - 0x150)
  w2 += 0x1
  *(u32 *)(r10 - 0x150) = w2
  goto jmp_8330

jmp_83c8:
  w1 = *(u8 *)(r6 + 0x58)
  w7 = *(u32 *)(r10 - 0x150)
  w7 &= 0xff
  if w7 < w1 goto jmp_8398
  r9 = r0
  goto jmp_6c28

entrypoint:
  w2 = *(u8 *)(r1 + 0x0)
  if w2 == 0x3 goto jmp_86d8
  if w2 != 0x4 goto jmp_8888
  r2 = *(u64 *)(r1 + 0x58)
  if r2 != 0xa5 goto jmp_8888
  w2 = *(u8 *)(r1 + 0x2910)
  if w2 != 0xff goto jmp_8888
  r2 = *(u64 *)(r1 + 0x2960)
  if r2 != 0x52 goto jmp_8888
  w2 = *(u8 *)(r1 + 0x51c8)
  if w2 != 0xff goto jmp_8888
  r2 = *(u64 *)(r1 + 0x5218)
  if r2 != 0xa5 goto jmp_8888
  w2 = *(u8 *)(r1 + 0x7ad0)
  if w2 != 0xff goto jmp_8888
  r4 = *(u64 *)(r1 + 0x7b20)
  r2 = r4
  r2 += 0x7
  r2 &= -0x8
  r5 = r1
  r5 += r2
  r2 = r5
  r2 += 0xa330
  r2 = *(u64 *)(r2 + 0x0)
  if r2 < 0xa goto jmp_8888
  r2 = r5
  r2 += 0xa338
  w2 = *(u8 *)(r2 + 0x0)
  if w2 != 0xc goto jmp_8888
  w7 = 0x0
  w2 = *(u8 *)(r1 + 0xcc)
  w6 = 0x3
  if w2 > 0x2 goto jmp_d798
  w6 = 0x9
  if w2 == 0x0 goto jmp_d798
  w3 = *(u8 *)(r1 + 0x528c)
  w6 = 0x3
  if w3 > 0x2 goto jmp_d798
  w6 = 0x9
  if w3 == 0x0 goto jmp_d798
  w7 = 0x11
  w6 = 0x0
  if w2 == 0x2 goto jmp_d798
  if w3 == 0x2 goto jmp_d798
  r2 = r5
  r2 += 0xa339
  r2 = *(u64 *)(r2 + 0x0)
  w7 = 0x1
  r3 = *(u64 *)(r1 + 0xa0)
  *(u64 *)(r10 - 0x818) = r2
  if r3 < r2 goto jmp_d798
  w7 = 0x3
  r0 = *(u64 *)(r1 + 0x60)
  r8 = *(u64 *)(r1 + 0x5220)
  if r0 != r8 goto jmp_d798
  r8 = *(u64 *)(r1 + 0x68)
  r9 = *(u64 *)(r1 + 0x5228)
  if r8 != r9 goto jmp_d798
  r2 = *(u64 *)(r1 + 0x70)
  r9 = *(u64 *)(r1 + 0x5230)
  *(u64 *)(r10 - 0x820) = r2
  if r2 != r9 goto jmp_d798
  r2 = *(u64 *)(r1 + 0x78)
  r9 = *(u64 *)(r1 + 0x5238)
  if r2 != r9 goto jmp_d798
  r9 = *(u64 *)(r1 + 0x2918)
  if r9 != r0 goto jmp_d798
  r0 = *(u64 *)(r1 + 0x2920)
  if r0 != r8 goto jmp_d798
  r0 = *(u64 *)(r1 + 0x2928)
  r8 = *(u64 *)(r10 - 0x820)
  if r0 != r8 goto jmp_d798
  r0 = *(u64 *)(r1 + 0x2930)
  if r0 == r2 goto jmp_8650
  goto jmp_d798

jmp_8650:
  w7 = 0x0
  w6 = 0x3
  w0 = *(u8 *)(r1 + 0x2995)
  if w0 > 0x1 goto jmp_d798
  w6 = 0x9
  if w0 != 0x1 goto jmp_d798
  r5 += 0xa341
  w5 = *(u8 *)(r5 + 0x0)
  w7 = 0x12
  w6 = 0x0
  w0 = *(u8 *)(r1 + 0x2994)
  if w5 == w0 goto jmp_86b8
  goto jmp_d798

jmp_86b8:
  w5 = *(u8 *)(r1 + 0xa8)
  if w5 == 0x1 goto jmp_d258
  r5 = *(u64 *)(r1 + 0x7ad8)
  goto jmp_d2d0

jmp_86d8:
  r2 = *(u64 *)(r1 + 0x58)
  if r2 != 0xa5 goto jmp_8888
  w2 = *(u8 *)(r1 + 0x2910)
  if w2 != 0xff goto jmp_8888
  r2 = *(u64 *)(r1 + 0x2960)
  if r2 != 0xa5 goto jmp_8888
  w2 = *(u8 *)(r1 + 0x5218)
  if w2 != 0xff goto jmp_8888
  r4 = *(u64 *)(r1 + 0x5268)
  r3 = r4
  r3 += 0x7
  r3 &= -0x8
  r2 = r1
  r2 += r3
  r3 = *(u64 *)(r2 + 0x7a78)
  if r3 < 0x9 goto jmp_8888
  w3 = *(u8 *)(r2 + 0x7a80)
  if w3 != 0x3 goto jmp_8888
  w7 = 0x0
  w3 = *(u8 *)(r1 + 0xcc)
  w6 = 0x3
  if w3 > 0x2 goto jmp_d118
  w6 = 0x9
  if w3 == 0x0 goto jmp_d118
  w5 = *(u8 *)(r1 + 0x29d4)
  w6 = 0x3
  if w5 > 0x2 goto jmp_d118
  w6 = 0x9
  if w5 == 0x0 goto jmp_d118
  w7 = 0x11
  w6 = 0x0
  if w3 == 0x2 goto jmp_d118
  if w5 == 0x2 goto jmp_d118
  r2 = *(u64 *)(r2 + 0x7a81)
  w7 = 0x1
  r3 = *(u64 *)(r1 + 0xa0)
  if r3 < r2 goto jmp_d118
  w7 = 0x3
  r5 = *(u64 *)(r1 + 0x2968)
  r0 = *(u64 *)(r1 + 0x60)
  if r0 != r5 goto jmp_d118
  r5 = *(u64 *)(r1 + 0x2970)
  r0 = *(u64 *)(r1 + 0x68)
  if r0 != r5 goto jmp_d118
  r5 = *(u64 *)(r1 + 0x2978)
  r0 = *(u64 *)(r1 + 0x70)
  if r0 != r5 goto jmp_d118
  r5 = *(u64 *)(r1 + 0x2980)
  r0 = *(u64 *)(r1 + 0x78)
  if r0 != r5 goto jmp_d118
  w5 = *(u8 *)(r1 + 0xa8)
  if w5 == 0x1 goto jmp_c8c0
  r5 = *(u64 *)(r1 + 0x5220)
  goto jmp_c938

jmp_8888:
  r6 = r1
  r6 += 0x8
  r0 = *(u64 *)(r1 + 0x0)
  r8 = r6
  if r0 == 0x0 goto jmp_8c40
  *(u64 *)(r10 - 0x810) = r6
  r2 = *(u64 *)(r1 + 0x58)
  r1 += r2
  r1 += 0x286f
  r1 &= -0x8
  r8 = r1
  if r0 == 0x1 goto jmp_8c40
  if r0 == 0x2 goto jmp_8c00
  r2 = r10
  r2 += -0x810
  r3 = r0
  if r0 < 0x6 goto jmp_8bc0
  r2 = r10
  r2 += -0x810
  r3 = r0
  goto jmp_8988

jmp_8930:
  r2 += 0x28
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_8b78
  *(u64 *)(r2 + 0x0) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8
  r3 += -0x5
  if r3 > 0x5 goto jmp_8988
  goto jmp_8bc0

jmp_8988:
  w4 = *(u8 *)(r1 + 0x0)
  if r4 == 0xff goto jmp_89a0
  goto jmp_8a78

jmp_89a0:
  *(u64 *)(r2 + 0x8) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8

jmp_89c8:
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_8ab8
  *(u64 *)(r2 + 0x10) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8

jmp_8a00:
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_8af8
  *(u64 *)(r2 + 0x18) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8

jmp_8a38:
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_8b38
  *(u64 *)(r2 + 0x20) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8
  goto jmp_8930

jmp_8a78:
  r4 <<= 0x3
  r5 = r10
  r5 += -0x810
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x8) = r4
  r1 += 0x8
  goto jmp_89c8

jmp_8ab8:
  r4 <<= 0x3
  r5 = r10
  r5 += -0x810
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x10) = r4
  r1 += 0x8
  goto jmp_8a00

jmp_8af8:
  r4 <<= 0x3
  r5 = r10
  r5 += -0x810
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x18) = r4
  r1 += 0x8
  goto jmp_8a38

jmp_8b38:
  r4 <<= 0x3
  r5 = r10
  r5 += -0x810
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x20) = r4
  r1 += 0x8
  goto jmp_8930

jmp_8b78:
  r4 <<= 0x3
  r5 = r10
  r5 += -0x810
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x0) = r4
  r1 += 0x8
  r3 += -0x5
  if r3 > 0x5 goto jmp_8988

jmp_8bc0:
  if r3 s> 0x2 goto jmp_9188
  r8 = r1
  if r3 == 0x1 goto jmp_8c40
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_8bf0
  goto jmp_c5b8

jmp_8bf0:
  *(u64 *)(r2 + 0x8) = r1
  goto jmp_8c18

jmp_8c00:
  w2 = *(u8 *)(r1 + 0x0)
  if r2 != 0xff goto jmp_c338
  *(u64 *)(r10 - 0x808) = r1

jmp_8c18:
  r2 = *(u64 *)(r1 + 0x50)
  r1 += r2
  r1 += 0x2867
  r1 &= -0x8

jmp_8c38:
  r8 = r1

jmp_8c40:
  *(u64 *)(r10 - 0x828) = r6
  *(u64 *)(r10 - 0x820) = r0
  r0 = 0xc
  r1 = *(u64 *)(r8 + 0x0)
  *(u64 *)(r10 - 0x818) = r1
  if r1 == 0x0 goto jmp_e488
  w5 = *(u8 *)(r8 + 0x8)
  if w5 != 0xff goto jmp_8d00
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0x3 goto jmp_da18
  r6 = r10
  r6 += -0x810
  r1 = r10
  r1 += -0x7
  *(u64 *)(r10 - 0x850) = r1
  r8 += 0x9
  r1 = *(u64 *)(r10 - 0x818)
  r1 += -0x1
  *(u64 *)(r10 - 0x818) = r1
  *(u64 *)(r10 - 0x858) = r1
  goto jmp_14678

jmp_8d00:
  r6 = r8
  r6 += 0x9
  if w5 s> 0xb goto jmp_8fe8
  if w5 s> 0x6 goto jmp_9268
  if w5 == 0x0 goto jmp_9698
  if w5 == 0x1 goto jmp_9eb8
  if w5 == 0x3 goto jmp_8d40
  goto jmp_9558

jmp_8d40:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0x9 goto jmp_da18
  r1 = str_00df ll
  r9 = 0xa
  r2 = 0x1b
  r3 = *(u64 *)(r10 - 0x820)
  if r3 > 0x2 goto jmp_8da0
  goto jmp_da40

jmp_8da0:
  r1 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r1 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r3 == 0xa5 goto jmp_8de0
  goto jmp_da40

jmp_8de0:
  r1 = *(u64 *)(r10 - 0x828)
  w5 = *(u8 *)(r1 + 0xc4)
  r1 = str_0041 ll
  if w5 > 0x2 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w5 == 0x0 goto jmp_da40
  r4 = *(u64 *)(r6 + 0x0)
  r3 = *(u64 *)(r10 - 0x808)
  r1 = *(u64 *)(r10 - 0x828)
  if r1 == r3 goto jmp_ca78
  r0 = *(u64 *)(r3 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r0 != 0xa5 goto jmp_da40
  w0 = *(u8 *)(r3 + 0xc4)
  if w0 > 0x2 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w0 == 0x0 goto jmp_da40
  r1 = 0x1100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w5 == 0x2 goto jmp_da18
  if w0 == 0x2 goto jmp_da18
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r1 + 0x98)
  if r5 < r4 goto jmp_da18
  r1 = 0x300000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r3 + 0x58)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x58)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r3 + 0x60)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x60)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r3 + 0x68)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x68)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r3 + 0x70)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x70)
  if r2 != r1 goto jmp_da18

jmp_8fa8:
  r1 = r10
  r1 += -0x7f8
  r0 = *(u64 *)(r10 - 0x800)
  r2 = *(u64 *)(r10 - 0x828)
  w2 = *(u8 *)(r2 + 0xa0)
  if w2 == 0x1 goto jmp_c5f8
  r2 = *(u64 *)(r0 + 0x8)
  goto jmp_c690

jmp_8fe8:
  if w5 s> 0x11 goto jmp_9540
  if w5 == 0xc goto jmp_15920
  if w5 == 0xf goto jmp_a0d0
  if w5 == 0x11 goto jmp_9010
  goto jmp_9558

jmp_9010:
  r1 = str_00df ll
  r9 = 0xa
  r2 = 0x1b
  r3 = *(u64 *)(r10 - 0x820)
  if r3 == 0x0 goto jmp_da40
  r1 = str_008c ll
  r9 = 0x6
  r2 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r2 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  r2 = 0x19
  if r3 != r4 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r2 + 0x30)
  r4 = -0x53861431b91e3427 ll
  r2 = 0x19
  if r3 != r4 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r2 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  r2 = 0x19
  if r3 != r4 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r2 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  r2 = 0x19
  if r3 != r4 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x820)
  if r1 != 0x1 goto jmp_a800
  *(u32 *)(r10 - 0x4) = 0x0
  *(u32 *)(r10 - 0x7) = 0x0
  r2 = r10
  r2 += -0x18
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_a9c8

jmp_9178:
  r9 = 0x10
  goto jmp_14b90

jmp_9188:
  if r3 == 0x3 goto jmp_95a0
  if r3 == 0x4 goto jmp_9600
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_91b0
  goto jmp_c3f8

jmp_91b0:
  *(u64 *)(r2 + 0x8) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8

jmp_91d8:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_c438
  *(u64 *)(r2 + 0x10) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8

jmp_9210:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_c478
  *(u64 *)(r2 + 0x18) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8

jmp_9248:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_c4b8
  *(u64 *)(r2 + 0x20) = r1
  goto jmp_8c18

jmp_9268:
  if w5 == 0x7 goto jmp_9938
  if w5 == 0x8 goto jmp_a3f0
  if w5 == 0x9 goto jmp_9288
  goto jmp_9558

jmp_9288:
  r1 = str_00df ll
  r9 = 0xa
  r2 = 0x1b
  r3 = *(u64 *)(r10 - 0x820)
  if r3 < 0x3 goto jmp_da40
  r3 = *(u64 *)(r10 - 0x808)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  r4 = *(u64 *)(r10 - 0x828)
  if r4 == r3 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r1 + 0x50)
  r1 = str_0041 ll
  if r4 != 0xa5 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  w4 = *(u8 *)(r1 + 0xc4)
  r1 = str_0041 ll
  if w4 > 0x2 goto jmp_da40
  r1 = str_00c4 ll
  r9 = 0x9
  r2 = 0x1b
  if w4 == 0x0 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  w1 = *(u8 *)(r1 + 0xc5)
  if w1 == 0x1 goto jmp_93b0
  r1 = 0xb00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x98)
  if r1 != 0x0 goto jmp_da18

jmp_93b0:
  r5 = *(u64 *)(r10 - 0x828)
  r1 = r5
  r1 += 0xdd
  w2 = *(u8 *)(r5 + 0xd9)
  if w2 == 0x1 goto jmp_93e8
  r1 = r5
  r1 += 0x78

jmp_93e8:
  r2 = *(u64 *)(r5 + 0x78)
  r4 = 0x6011348d72903300 ll
  if r2 == r4 goto jmp_b278
  if r2 != 0x0 goto jmp_b2d8
  r2 = *(u64 *)(r5 + 0x80)
  if r2 != 0x0 goto jmp_b2d8
  r2 = *(u64 *)(r5 + 0x88)
  if r2 != 0x0 goto jmp_b2d8
  r2 = *(u64 *)(r5 + 0x90)
  if r2 == 0x0 goto jmp_9448
  goto jmp_b2d8

jmp_9448:
  r4 = *(u64 *)(r3 + 0x8)
  r5 = 0x6011348d72903300 ll
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x10)
  r5 = -0x24ff0040ee364287 ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x18)
  r5 = -0x5963083332d1b22c ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x20)
  r5 = 0xe13800e1 ll
  if r4 != r5 goto jmp_da40

jmp_94e8:
  r1 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r1 + 0x48)
  r2 = *(u64 *)(r3 + 0x48)
  r2 += r4
  *(u64 *)(r3 + 0x48) = r2
  r1 += 0x28
  w2 = 0x0
  r3 = 0x30
  call sol_memset_
  r0 = 0x0
  goto jmp_e488

jmp_9540:
  if w5 == 0x12 goto jmp_9df8
  if w5 == 0x14 goto jmp_a6e0
  if w5 == 0x16 goto jmp_d970

jmp_9558:
  r4 = *(u64 *)(r10 - 0x818)
  r4 += -0x1
  r1 = r10
  r1 += -0x810
  r2 = *(u64 *)(r10 - 0x820)
  r3 = r6
  call fn_0030
  r9 = r0
  goto jmp_14b90

jmp_95a0:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_95b8
  goto jmp_c378

jmp_95b8:
  *(u64 *)(r2 + 0x8) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8

jmp_95e0:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_c3b8
  *(u64 *)(r2 + 0x10) = r1
  goto jmp_8c18

jmp_9600:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_9618
  goto jmp_c4f8

jmp_9618:
  *(u64 *)(r2 + 0x8) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8

jmp_9640:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_c538
  *(u64 *)(r2 + 0x10) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8

jmp_9678:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_c578
  *(u64 *)(r2 + 0x18) = r1
  goto jmp_8c18

jmp_9698:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0x23 goto jmp_da18
  r2 = 0x0
  w1 = *(u8 *)(r8 + 0x9)
  *(u32 *)(r10 - 0x830) = w1
  w1 = *(u8 *)(r8 + 0x2a)
  if w1 == 0x0 goto jmp_9718
  if w1 == 0x1 goto jmp_96f8
  goto jmp_da18

jmp_96f8:
  r1 = *(u64 *)(r10 - 0x818)
  if r1 < 0x43 goto jmp_da18
  r2 = r8
  r2 += 0x2b

jmp_9718:
  *(u64 *)(r10 - 0x818) = r2
  r1 = str_00df ll
  r2 = 0x1b
  r9 = 0xa
  r3 = *(u64 *)(r10 - 0x820)
  if r3 > 0x1 goto jmp_9758
  goto jmp_da40

jmp_9758:
  r1 = str_000e ll
  r2 = 0x16
  r9 = 0x1
  r4 = *(u64 *)(r10 - 0x808)
  r3 = *(u64 *)(r4 + 0x8)
  r5 = 0x515c2c1917d5a706 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x10)
  r5 = 0x7ff14a3d4cc98c21 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x18)
  r5 = 0x44fda19b08eeda58 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x20)
  r5 = 0x8ad9dbe3 ll
  if r3 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r7 = *(u64 *)(r2 + 0x50)
  r1 = r7
  r1 += 0x80
  r3 = *(u64 *)(r4 + 0x58)
  r3 *= r1
  r1 = *(u64 *)(r2 + 0x48)
  *(u64 *)(r10 - 0x820) = r1
  r6 = *(u64 *)(r4 + 0x60)
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_b110
  r1 = 0x4000000000000000 ll
  if r6 == r1 goto jmp_b108
  r1 = r3
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x838) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  w9 = w0
  r1 = r6
  call fn_17668
  if w9 s< 0x0 goto jmp_98f8
  *(u64 *)(r10 - 0x838) = r0

jmp_98f8:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r3 = -0x1
  if w0 s> 0x0 goto jmp_b110
  r3 = *(u64 *)(r10 - 0x838)
  goto jmp_b110

jmp_9938:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0x9 goto jmp_da18
  r1 = str_00df ll
  r9 = 0xa
  r2 = 0x1b
  r3 = *(u64 *)(r10 - 0x820)
  if r3 < 0x3 goto jmp_da40
  r3 = *(u64 *)(r10 - 0x808)
  r4 = *(u64 *)(r3 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r4 != 0xa5 goto jmp_da40
  w4 = *(u8 *)(r3 + 0xc4)
  if w4 > 0x2 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w4 == 0x0 goto jmp_da40
  r1 = 0x1100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w4 == 0x2 goto jmp_da18
  r1 = 0xa00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  w1 = *(u8 *)(r3 + 0xc5)
  if w1 == 0x1 goto jmp_da18
  r1 = 0x300000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r3 + 0x58)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x8)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r3 + 0x60)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x10)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r3 + 0x68)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x18)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r3 + 0x70)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x20)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r1 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r4 != 0x52 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  w4 = *(u8 *)(r1 + 0x85)
  r1 = str_0041 ll
  if w4 > 0x1 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w4 != 0x1 goto jmp_da40
  r1 = 0x500000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  w1 = *(u8 *)(r1 + 0x58)
  if w1 != 0x1 goto jmp_da18
  r1 = 0x400000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r5 = *(u64 *)(r10 - 0x800)
  r1 = *(u64 *)(r5 + 0x8)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x5c)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r5 + 0x10)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x64)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r5 + 0x18)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x6c)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r5 + 0x20)
  r2 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r2 + 0x74)
  if r2 != r1 goto jmp_da18
  r4 = *(u64 *)(r6 + 0x0)
  r1 = *(u64 *)(r5 + 0x50)
  if r1 != 0x163 goto jmp_de00
  r1 = *(u64 *)(r5 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_dda0
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_de00
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_de00
  r1 = *(u64 *)(r5 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_de00
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_9cf0
  goto jmp_de00

jmp_9cf0:
  w1 = *(u8 *)(r5 + 0x5a)
  if w1 != 0x1 goto jmp_ce28
  w1 = 0x0
  *(u32 *)(r10 - 0x830) = w1
  r2 = *(u64 *)(r10 - 0x820)
  r2 <<= 0x3
  r1 = r10
  r1 += -0x810
  *(u64 *)(r10 - 0x838) = r1
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r1 = r2
  if r2 == 0x18 goto jmp_154b0
  w2 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x820) = r2
  if r2 > 0xb goto jmp_d560
  r2 = *(u64 *)(r10 - 0x820)
  if w2 == 0x0 goto jmp_154b0
  r2 = r10
  r2 += -0x7f8
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r2 += r1
  *(u64 *)(r10 - 0x838) = r2
  r1 = *(u64 *)(r10 - 0x820)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x820) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x830) = w1
  r1 = r5
  r1 += 0x73
  *(u64 *)(r10 - 0x840) = r1
  goto jmp_15390

jmp_9df8:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0x21 goto jmp_da18
  r1 = str_00df ll
  r2 = 0x1b
  r9 = 0xa
  r3 = *(u64 *)(r10 - 0x820)
  if r3 < 0x2 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  r7 = *(u64 *)(r1 + 0x50)
  *(u32 *)(r10 - 0x4) = 0x0
  *(u32 *)(r10 - 0x7) = 0x0
  r2 = r10
  r2 += -0x18
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_abf0
  goto jmp_9178

jmp_9eb8:
  r1 = str_00df ll
  r2 = 0x1b
  r9 = 0xa
  r3 = *(u64 *)(r10 - 0x820)
  if r3 < 0x3 goto jmp_da40
  r3 = *(u64 *)(r10 - 0x820)
  if r3 == 0x3 goto jmp_da40
  r1 = str_000e ll
  r2 = 0x16
  r9 = 0x1
  r4 = *(u64 *)(r10 - 0x7f8)
  r3 = *(u64 *)(r4 + 0x8)
  r5 = 0x515c2c1917d5a706 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x10)
  r5 = 0x7ff14a3d4cc98c21 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x18)
  r5 = 0x44fda19b08eeda58 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x20)
  r5 = 0x8ad9dbe3 ll
  if r3 != r5 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r1 + 0x50)
  r1 = *(u64 *)(r10 - 0x800)
  *(u64 *)(r10 - 0x818) = r1
  r1 = r8
  r1 += 0x80
  r3 = *(u64 *)(r4 + 0x58)
  r3 *= r1
  r6 = *(u64 *)(r4 + 0x60)
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_ae18
  r1 = 0x4000000000000000 ll
  if r6 == r1 goto jmp_ae10
  r1 = r3
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r9 = 0x0
  r1 = r6
  r2 = 0x0
  call fn_17920
  w7 = w0
  r1 = r6
  call fn_17668
  if w7 s< 0x0 goto jmp_a090
  r9 = r0

jmp_a090:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r3 = -0x1
  if w0 s> 0x0 goto jmp_ae18
  r3 = r9
  goto jmp_ae18

jmp_a0d0:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0xa goto jmp_da18
  r1 = str_00df ll
  r9 = 0xa
  r2 = 0x1b
  r3 = *(u64 *)(r10 - 0x820)
  if r3 < 0x3 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r1 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r3 != 0xa5 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  w4 = *(u8 *)(r1 + 0xc4)
  r1 = str_0041 ll
  if w4 > 0x2 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w4 == 0x0 goto jmp_da40
  r3 = *(u64 *)(r10 - 0x808)
  r5 = *(u64 *)(r3 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r5 != 0x52 goto jmp_da40
  w5 = *(u8 *)(r3 + 0x85)
  if w5 > 0x1 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w5 != 0x1 goto jmp_da40
  r1 = 0x1100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w4 == 0x2 goto jmp_da18
  r1 = 0xa00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  w1 = *(u8 *)(r1 + 0xc5)
  if w1 == 0x1 goto jmp_da18
  r4 = *(u64 *)(r8 + 0x9)
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r1 + 0x98)
  if r5 < r4 goto jmp_da18
  r1 = 0x300000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x58)
  r2 = *(u64 *)(r3 + 0x8)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x60)
  r2 = *(u64 *)(r3 + 0x10)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x68)
  r2 = *(u64 *)(r3 + 0x18)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x70)
  r2 = *(u64 *)(r3 + 0x20)
  if r2 != r1 goto jmp_da18
  w1 = *(u8 *)(r8 + 0x11)
  r2 = 0x1200000000 ll
  *(u64 *)(r10 - 0x840) = r2
  w2 = *(u8 *)(r3 + 0x84)
  if w1 != w2 goto jmp_da18
  r0 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r0 + 0x78)
  r1 = 0x6011348d72903300 ll
  if r2 == r1 goto jmp_bdd8
  if r2 != 0x0 goto jmp_be48
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x80)
  if r1 != 0x0 goto jmp_be48
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x88)
  if r1 != 0x0 goto jmp_be48
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x90)
  if r1 == 0x0 goto jmp_e2d8
  goto jmp_be48

jmp_a3f0:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0x9 goto jmp_da18
  r1 = str_00df ll
  r9 = 0xa
  r2 = 0x1b
  r3 = *(u64 *)(r10 - 0x820)
  if r3 < 0x3 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r1 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r3 != 0xa5 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  w4 = *(u8 *)(r1 + 0xc4)
  r1 = str_0041 ll
  if w4 > 0x2 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w4 == 0x0 goto jmp_da40
  r3 = *(u64 *)(r10 - 0x808)
  r5 = *(u64 *)(r3 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r5 != 0x52 goto jmp_da40
  w5 = *(u8 *)(r3 + 0x85)
  if w5 > 0x1 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w5 != 0x1 goto jmp_da40
  r1 = 0x1100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w4 == 0x2 goto jmp_da18
  r1 = 0xa00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  w1 = *(u8 *)(r1 + 0xc5)
  if w1 == 0x1 goto jmp_da18
  r4 = *(u64 *)(r6 + 0x0)
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r1 + 0x98)
  if r5 < r4 goto jmp_da18
  r1 = 0x300000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x58)
  r2 = *(u64 *)(r3 + 0x8)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x60)
  r2 = *(u64 *)(r3 + 0x10)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x68)
  r2 = *(u64 *)(r3 + 0x18)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x70)
  r2 = *(u64 *)(r3 + 0x20)
  if r2 != r1 goto jmp_da18
  r0 = *(u64 *)(r10 - 0x828)
  r2 = *(u64 *)(r0 + 0x78)
  r1 = 0x6011348d72903300 ll
  if r2 == r1 goto jmp_b910
  if r2 != 0x0 goto jmp_b980
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x80)
  if r1 != 0x0 goto jmp_b980
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x88)
  if r1 != 0x0 goto jmp_b980
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x90)
  if r1 == 0x0 goto jmp_e0d0
  goto jmp_b980

jmp_a6e0:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0x23 goto jmp_da18
  r2 = 0x0
  w1 = *(u8 *)(r8 + 0x9)
  *(u32 *)(r10 - 0x830) = w1
  w1 = *(u8 *)(r8 + 0x2a)
  if w1 == 0x0 goto jmp_a760
  if w1 == 0x1 goto jmp_a740
  goto jmp_da18

jmp_a740:
  r1 = *(u64 *)(r10 - 0x818)
  if r1 < 0x43 goto jmp_da18
  r2 = r8
  r2 += 0x2b

jmp_a760:
  *(u64 *)(r10 - 0x818) = r2
  r1 = str_00df ll
  r2 = 0x1b
  r9 = 0xa
  r3 = *(u64 *)(r10 - 0x820)
  if r3 == 0x0 goto jmp_da40
  r7 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r7 + 0x50)
  *(u32 *)(r10 - 0x4) = 0x0
  *(u32 *)(r10 - 0x7) = 0x0
  r2 = r10
  r2 += -0x18
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_acf8
  goto jmp_9178

jmp_a800:
  r1 = str_000e ll
  r2 = 0x16
  r9 = 0x1
  r4 = *(u64 *)(r10 - 0x808)
  r3 = *(u64 *)(r4 + 0x8)
  r5 = 0x515c2c1917d5a706 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x10)
  r5 = 0x7ff14a3d4cc98c21 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x18)
  r5 = 0x44fda19b08eeda58 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x20)
  r5 = 0x8ad9dbe3 ll
  if r3 == r5 goto jmp_a8b0
  goto jmp_da40

jmp_a8b0:
  r1 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r1 + 0x50)
  r3 = *(u64 *)(r4 + 0x58)
  r1 = r8
  r1 += 0x80
  r3 *= r1
  r6 = *(u64 *)(r4 + 0x60)
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_aaf0
  r1 = 0x4000000000000000 ll
  if r6 == r1 goto jmp_aae8
  r1 = r3
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r9 = 0x0
  r1 = r6
  r2 = 0x0
  call fn_17920
  w7 = w0
  r1 = r6
  call fn_17668
  if w7 s< 0x0 goto jmp_a990
  r9 = r0

jmp_a990:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r3 = -0x1
  if w0 s> 0x0 goto jmp_aaf0
  goto jmp_aad8

jmp_a9c8:
  r6 = *(u64 *)(r10 - 0x10)
  r1 = *(u64 *)(r10 - 0x18)
  r2 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r2 + 0x50)
  r3 = r8
  r3 += 0x80
  r3 *= r1
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_aaf0
  r1 = 0x4000000000000000 ll
  if r6 == r1 goto jmp_aae8
  r1 = r3
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r9 = 0x0
  r1 = r6
  r2 = 0x0
  call fn_17920
  w7 = w0
  r1 = r6
  call fn_17668
  if w7 s< 0x0 goto jmp_aaa8
  r9 = r0

jmp_aaa8:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r3 = -0x1
  if w0 s> 0x0 goto jmp_aaf0

jmp_aad8:
  r3 = r9
  goto jmp_aaf0

jmp_aae8:
  r3 <<= 0x1

jmp_aaf0:
  r1 = str_0041 ll
  r9 = 0x3
  r2 = 0x19
  if r8 != 0xa5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  w4 = *(u8 *)(r2 + 0xc4)
  r2 = 0x19
  if w4 > 0x2 goto jmp_da40
  r1 = str_00c4 ll
  r9 = 0x9
  r2 = 0x1b
  if w4 == 0x0 goto jmp_da40
  r1 = 0x1300000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  w1 = *(u8 *)(r1 + 0xc5)
  if w1 != 0x1 goto jmp_da18
  r1 = 0xe00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x48)
  if r1 < r3 goto jmp_da18
  r2 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r2 + 0xc9) = r3
  r1 -= r3
  *(u64 *)(r2 + 0x98) = r1
  r0 = 0x0
  goto jmp_e488

jmp_abf0:
  r7 += 0x80
  r3 = *(u64 *)(r10 - 0x18)
  r3 *= r7
  r7 = *(u64 *)(r10 - 0x10)
  r1 = 0x3ff0000000000000 ll
  if r7 == r1 goto jmp_b510
  r1 = 0x4000000000000000 ll
  if r7 == r1 goto jmp_b508
  r1 = r3
  call fn_17728
  r1 = r7
  r2 = r0
  call fn_17ae0
  r7 = r0
  r8 = 0x0
  r1 = r7
  r2 = 0x0
  call fn_17920
  w9 = w0
  r1 = r7
  call fn_17668
  if w9 s< 0x0 goto jmp_acb8
  r8 = r0

jmp_acb8:
  r1 = r7
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r3 = -0x1
  if w0 s> 0x0 goto jmp_b510
  r3 = r8
  goto jmp_b510

jmp_acf8:
  r6 += 0x80
  r3 = *(u64 *)(r10 - 0x18)
  r3 *= r6
  r6 = *(u64 *)(r10 - 0x10)
  r1 = *(u64 *)(r7 + 0x48)
  *(u64 *)(r10 - 0x820) = r1
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_b7f0
  r1 = 0x4000000000000000 ll
  if r6 == r1 goto jmp_b7e8
  r1 = r3
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r9 = 0x0
  r1 = r6
  r2 = 0x0
  call fn_17920
  w7 = w0
  r1 = r6
  call fn_17668
  if w7 s< 0x0 goto jmp_add0
  r9 = r0

jmp_add0:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r3 = -0x1
  if w0 s> 0x0 goto jmp_b7f0
  r3 = r9
  goto jmp_b7f0

jmp_ae10:
  r3 <<= 0x1

jmp_ae18:
  r4 = *(u64 *)(r10 - 0x808)
  r1 = *(u64 *)(r4 + 0x8)
  r2 = -0x7b7e5401a87764fa ll
  if r1 == r2 goto jmp_ae50

jmp_ae40:
  w6 = 0x0
  goto jmp_aeb8

jmp_ae50:
  r1 = *(u64 *)(r4 + 0x10)
  r2 = 0x35c01846637f68fb ll
  if r1 != r2 goto jmp_ae40
  r1 = *(u64 *)(r4 + 0x18)
  r2 = 0x553beb1adc39c4da ll
  if r1 != r2 goto jmp_ae40
  w6 = 0x1
  r1 = *(u64 *)(r4 + 0x20)
  r2 = 0x100000000f0a098 ll
  if r1 != r2 goto jmp_ae40

jmp_aeb8:
  r1 = str_0041 ll
  r2 = 0x19
  r9 = 0x3
  if r8 == 0xa5 goto jmp_aee8
  goto jmp_da40

jmp_aee8:
  r5 = *(u64 *)(r10 - 0x828)
  w5 = *(u8 *)(r5 + 0xc4)
  if w5 > 0x2 goto jmp_da40
  r1 = 0x600000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w5 != 0x0 goto jmp_da18
  r1 = 0x0
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x48)
  if r1 < r3 goto jmp_da18
  r5 = *(u64 *)(r10 - 0x818)
  r5 += 0x8
  *(u64 *)(r10 - 0x818) = r5
  r0 = r4
  r0 += 0x8
  r5 = *(u64 *)(r10 - 0x828)
  r5 += 0x58
  if w6 != 0x0 goto jmp_cd60
  r1 = str_008c ll
  r9 = 0x6
  r3 = *(u64 *)(r4 + 0x28)
  r6 = -0x6c5e9a281e0922fa ll
  if r3 != r6 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r3 != r6 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r3 != r6 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r3 == r6 goto jmp_b028
  goto jmp_da40

jmp_b028:
  r1 = 0x200000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x52 goto jmp_da18
  w1 = *(u8 *)(r4 + 0x85)
  if w1 != 0x1 goto jmp_da18
  r6 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r6 + 0xc4) = 0x1
  r1 = *(u64 *)(r0 + 0x0)
  r2 = *(u64 *)(r0 + 0x8)
  r3 = *(u64 *)(r0 + 0x10)
  r4 = *(u64 *)(r0 + 0x18)
  *(u64 *)(r5 + 0x18) = r4
  *(u64 *)(r5 + 0x10) = r3
  *(u64 *)(r5 + 0x8) = r2
  *(u64 *)(r5 + 0x0) = r1
  r4 = *(u64 *)(r10 - 0x818)
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r6 + 0x90) = r4
  *(u64 *)(r6 + 0x88) = r3
  *(u64 *)(r6 + 0x80) = r2
  *(u64 *)(r6 + 0x78) = r1
  r0 = 0x0
  goto jmp_e488

jmp_b108:
  r3 <<= 0x1

jmp_b110:
  r1 = str_0041 ll
  r2 = 0x19
  r9 = 0x3
  if r7 != 0x52 goto jmp_da40
  r4 = 0x600000000 ll
  *(u64 *)(r10 - 0x840) = r4
  r4 = *(u64 *)(r10 - 0x828)
  w4 = *(u8 *)(r4 + 0x85)
  if w4 == 0x1 goto jmp_da18
  if w4 != 0x0 goto jmp_da40
  r1 = 0x0
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x820)
  if r1 < r3 goto jmp_da18
  r8 += 0xa
  r5 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r5 + 0x58) = 0x1
  *(u8 *)(r5 + 0x85) = 0x1
  r1 = *(u64 *)(r8 + 0x0)
  r2 = *(u64 *)(r8 + 0x8)
  r3 = *(u64 *)(r8 + 0x10)
  r4 = *(u64 *)(r8 + 0x18)
  *(u64 *)(r5 + 0x74) = r4
  *(u64 *)(r5 + 0x6c) = r3
  *(u64 *)(r5 + 0x64) = r2
  *(u64 *)(r5 + 0x5c) = r1
  w1 = *(u32 *)(r10 - 0x830)
  *(u8 *)(r5 + 0x84) = w1
  r0 = 0x0
  r1 = *(u64 *)(r10 - 0x818)
  if r1 == 0x0 goto jmp_e488

jmp_b218:
  r5 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r5 + 0x86) = 0x1
  r4 = *(u64 *)(r10 - 0x818)
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r5 + 0xa2) = r4
  *(u64 *)(r5 + 0x9a) = r3
  *(u64 *)(r5 + 0x92) = r2
  *(u64 *)(r5 + 0x8a) = r1
  goto jmp_e488

jmp_b278:
  r2 = *(u64 *)(r5 + 0x80)
  r4 = -0x24ff0040ee364287 ll
  if r2 != r4 goto jmp_b2d8
  r2 = *(u64 *)(r5 + 0x88)
  r4 = -0x5963083332d1b22c ll
  if r2 != r4 goto jmp_b2d8
  r2 = *(u64 *)(r5 + 0x90)
  r4 = 0xe13800e1 ll
  if r2 == r4 goto jmp_9448

jmp_b2d8:
  r2 = 0x400000000 ll
  *(u64 *)(r10 - 0x840) = r2
  r4 = *(u64 *)(r10 - 0x800)
  r2 = *(u64 *)(r4 + 0x8)
  r5 = *(u64 *)(r1 + 0x0)
  if r5 != r2 goto jmp_da18
  r2 = *(u64 *)(r4 + 0x10)
  r5 = *(u64 *)(r1 + 0x8)
  if r5 != r2 goto jmp_da18
  r2 = *(u64 *)(r4 + 0x18)
  r5 = *(u64 *)(r1 + 0x10)
  if r5 != r2 goto jmp_da18
  r2 = *(u64 *)(r4 + 0x20)
  r1 = *(u64 *)(r1 + 0x18)
  if r1 != r2 goto jmp_da18
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_c300
  r1 = *(u64 *)(r4 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_c2a0
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_c300
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_c300
  r1 = *(u64 *)(r4 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_c300
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_b408
  goto jmp_c300

jmp_b408:
  w1 = *(u8 *)(r4 + 0x5a)
  if w1 != 0x1 goto jmp_cd50
  w1 = 0x0
  *(u32 *)(r10 - 0x818) = w1
  r2 = *(u64 *)(r10 - 0x820)
  r2 <<= 0x3
  r1 = r10
  r1 += -0x810
  *(u64 *)(r10 - 0x830) = r1
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r1 = r2
  if r2 == 0x18 goto jmp_158f8
  w2 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0x820) = r2
  if r2 > 0xb goto jmp_d560
  r2 = *(u64 *)(r10 - 0x820)
  if w2 == 0x0 goto jmp_158f8
  r0 = r10
  r0 += -0x7f8
  r2 = *(u64 *)(r10 - 0x830)
  r2 += r1
  *(u64 *)(r10 - 0x830) = r2
  r1 = *(u64 *)(r10 - 0x820)
  r1 <<= 0x5
  *(u64 *)(r10 - 0x820) = r1
  w1 = 0x0
  *(u32 *)(r10 - 0x818) = w1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0x838) = r1
  goto jmp_157e8

jmp_b508:
  r3 <<= 0x1

jmp_b510:
  r4 = *(u64 *)(r10 - 0x808)
  r1 = *(u64 *)(r4 + 0x8)
  r2 = -0x7b7e5401a87764fa ll
  if r1 == r2 goto jmp_b548

jmp_b538:
  w7 = 0x0
  goto jmp_b5b0

jmp_b548:
  r1 = *(u64 *)(r4 + 0x10)
  r2 = 0x35c01846637f68fb ll
  if r1 != r2 goto jmp_b538
  r1 = *(u64 *)(r4 + 0x18)
  r2 = 0x553beb1adc39c4da ll
  if r1 != r2 goto jmp_b538
  w7 = 0x1
  r1 = *(u64 *)(r4 + 0x20)
  r2 = 0x100000000f0a098 ll
  if r1 != r2 goto jmp_b538

jmp_b5b0:
  r1 = str_0041 ll
  r2 = 0x19
  r9 = 0x3
  r5 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r5 + 0x50)
  if r5 != 0xa5 goto jmp_da40
  r5 = *(u64 *)(r10 - 0x828)
  w5 = *(u8 *)(r5 + 0xc4)
  if w5 > 0x2 goto jmp_da40
  r1 = 0x600000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w5 != 0x0 goto jmp_da18
  r1 = 0x0
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x48)
  if r1 < r3 goto jmp_da18
  r0 = r4
  r0 += 0x8
  r5 = *(u64 *)(r10 - 0x828)
  r5 += 0x58
  if w7 != 0x0 goto jmp_ce68
  r1 = str_008c ll
  r9 = 0x6
  r3 = *(u64 *)(r4 + 0x28)
  r7 = -0x6c5e9a281e0922fa ll
  if r3 != r7 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x30)
  r7 = -0x53861431b91e3427 ll
  if r3 != r7 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x38)
  r7 = -0x6ec8a4a0127a4be4 ll
  if r3 != r7 goto jmp_da40
  r3 = *(u64 *)(r4 + 0x40)
  r7 = -0x56ff00817a0a73c6 ll
  if r3 == r7 goto jmp_b710
  goto jmp_da40

jmp_b710:
  r1 = 0x200000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x52 goto jmp_da18
  w1 = *(u8 *)(r4 + 0x85)
  if w1 != 0x1 goto jmp_da18
  r7 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r7 + 0xc4) = 0x1
  r1 = *(u64 *)(r0 + 0x0)
  r2 = *(u64 *)(r0 + 0x8)
  r3 = *(u64 *)(r0 + 0x10)
  r4 = *(u64 *)(r0 + 0x18)
  *(u64 *)(r5 + 0x18) = r4
  *(u64 *)(r5 + 0x10) = r3
  *(u64 *)(r5 + 0x8) = r2
  *(u64 *)(r5 + 0x0) = r1
  r1 = *(u64 *)(r6 + 0x0)
  r2 = *(u64 *)(r6 + 0x8)
  r3 = *(u64 *)(r6 + 0x10)
  r4 = *(u64 *)(r6 + 0x18)
  *(u64 *)(r7 + 0x90) = r4
  *(u64 *)(r7 + 0x88) = r3
  *(u64 *)(r7 + 0x80) = r2
  *(u64 *)(r7 + 0x78) = r1
  r0 = 0x0
  goto jmp_e488

jmp_b7e8:
  r3 <<= 0x1

jmp_b7f0:
  r1 = str_0041 ll
  r2 = 0x19
  r9 = 0x3
  r4 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r4 + 0x50)
  if r4 != 0x52 goto jmp_da40
  r4 = 0x600000000 ll
  *(u64 *)(r10 - 0x840) = r4
  r4 = *(u64 *)(r10 - 0x828)
  w4 = *(u8 *)(r4 + 0x85)
  if w4 == 0x1 goto jmp_da18
  if w4 != 0x0 goto jmp_da40
  r1 = 0x0
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x820)
  if r1 < r3 goto jmp_da18
  r8 += 0xa
  r5 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r5 + 0x58) = 0x1
  *(u8 *)(r5 + 0x85) = 0x1
  r1 = *(u64 *)(r8 + 0x0)
  r2 = *(u64 *)(r8 + 0x8)
  r3 = *(u64 *)(r8 + 0x10)
  r4 = *(u64 *)(r8 + 0x18)
  *(u64 *)(r5 + 0x74) = r4
  *(u64 *)(r5 + 0x6c) = r3
  *(u64 *)(r5 + 0x64) = r2
  *(u64 *)(r5 + 0x5c) = r1
  w1 = *(u32 *)(r10 - 0x830)
  *(u8 *)(r5 + 0x84) = w1
  r0 = 0x0
  r1 = *(u64 *)(r10 - 0x818)
  if r1 == 0x0 goto jmp_e488
  goto jmp_b218

jmp_b910:
  r1 = *(u64 *)(r0 + 0x80)
  r0 = -0x24ff0040ee364287 ll
  if r1 != r0 goto jmp_b980
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x88)
  r0 = -0x5963083332d1b22c ll
  if r1 != r0 goto jmp_b980
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x90)
  r0 = 0xe13800e1 ll
  if r1 == r0 goto jmp_e0d0

jmp_b980:
  r1 = r10
  r1 += -0x7f8
  r0 = *(u64 *)(r10 - 0x800)
  r9 = *(u64 *)(r10 - 0x828)
  w6 = *(u8 *)(r9 + 0xa0)
  if w6 == 0x1 goto jmp_bbd8
  r6 = *(u64 *)(r0 + 0x8)

jmp_b9b8:
  r7 = 0x400000000 ll
  *(u64 *)(r10 - 0x840) = r7
  if r2 != r6 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x10)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x80)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x88)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x90)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_e0a0
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_e040
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_e0a0
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_e0a0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_e0a0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_bae8
  goto jmp_e0a0

jmp_bae8:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_ce38
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_157b0
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_157b0
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_15668

jmp_bbd8:
  r6 = *(u64 *)(r0 + 0x8)
  r7 = *(u64 *)(r9 + 0xa4)
  if r6 != r7 goto jmp_b9b8
  r7 = *(u64 *)(r9 + 0xac)
  r8 = *(u64 *)(r0 + 0x10)
  if r8 != r7 goto jmp_b9b8
  r7 = *(u64 *)(r9 + 0xb4)
  r8 = *(u64 *)(r0 + 0x18)
  if r8 != r7 goto jmp_b9b8
  r7 = *(u64 *)(r9 + 0xbc)
  r8 = *(u64 *)(r0 + 0x20)
  if r8 != r7 goto jmp_b9b8
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_e4f0
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_e490
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_e4f0
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_e4f0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_e4f0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_bce8
  goto jmp_e4f0

jmp_bce8:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_d410
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_15630
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_15630
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_154e8

jmp_bdd8:
  r1 = *(u64 *)(r0 + 0x80)
  r0 = -0x24ff0040ee364287 ll
  if r1 != r0 goto jmp_be48
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x88)
  r0 = -0x5963083332d1b22c ll
  if r1 != r0 goto jmp_be48
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x90)
  r0 = 0xe13800e1 ll
  if r1 == r0 goto jmp_e2d8

jmp_be48:
  r1 = r10
  r1 += -0x7f8
  r0 = *(u64 *)(r10 - 0x800)
  r9 = *(u64 *)(r10 - 0x828)
  w6 = *(u8 *)(r9 + 0xa0)
  if w6 == 0x1 goto jmp_c0a0
  r6 = *(u64 *)(r0 + 0x8)

jmp_be80:
  r7 = 0x400000000 ll
  *(u64 *)(r10 - 0x840) = r7
  if r2 != r6 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x10)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x80)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x88)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x90)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_e2a8
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_e248
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_e2a8
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_e2a8
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_e2a8
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_bfb0
  goto jmp_e2a8

jmp_bfb0:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_ce50
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_16ba0
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_16ba0
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_16a58

jmp_c0a0:
  r6 = *(u64 *)(r0 + 0x8)
  r7 = *(u64 *)(r9 + 0xa4)
  if r6 != r7 goto jmp_be80
  r7 = *(u64 *)(r9 + 0xac)
  r8 = *(u64 *)(r0 + 0x10)
  if r8 != r7 goto jmp_be80
  r7 = *(u64 *)(r9 + 0xb4)
  r8 = *(u64 *)(r0 + 0x18)
  if r8 != r7 goto jmp_be80
  r7 = *(u64 *)(r9 + 0xbc)
  r8 = *(u64 *)(r0 + 0x20)
  if r8 != r7 goto jmp_be80
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_e5f0
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_e590
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_e5f0
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_e5f0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_e5f0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_c1b0
  goto jmp_e5f0

jmp_c1b0:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_d428
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_16a20
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_16a20
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_168d8

jmp_c2a0:
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_c300
  r1 = *(u64 *)(r4 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_c300
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_b408

jmp_c300:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w4 = *(u8 *)(r4 + 0x1)
  if w4 == 0x0 goto jmp_da40
  goto jmp_94e8

jmp_c338:
  r2 <<= 0x3
  r3 = r10
  r3 += -0x810
  r3 += r2
  r2 = *(u64 *)(r3 + 0x0)
  *(u64 *)(r10 - 0x808) = r2
  r1 += 0x8
  goto jmp_8c38

jmp_c378:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  goto jmp_95e0

jmp_c3b8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x10) = r3
  r1 += 0x8
  goto jmp_8c38

jmp_c3f8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  goto jmp_91d8

jmp_c438:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x10) = r3
  r1 += 0x8
  goto jmp_9210

jmp_c478:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x18) = r3
  r1 += 0x8
  goto jmp_9248

jmp_c4b8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x20) = r3
  r1 += 0x8
  goto jmp_8c38

jmp_c4f8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  goto jmp_9640

jmp_c538:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x10) = r3
  r1 += 0x8
  goto jmp_9678

jmp_c578:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x18) = r3
  r1 += 0x8
  goto jmp_8c38

jmp_c5b8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0x810
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  goto jmp_8c38

jmp_c5f8:
  r2 = *(u64 *)(r0 + 0x8)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0xa4)
  if r6 != r2 goto jmp_c690
  r7 = *(u64 *)(r0 + 0x10)
  r2 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r2 + 0xac)
  r2 = r6
  if r8 != r7 goto jmp_c690
  r7 = *(u64 *)(r0 + 0x18)
  r2 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r2 + 0xb4)
  r2 = r6
  if r8 != r7 goto jmp_c690
  r7 = *(u64 *)(r0 + 0x20)
  r2 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r2 + 0xbc)
  r2 = r6
  if r8 == r7 goto jmp_cad0

jmp_c690:
  r6 = 0x400000000 ll
  *(u64 *)(r10 - 0x840) = r6
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x78)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x10)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x80)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x88)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x90)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_e6f0
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_e690
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_e6f0
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_e6f0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_e6f0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_c7d0
  goto jmp_e6f0

jmp_c7d0:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_ea78
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_151d0
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_151d0
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_15088

jmp_c8c0:
  r5 = *(u64 *)(r1 + 0x5220)
  r0 = *(u64 *)(r1 + 0xac)
  if r0 != r5 goto jmp_c938
  r6 = *(u64 *)(r1 + 0x5228)
  r7 = *(u64 *)(r1 + 0xb4)
  r5 = r0
  if r7 != r6 goto jmp_c938
  r6 = *(u64 *)(r1 + 0x5230)
  r7 = *(u64 *)(r1 + 0xbc)
  r5 = r0
  if r7 != r6 goto jmp_c938
  r6 = *(u64 *)(r1 + 0x5238)
  r7 = *(u64 *)(r1 + 0xc4)
  r5 = r0
  if r7 == r6 goto jmp_cc70

jmp_c938:
  r6 = 0x400000000 ll
  r0 = *(u64 *)(r1 + 0x80)
  if r0 != r5 goto jmp_d458
  r5 = *(u64 *)(r1 + 0x5228)
  r0 = *(u64 *)(r1 + 0x88)
  if r0 != r5 goto jmp_d458
  r5 = *(u64 *)(r1 + 0x5230)
  r0 = *(u64 *)(r1 + 0x90)
  if r0 != r5 goto jmp_d458
  r5 = *(u64 *)(r1 + 0x5238)
  r0 = *(u64 *)(r1 + 0x98)
  if r0 != r5 goto jmp_d458
  if r4 != 0x163 goto jmp_d1c0
  r4 = *(u64 *)(r1 + 0x5240)
  r5 = -0x21708a111e0922fa ll
  if r4 == r5 goto jmp_d160
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_d1c0
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_d1c0
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_d1c0
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x56ff00817a0a73c6 ll
  if r4 == r5 goto jmp_ca48
  goto jmp_d1c0

jmp_ca48:
  w4 = *(u8 *)(r1 + 0x5272)
  if w4 != 0x1 goto jmp_d440
  r6 = 0x7
  w4 = *(u8 *)(r1 + 0x5270)
  if w4 == 0x0 goto jmp_d1d8
  goto jmp_d458

jmp_ca78:
  r1 = 0x1100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w5 == 0x2 goto jmp_da18
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r1 + 0x98)
  if r5 < r4 goto jmp_da18
  goto jmp_8fa8

jmp_cad0:
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_e858
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_e7f8
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_e858
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_e858
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_e858
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_cb80
  goto jmp_e858

jmp_cb80:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_d8b0
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_15350
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_15350
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_15208

jmp_cc70:
  if r4 != 0x163 goto jmp_cf88
  r4 = *(u64 *)(r1 + 0x5240)
  r5 = -0x21708a111e0922fa ll
  if r4 == r5 goto jmp_cf28
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_cf88
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_cf88
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_cf88
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x56ff00817a0a73c6 ll
  if r4 == r5 goto jmp_cd18
  goto jmp_cf88

jmp_cd18:
  w4 = *(u8 *)(r1 + 0x5272)
  if w4 != 0x1 goto jmp_d8c0
  w7 = 0x0
  w6 = 0x7
  w4 = *(u8 *)(r1 + 0x5270)
  if w4 == 0x0 goto jmp_cfa8
  goto jmp_d118

jmp_cd50:
  if w1 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_cd60:
  r7 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r7 + 0xc4) = 0x1
  r2 = *(u64 *)(r0 + 0x0)
  r4 = *(u64 *)(r0 + 0x8)
  r6 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r0 + 0x18)
  *(u64 *)(r5 + 0x18) = r0
  *(u64 *)(r5 + 0x10) = r6
  *(u64 *)(r5 + 0x8) = r4
  *(u64 *)(r5 + 0x0) = r2
  r0 = *(u64 *)(r10 - 0x818)
  r2 = *(u64 *)(r0 + 0x0)
  r4 = *(u64 *)(r0 + 0x8)
  r5 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r0 + 0x18)
  *(u64 *)(r7 + 0x90) = r0
  *(u64 *)(r7 + 0x88) = r5
  *(u64 *)(r7 + 0x80) = r4
  *(u64 *)(r7 + 0x78) = r2
  *(u64 *)(r7 + 0xc9) = r3
  r1 -= r3
  *(u64 *)(r7 + 0x98) = r1
  *(u8 *)(r7 + 0xc5) = 0x1
  r0 = 0x0
  goto jmp_e488

jmp_ce28:
  if w1 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_ce38:
  r9 = 0x9
  if w2 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_ce50:
  r9 = 0x9
  if w2 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_ce68:
  r8 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r8 + 0xc4) = 0x1
  r2 = *(u64 *)(r0 + 0x0)
  r4 = *(u64 *)(r0 + 0x8)
  r7 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r0 + 0x18)
  *(u64 *)(r5 + 0x18) = r0
  *(u64 *)(r5 + 0x10) = r7
  *(u64 *)(r5 + 0x8) = r4
  *(u64 *)(r5 + 0x0) = r2
  r2 = *(u64 *)(r6 + 0x0)
  r4 = *(u64 *)(r6 + 0x8)
  r5 = *(u64 *)(r6 + 0x10)
  r0 = *(u64 *)(r6 + 0x18)
  *(u64 *)(r8 + 0x90) = r0
  *(u64 *)(r8 + 0x88) = r5
  *(u64 *)(r8 + 0x80) = r4
  *(u64 *)(r8 + 0x78) = r2
  *(u64 *)(r8 + 0xc9) = r3
  r1 -= r3
  *(u64 *)(r8 + 0x98) = r1
  *(u8 *)(r8 + 0xc5) = 0x1
  r0 = 0x0
  goto jmp_e488

jmp_cf28:
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x2532931b43a2bde8 ll
  if r4 != r5 goto jmp_cf88
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = 0x270db9834dfc1ab6 ll
  if r4 != r5 goto jmp_cf88
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x3745e27d7064202 ll
  if r4 == r5 goto jmp_cd18

jmp_cf88:
  w7 = 0x0
  w6 = 0x7
  w4 = *(u8 *)(r1 + 0x5219)
  if w4 == 0x0 goto jmp_d118

jmp_cfa8:
  r4 = *(u64 *)(r1 + 0xd9)
  w6 = 0x0
  w7 = 0x1
  if r4 < r2 goto jmp_d118
  r5 = r4
  r5 -= r2
  *(u64 *)(r1 + 0xd9) = r5
  if r4 != r2 goto jmp_cff0
  *(u8 *)(r1 + 0xa8) = 0x0

jmp_cff0:
  if r2 != 0x0 goto jmp_d1e0

jmp_cff8:
  w7 = 0x0
  w6 = 0x6
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_d118
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_d118
  r2 = *(u64 *)(r1 + 0x40)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_d118
  r2 = *(u64 *)(r1 + 0x48)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_d090
  goto jmp_d118

jmp_d090:
  r2 = *(u64 *)(r1 + 0x2938)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_d118
  r2 = *(u64 *)(r1 + 0x2940)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_d118
  r2 = *(u64 *)(r1 + 0x2948)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_d118
  r0 = 0x0
  r1 = *(u64 *)(r1 + 0x2950)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_e488

jmp_d118:
  w1 = w6
  w2 = w7
  call fn_16f08
  r1 = r0
  call sol_log_
  w1 = w6
  w2 = w7
  call fn_16bc8
  goto jmp_e488

jmp_d160:
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x2532931b43a2bde8 ll
  if r4 != r5 goto jmp_d1c0
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = 0x270db9834dfc1ab6 ll
  if r4 != r5 goto jmp_d1c0
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x3745e27d7064202 ll
  if r4 == r5 goto jmp_ca48

jmp_d1c0:
  r6 = 0x7
  w4 = *(u8 *)(r1 + 0x5219)
  if w4 == 0x0 goto jmp_d458

jmp_d1d8:
  if r2 == 0x0 goto jmp_cff8

jmp_d1e0:
  r3 -= r2
  *(u64 *)(r1 + 0xa0) = r3
  r3 = *(u64 *)(r1 + 0x29a8)
  r3 += r2
  *(u64 *)(r1 + 0x29a8) = r3
  r0 = 0x0
  w3 = *(u8 *)(r1 + 0xcd)
  if w3 != 0x1 goto jmp_e488
  r3 = *(u64 *)(r1 + 0x50)
  r3 -= r2
  *(u64 *)(r1 + 0x50) = r3
  r3 = *(u64 *)(r1 + 0x2958)
  r3 += r2
  *(u64 *)(r1 + 0x2958) = r3
  goto jmp_e488

jmp_d258:
  r5 = *(u64 *)(r1 + 0x7ad8)
  r0 = *(u64 *)(r1 + 0xac)
  if r0 != r5 goto jmp_d2d0
  r6 = *(u64 *)(r1 + 0x7ae0)
  r7 = *(u64 *)(r1 + 0xb4)
  r5 = r0
  if r7 != r6 goto jmp_d2d0
  r6 = *(u64 *)(r1 + 0x7ae8)
  r7 = *(u64 *)(r1 + 0xbc)
  r5 = r0
  if r7 != r6 goto jmp_d2d0
  r6 = *(u64 *)(r1 + 0x7af0)
  r7 = *(u64 *)(r1 + 0xc4)
  r5 = r0
  if r7 == r6 goto jmp_d480

jmp_d2d0:
  r6 = 0x400000000 ll
  r0 = *(u64 *)(r1 + 0x80)
  if r0 != r5 goto jmp_d910
  r5 = *(u64 *)(r1 + 0x7ae0)
  r0 = *(u64 *)(r1 + 0x88)
  if r0 != r5 goto jmp_d910
  r5 = *(u64 *)(r1 + 0x7ae8)
  r0 = *(u64 *)(r1 + 0x90)
  if r0 != r5 goto jmp_d910
  r5 = *(u64 *)(r1 + 0x7af0)
  r0 = *(u64 *)(r1 + 0x98)
  if r0 != r5 goto jmp_d910
  if r4 != 0x163 goto jmp_d800
  r4 = *(u64 *)(r1 + 0x7af8)
  r5 = -0x21708a111e0922fa ll
  if r4 == r5 goto jmp_d7a0
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_d800
  r4 = *(u64 *)(r1 + 0x7b00)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_d800
  r4 = *(u64 *)(r1 + 0x7b08)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_d800
  r4 = *(u64 *)(r1 + 0x7b10)
  r5 = -0x56ff00817a0a73c6 ll
  if r4 == r5 goto jmp_d3e0
  goto jmp_d800

jmp_d3e0:
  w4 = *(u8 *)(r1 + 0x7b2a)
  if w4 != 0x1 goto jmp_d8f8
  r6 = 0x7
  w4 = *(u8 *)(r1 + 0x7b28)
  if w4 == 0x0 goto jmp_d818
  goto jmp_d910

jmp_d410:
  r9 = 0x9
  if w2 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_d428:
  r9 = 0x9
  if w2 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_d440:
  r6 = 0x9
  if w4 == 0x0 goto jmp_d458
  r6 = 0x3

jmp_d458:
  r7 = r6
  r7 >>= 0x20
  r0 = 0x0
  if w6 == -0x1 goto jmp_e488
  goto jmp_d118

jmp_d480:
  if r4 != 0x163 goto jmp_d5f0
  r4 = *(u64 *)(r1 + 0x7af8)
  r5 = -0x21708a111e0922fa ll
  if r4 == r5 goto jmp_d590
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_d5f0
  r4 = *(u64 *)(r1 + 0x7b00)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_d5f0
  r4 = *(u64 *)(r1 + 0x7b08)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_d5f0
  r4 = *(u64 *)(r1 + 0x7b10)
  r5 = -0x56ff00817a0a73c6 ll
  if r4 == r5 goto jmp_d528
  goto jmp_d5f0

jmp_d528:
  w4 = *(u8 *)(r1 + 0x7b2a)
  if w4 != 0x1 goto jmp_d938
  w7 = 0x0
  w6 = 0x7
  w4 = *(u8 *)(r1 + 0x7b28)
  if w4 == 0x0 goto jmp_d610
  goto jmp_d798

jmp_d560:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x820)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_d590:
  r4 = *(u64 *)(r1 + 0x7b00)
  r5 = -0x2532931b43a2bde8 ll
  if r4 != r5 goto jmp_d5f0
  r4 = *(u64 *)(r1 + 0x7b08)
  r5 = 0x270db9834dfc1ab6 ll
  if r4 != r5 goto jmp_d5f0
  r4 = *(u64 *)(r1 + 0x7b10)
  r5 = -0x3745e27d7064202 ll
  if r4 == r5 goto jmp_d528

jmp_d5f0:
  w7 = 0x0
  w6 = 0x7
  w4 = *(u8 *)(r1 + 0x7ad1)
  if w4 == 0x0 goto jmp_d798

jmp_d610:
  r4 = *(u64 *)(r1 + 0xd9)
  w6 = 0x0
  w7 = 0x1
  r2 = *(u64 *)(r10 - 0x818)
  if r4 < r2 goto jmp_d798
  r5 = r4
  r2 = *(u64 *)(r10 - 0x818)
  r5 -= r2
  *(u64 *)(r1 + 0xd9) = r5
  if r4 != r2 goto jmp_d668
  *(u8 *)(r1 + 0xa8) = 0x0

jmp_d668:
  r2 = *(u64 *)(r10 - 0x818)
  if r2 != 0x0 goto jmp_d828

jmp_d678:
  w7 = 0x0
  w6 = 0x6
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_d798
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_d798
  r2 = *(u64 *)(r1 + 0x40)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_d798
  r2 = *(u64 *)(r1 + 0x48)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_d710
  goto jmp_d798

jmp_d710:
  r2 = *(u64 *)(r1 + 0x51f0)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_d798
  r2 = *(u64 *)(r1 + 0x51f8)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_d798
  r2 = *(u64 *)(r1 + 0x5200)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_d798
  r0 = 0x0
  r1 = *(u64 *)(r1 + 0x5208)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_e488

jmp_d798:
  goto jmp_d118

jmp_d7a0:
  r4 = *(u64 *)(r1 + 0x7b00)
  r5 = -0x2532931b43a2bde8 ll
  if r4 != r5 goto jmp_d800
  r4 = *(u64 *)(r1 + 0x7b08)
  r5 = 0x270db9834dfc1ab6 ll
  if r4 != r5 goto jmp_d800
  r4 = *(u64 *)(r1 + 0x7b10)
  r5 = -0x3745e27d7064202 ll
  if r4 == r5 goto jmp_d3e0

jmp_d800:
  r6 = 0x7
  w4 = *(u8 *)(r1 + 0x7ad1)
  if w4 == 0x0 goto jmp_d910

jmp_d818:
  r2 = *(u64 *)(r10 - 0x818)
  if r2 == 0x0 goto jmp_d678

jmp_d828:
  r2 = *(u64 *)(r10 - 0x818)
  r3 -= r2
  *(u64 *)(r1 + 0xa0) = r3
  r3 = *(u64 *)(r1 + 0x5260)
  r3 += r2
  *(u64 *)(r1 + 0x5260) = r3
  r0 = 0x0
  w3 = *(u8 *)(r1 + 0xcd)
  if w3 != 0x1 goto jmp_e488
  r3 = *(u64 *)(r1 + 0x50)
  r2 = *(u64 *)(r10 - 0x818)
  r3 -= r2
  *(u64 *)(r1 + 0x50) = r3
  r3 = *(u64 *)(r1 + 0x5210)
  r3 += r2
  *(u64 *)(r1 + 0x5210) = r3
  goto jmp_e488

jmp_d8b0:
  if w2 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_d8c0:
  r6 = 0x9
  if w4 == 0x0 goto jmp_d8d8
  r6 = 0x3

jmp_d8d8:
  w7 = 0x0
  r0 = 0x0
  if w6 == -0x1 goto jmp_e488
  goto jmp_d118

jmp_d8f8:
  r6 = 0x9
  if w4 == 0x0 goto jmp_d910
  r6 = 0x3

jmp_d910:
  r7 = r6
  r7 >>= 0x20
  r0 = 0x0
  if w6 == -0x1 goto jmp_e488
  goto jmp_d798

jmp_d938:
  r6 = 0x9
  if w4 == 0x0 goto jmp_d950
  r6 = 0x3

jmp_d950:
  w7 = 0x0
  r0 = 0x0
  if w6 == -0x1 goto jmp_e488
  goto jmp_d798

jmp_d970:
  r1 = str_00df ll
  r2 = 0x1b
  r9 = 0xa
  r3 = *(u64 *)(r10 - 0x820)
  if r3 == 0x0 goto jmp_da40
  r1 = str_0041 ll
  r2 = 0x19
  r9 = 0x3
  r3 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r3 + 0x50)
  if r3 != 0xa5 goto jmp_da40
  r3 = *(u64 *)(r10 - 0x828)
  w3 = *(u8 *)(r3 + 0xc4)
  if w3 > 0x2 goto jmp_da40
  r1 = 0x600000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r0 = 0x0
  if w3 == 0x0 goto jmp_e488

jmp_da18:
  r9 = *(u64 *)(r10 - 0x840)
  r1 = r9
  r1 >>= 0x20
  call fn_17350
  r1 = r0

jmp_da40:
  call sol_log_

jmp_da48:
  r0 = 0x0
  if w9 == -0x1 goto jmp_e488
  if w9 s> 0xc goto jmp_daa8
  if w9 s> 0x5 goto jmp_dae0
  if w9 s> 0x2 goto jmp_db90
  if w9 == 0x0 goto jmp_dc50
  r0 = 0x200000000 ll
  if w9 == 0x1 goto jmp_e488
  r0 = 0x300000000 ll
  goto jmp_e488

jmp_daa8:
  if w9 s> 0x12 goto jmp_db10
  if w9 s> 0xf goto jmp_dbb8
  if w9 == 0xd goto jmp_dc80
  if w9 == 0xe goto jmp_dd58
  r0 = 0x1000000000 ll
  goto jmp_e488

jmp_dae0:
  if w9 s> 0x8 goto jmp_db40
  if w9 == 0x6 goto jmp_dc20
  if w9 == 0x7 goto jmp_dcc8
  r0 = 0x900000000 ll
  goto jmp_e488

jmp_db10:
  if w9 s> 0x15 goto jmp_db68
  if w9 == 0x13 goto jmp_dc38
  if w9 == 0x14 goto jmp_dce0
  r0 = 0x1600000000 ll
  goto jmp_e488

jmp_db40:
  if w9 s> 0xa goto jmp_dbe0
  if w9 == 0x9 goto jmp_dcf8
  r0 = 0xb00000000 ll
  goto jmp_e488

jmp_db68:
  if w9 s> 0x17 goto jmp_dc00
  if w9 == 0x16 goto jmp_dd10
  r0 = 0x1800000000 ll
  goto jmp_e488

jmp_db90:
  if w9 == 0x3 goto jmp_dc98
  if w9 == 0x4 goto jmp_dd70
  r0 = 0x600000000 ll
  goto jmp_e488

jmp_dbb8:
  if w9 == 0x10 goto jmp_dcb0
  if w9 == 0x11 goto jmp_dd88
  r0 = 0x1300000000 ll
  goto jmp_e488

jmp_dbe0:
  if w9 == 0xb goto jmp_dd28
  r0 = 0xd00000000 ll
  goto jmp_e488

jmp_dc00:
  if w9 == 0x18 goto jmp_dd40
  r0 = 0x1a00000000 ll
  goto jmp_e488

jmp_dc20:
  r0 = 0x700000000 ll
  goto jmp_e488

jmp_dc38:
  r0 = 0x1400000000 ll
  goto jmp_e488

jmp_dc50:
  r9 >>= 0x20
  r0 = 0x100000000 ll
  if r9 == 0x0 goto jmp_e488
  r0 = r9
  goto jmp_e488

jmp_dc80:
  r0 = 0xe00000000 ll
  goto jmp_e488

jmp_dc98:
  r0 = 0x400000000 ll
  goto jmp_e488

jmp_dcb0:
  r0 = 0x1100000000 ll
  goto jmp_e488

jmp_dcc8:
  r0 = 0x800000000 ll
  goto jmp_e488

jmp_dce0:
  r0 = 0x1500000000 ll
  goto jmp_e488

jmp_dcf8:
  r0 = 0xa00000000 ll
  goto jmp_e488

jmp_dd10:
  r0 = 0x1700000000 ll
  goto jmp_e488

jmp_dd28:
  r0 = 0xc00000000 ll
  goto jmp_e488

jmp_dd40:
  r0 = 0x1900000000 ll
  goto jmp_e488

jmp_dd58:
  r0 = 0xf00000000 ll
  goto jmp_e488

jmp_dd70:
  r0 = 0x500000000 ll
  goto jmp_e488

jmp_dd88:
  r0 = 0x1200000000 ll
  goto jmp_e488

jmp_dda0:
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_de00
  r1 = *(u64 *)(r5 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_de00
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_9cf0

jmp_de00:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w5 = *(u8 *)(r5 + 0x1)
  if w5 == 0x0 goto jmp_da40

jmp_de30:
  if r4 != 0x0 goto jmp_dfa8
  r1 = str_008c ll
  r9 = 0x6
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  r2 = 0x19
  if r4 == r5 goto jmp_df18
  goto jmp_da40

jmp_df18:
  r4 = *(u64 *)(r3 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_da40
  r0 = 0x0
  r3 = *(u64 *)(r3 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r3 == r4 goto jmp_e488
  goto jmp_da40

jmp_dfa8:
  r1 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r1 + 0x7c)
  r1 = r5
  r1 += r4
  w2 = 0x1
  if r1 < r5 goto jmp_dfe0
  w2 = 0x0

jmp_dfe0:
  r5 = 0xe00000000 ll
  *(u64 *)(r10 - 0x840) = r5
  w2 &= 0x1
  if w2 != 0x0 goto jmp_da18
  r2 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r2 + 0x7c) = r1
  r1 = *(u64 *)(r3 + 0x98)
  r1 += r4
  *(u64 *)(r3 + 0x98) = r1
  r0 = 0x0
  goto jmp_e488

jmp_e040:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_e0a0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_e0a0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_bae8

jmp_e0a0:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_e0d0:
  if r4 != 0x0 goto jmp_e450
  r1 = str_008c ll
  r9 = 0x6
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  r2 = 0x19
  if r4 == r5 goto jmp_e1b8
  goto jmp_da40

jmp_e1b8:
  r4 = *(u64 *)(r3 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_da40
  r0 = 0x0
  r3 = *(u64 *)(r3 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r3 == r4 goto jmp_e488
  goto jmp_da40

jmp_e248:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_e2a8
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_e2a8
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_bfb0

jmp_e2a8:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_e2d8:
  if r4 != 0x0 goto jmp_e450
  r1 = str_008c ll
  r9 = 0x6
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  r2 = 0x19
  if r4 == r5 goto jmp_e3c0
  goto jmp_da40

jmp_e3c0:
  r4 = *(u64 *)(r3 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_da40
  r0 = 0x0
  r3 = *(u64 *)(r3 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r3 == r4 goto jmp_e488
  goto jmp_da40

jmp_e450:
  r5 -= r4
  r1 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r1 + 0x98) = r5
  r1 = *(u64 *)(r3 + 0x7c)
  r1 -= r4
  *(u64 *)(r3 + 0x7c) = r1
  r0 = 0x0

jmp_e488:
  exit

jmp_e490:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_e4f0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_e4f0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_bce8

jmp_e4f0:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_e520:
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0xd1)
  r2 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r2
  if r1 < r4 goto jmp_da18
  r2 = r1
  r2 -= r4
  r0 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r0 + 0xd1) = r2
  if r1 != r4 goto jmp_e0d0
  r1 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r1 + 0xa0) = 0x0
  goto jmp_e0d0

jmp_e590:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_e5f0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_e5f0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_c1b0

jmp_e5f0:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_e620:
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0xd1)
  r2 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r2
  if r1 < r4 goto jmp_da18
  r2 = r1
  r2 -= r4
  r0 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r0 + 0xd1) = r2
  if r1 != r4 goto jmp_e2d8
  r1 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r1 + 0xa0) = 0x0
  goto jmp_e2d8

jmp_e690:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_e6f0
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_e6f0
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_c7d0

jmp_e6f0:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_e720:
  if r4 == 0x0 goto jmp_e908
  r1 = *(u64 *)(r10 - 0x828)
  if r1 == r3 goto jmp_e908

jmp_e738:
  r5 -= r4
  r1 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r1 + 0x98) = r5
  r5 = *(u64 *)(r3 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r5 != 0xa5 goto jmp_da40
  r1 = *(u64 *)(r3 + 0x98)
  r1 += r4
  *(u64 *)(r3 + 0x98) = r1
  r0 = 0x0
  r1 = *(u64 *)(r10 - 0x828)
  w1 = *(u8 *)(r1 + 0xc5)
  if w1 != 0x1 goto jmp_e488

jmp_e7b8:
  r2 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r2 + 0x48)
  r1 -= r4
  *(u64 *)(r2 + 0x48) = r1
  r1 = *(u64 *)(r3 + 0x48)
  r1 += r4
  *(u64 *)(r3 + 0x48) = r1
  goto jmp_e488

jmp_e7f8:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_e858
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_e858
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_cb80

jmp_e858:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_e888:
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0xd1)
  if r1 < r4 goto jmp_da18
  r2 = *(u64 *)(r10 - 0x828)
  if r2 == r3 goto jmp_e908
  r2 = r1
  r2 -= r4
  r0 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r0 + 0xd1) = r2
  if r1 != r4 goto jmp_e900
  r1 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r1 + 0xa0) = 0x0

jmp_e900:
  if r4 != 0x0 goto jmp_e738

jmp_e908:
  r1 = str_008c ll
  r9 = 0x6
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  r2 = 0x19
  if r4 == r5 goto jmp_e9e8
  goto jmp_da40

jmp_e9e8:
  r4 = *(u64 *)(r3 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_da40
  r0 = 0x0
  r3 = *(u64 *)(r3 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r3 == r4 goto jmp_e488
  goto jmp_da40

jmp_ea78:
  if w2 == 0x0 goto jmp_14b90

jmp_ea80:
  r9 = 0x3
  goto jmp_14b90

jmp_ea90:
  r1 = str_008c ll
  r2 = 0x19
  r9 = 0x6
  r3 = *(u64 *)(r6 + 0x0)
  r0 = *(u64 *)(r3 + 0x28)
  r7 = -0x6c5e9a281e0922fa ll
  if r0 != r7 goto jmp_da40
  r0 = *(u64 *)(r3 + 0x30)
  r7 = -0x53861431b91e3427 ll
  if r0 != r7 goto jmp_da40
  r0 = *(u64 *)(r3 + 0x38)
  r7 = -0x6ec8a4a0127a4be4 ll
  if r0 != r7 goto jmp_da40
  r3 = *(u64 *)(r3 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r3 != r0 goto jmp_da40
  r3 = *(u64 *)(r6 + 0x8)
  r0 = *(u64 *)(r3 + 0x28)
  r7 = -0x6c5e9a281e0922fa ll
  if r0 != r7 goto jmp_da40
  r0 = *(u64 *)(r3 + 0x30)
  r7 = -0x53861431b91e3427 ll
  if r0 != r7 goto jmp_da40
  r0 = *(u64 *)(r3 + 0x38)
  r7 = -0x6ec8a4a0127a4be4 ll
  if r0 != r7 goto jmp_da40
  r3 = *(u64 *)(r3 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r3 == r0 goto jmp_ebc8
  goto jmp_da40

jmp_ebc8:
  r3 = r8
  r3 += 0x3
  if w5 s> 0xb goto jmp_ede0
  if w5 s> 0x6 goto jmp_ef50
  if w5 == 0x0 goto jmp_f398
  if w5 == 0x1 goto jmp_fa88
  if w5 == 0x3 goto jmp_ec08
  goto jmp_f1a8

jmp_ec08:
  r0 = 0xc00000000 ll
  if w4 < 0x9 goto jmp_f1c8
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 > 0x2 goto jmp_ec40
  goto jmp_f1c8

jmp_ec40:
  r1 = *(u64 *)(r10 - 0x830)
  r4 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r4 + 0x50)
  r0 = 0x3
  if r1 == 0xa5 goto jmp_ec70
  goto jmp_f1c8

jmp_ec70:
  w2 = *(u8 *)(r4 + 0xc4)
  if w2 > 0x2 goto jmp_f1c8
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8
  r3 = *(u64 *)(r3 + 0x0)
  r1 = *(u64 *)(r10 - 0x830)
  r1 = *(u64 *)(r1 + 0x8)
  if r4 == r1 goto jmp_122d8
  r5 = *(u64 *)(r1 + 0x50)
  r0 = 0x3
  if r5 != 0xa5 goto jmp_f1c8
  w5 = *(u8 *)(r1 + 0xc4)
  if w5 > 0x2 goto jmp_f1c8
  r0 = 0x9
  if w5 == 0x0 goto jmp_f1c8
  r0 = 0x1100000000 ll
  if w2 == 0x2 goto jmp_f1c8
  if w5 == 0x2 goto jmp_f1c8
  r0 = 0x100000000 ll
  r5 = *(u64 *)(r4 + 0x98)
  if r5 < r3 goto jmp_f1c8
  r0 = 0x300000000 ll
  r2 = *(u64 *)(r1 + 0x58)
  r6 = *(u64 *)(r4 + 0x58)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r1 + 0x60)
  r6 = *(u64 *)(r4 + 0x60)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r1 + 0x68)
  r6 = *(u64 *)(r4 + 0x68)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r1 + 0x70)
  r6 = *(u64 *)(r4 + 0x70)
  if r6 != r2 goto jmp_f1c8

jmp_ed98:
  r2 = *(u64 *)(r10 - 0x830)
  r0 = r2
  r0 += 0x18
  *(u64 *)(r10 - 0x848) = r0
  r6 = *(u64 *)(r2 + 0x10)
  w2 = *(u8 *)(r4 + 0xa0)
  if w2 == 0x1 goto jmp_11f98
  r2 = *(u64 *)(r6 + 0x8)
  goto jmp_12020

jmp_ede0:
  if w5 s> 0x11 goto jmp_f190
  if w5 == 0xc goto jmp_14880
  if w5 == 0xf goto jmp_fc98
  if w5 == 0x11 goto jmp_ee08
  goto jmp_f1a8

jmp_ee08:
  r9 = 0x0
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 == 0x0 goto jmp_14b88
  r0 = 0x6
  r1 = *(u64 *)(r10 - 0x830)
  r6 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r6 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_14b88
  r1 = *(u64 *)(r6 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_14b88
  r1 = *(u64 *)(r6 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_14b88
  r1 = *(u64 *)(r6 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_14b88
  r1 = *(u64 *)(r10 - 0x828)
  if w1 != 0x1 goto jmp_10448
  r1 = *(u64 *)(r10 - 0x850)
  *(u32 *)(r1 + 0x3) = 0x0
  *(u32 *)(r1 + 0x0) = 0x0
  r2 = r10
  r2 += -0x18
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_10b58
  r9 = *(u64 *)(r10 - 0x858)
  r9 <<= 0x20
  r0 = r9
  r0 |= 0x10
  goto jmp_11588

jmp_ef50:
  if w5 == 0x7 goto jmp_f608
  if w5 == 0x8 goto jmp_fec8
  if w5 == 0x9 goto jmp_ef70
  goto jmp_f1a8

jmp_ef70:
  r0 = 0xa
  r9 = 0x0
  r1 = *(u64 *)(r10 - 0x828)
  if w1 < 0x3 goto jmp_14b88
  r1 = *(u64 *)(r10 - 0x830)
  r3 = *(u64 *)(r1 + 0x8)
  r1 = *(u64 *)(r1 + 0x0)
  r0 = 0x3
  if r1 == r3 goto jmp_14b88
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_14b88
  w2 = *(u8 *)(r1 + 0xc4)
  if w2 > 0x2 goto jmp_14b88
  r0 = 0x9
  if w2 == 0x0 goto jmp_14b88
  w2 = *(u8 *)(r1 + 0xc5)
  if w2 == 0x1 goto jmp_f020
  r9 = 0xb00000000 ll
  r0 = 0x0
  r2 = *(u64 *)(r1 + 0x98)
  if r2 != 0x0 goto jmp_14b88

jmp_f020:
  r2 = r1
  r2 += 0xdd
  w4 = *(u8 *)(r1 + 0xd9)
  if w4 == 0x1 goto jmp_f050
  r2 = r1
  r2 += 0x78

jmp_f050:
  r4 = *(u64 *)(r1 + 0x78)
  r6 = *(u64 *)(r10 - 0x830)
  r5 = 0x6011348d72903300 ll
  if r4 == r5 goto jmp_108f0
  if r4 != 0x0 goto jmp_10950
  r4 = *(u64 *)(r1 + 0x80)
  if r4 != 0x0 goto jmp_10950
  r4 = *(u64 *)(r1 + 0x88)
  if r4 != 0x0 goto jmp_10950
  r4 = *(u64 *)(r1 + 0x90)
  if r4 == 0x0 goto jmp_f0b8
  goto jmp_10950

jmp_f0b8:
  r2 = *(u64 *)(r3 + 0x8)
  r0 = 0x3
  r9 = 0x0
  r4 = 0x6011348d72903300 ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x10)
  r4 = -0x24ff0040ee364287 ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x18)
  r4 = -0x5963083332d1b22c ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x20)
  r4 = 0xe13800e1 ll
  if r2 != r4 goto jmp_14b88

jmp_f148:
  r2 = *(u64 *)(r1 + 0x48)
  r4 = *(u64 *)(r3 + 0x48)
  r4 += r2
  *(u64 *)(r3 + 0x48) = r4
  r1 += 0x28
  w2 = 0x0
  r3 = 0x30
  call sol_memset_
  goto jmp_145f0

jmp_f190:
  if w5 == 0x12 goto jmp_f9a8
  if w5 == 0x14 goto jmp_100b8
  if w5 == 0x16 goto jmp_f308

jmp_f1a8:
  r4 += -0x1
  r1 = r6
  r2 = *(u64 *)(r10 - 0x828)
  call fn_0030

jmp_f1c8:
  r9 = r0
  r1 = 0x1f00000000 ll
  goto jmp_11580

jmp_f1e8:
  w3 = w5
  w3 += -0x4
  w3 &= 0xff
  if w3 < 0xa goto jmp_f248
  if w5 > 0x2d goto jmp_ebc8
  r3 = 0x1
  r3 <<= r5
  r0 = 0x204000400000 ll
  r3 &= r0
  if r3 != 0x0 goto jmp_f248
  goto jmp_ebc8

jmp_f248:
  r3 = *(u64 *)(r10 - 0x828)
  if w3 == 0x0 goto jmp_da40
  r1 = str_008c ll
  r2 = 0x19
  r9 = 0x6
  r3 = *(u64 *)(r6 + 0x0)
  r0 = *(u64 *)(r3 + 0x28)
  r7 = -0x6c5e9a281e0922fa ll
  if r0 != r7 goto jmp_da40
  r0 = *(u64 *)(r3 + 0x30)
  r7 = -0x53861431b91e3427 ll
  if r0 != r7 goto jmp_da40
  r0 = *(u64 *)(r3 + 0x38)
  r7 = -0x6ec8a4a0127a4be4 ll
  if r0 != r7 goto jmp_da40
  r3 = *(u64 *)(r3 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r3 == r0 goto jmp_ebc8
  goto jmp_da40

jmp_f308:
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 == 0x0 goto jmp_f378
  r0 = 0x3
  r1 = *(u64 *)(r6 + 0x0)
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_f378
  w1 = *(u8 *)(r1 + 0xc4)
  if w1 > 0x2 goto jmp_f378
  r0 = 0x600000000 ll
  if w1 != 0x0 goto jmp_f378
  r0 = 0xffffffff ll

jmp_f378:
  r9 = r0
  r1 = 0x600000000 ll
  goto jmp_11580

jmp_f398:
  r0 = 0xc00000000 ll
  if w4 < 0x23 goto jmp_11568
  r7 = 0x0
  w5 = *(u8 *)(r8 + 0x3)
  w1 = *(u8 *)(r8 + 0x24)
  if w1 == 0x0 goto jmp_f3f8
  if w1 == 0x1 goto jmp_f3e0
  goto jmp_11568

jmp_f3e0:
  if w4 < 0x43 goto jmp_11568
  r7 = r8
  r7 += 0x25

jmp_f3f8:
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 > 0x1 goto jmp_f418
  goto jmp_11568

jmp_f418:
  r0 = 0x1
  r2 = *(u64 *)(r6 + 0x8)
  r1 = *(u64 *)(r2 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_11568
  r1 = *(u64 *)(r2 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_11568
  r1 = *(u64 *)(r2 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_11568
  r1 = *(u64 *)(r2 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 != r3 goto jmp_11568
  r9 = *(u64 *)(r6 + 0x0)
  r4 = *(u64 *)(r9 + 0x50)
  r3 = r4
  r3 += 0x80
  r1 = *(u64 *)(r2 + 0x58)
  r1 *= r3
  r3 = *(u64 *)(r9 + 0x48)
  r6 = *(u64 *)(r2 + 0x60)
  r2 = 0x3ff0000000000000 ll
  if r6 == r2 goto jmp_11450
  r2 = 0x4000000000000000 ll
  if r6 == r2 goto jmp_11448
  *(u64 *)(r10 - 0x868) = r4
  *(u64 *)(r10 - 0x860) = r3
  *(u32 *)(r10 - 0x848) = w5
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x870) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  *(u32 *)(r10 - 0x888) = w0
  r1 = r6
  call fn_17668
  w1 = *(u32 *)(r10 - 0x888)
  if w1 s< 0x0 goto jmp_f5b0
  *(u64 *)(r10 - 0x870) = r0

jmp_f5b0:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  if w0 s> 0x0 goto jmp_f5e8
  r1 = *(u64 *)(r10 - 0x870)

jmp_f5e8:
  w5 = *(u32 *)(r10 - 0x848)
  r3 = *(u64 *)(r10 - 0x860)
  r4 = *(u64 *)(r10 - 0x868)
  goto jmp_11450

jmp_f608:
  r0 = 0xc00000000 ll
  if w4 < 0x9 goto jmp_f1c8
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 < 0x3 goto jmp_f1c8
  r1 = *(u64 *)(r10 - 0x830)
  r1 = *(u64 *)(r1 + 0x8)
  r2 = *(u64 *)(r1 + 0x50)
  r0 = 0x3
  if r2 != 0xa5 goto jmp_f1c8
  w2 = *(u8 *)(r1 + 0xc4)
  if w2 > 0x2 goto jmp_f1c8
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8
  r0 = 0x1100000000 ll
  if w2 == 0x2 goto jmp_f1c8
  r0 = 0xa00000000 ll
  w2 = *(u8 *)(r1 + 0xc5)
  if w2 == 0x1 goto jmp_f1c8
  r0 = 0x300000000 ll
  r2 = *(u64 *)(r1 + 0x58)
  r4 = *(u64 *)(r10 - 0x830)
  r4 = *(u64 *)(r4 + 0x0)
  r5 = *(u64 *)(r4 + 0x8)
  if r5 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r1 + 0x60)
  r5 = *(u64 *)(r4 + 0x10)
  if r5 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r1 + 0x68)
  r5 = *(u64 *)(r4 + 0x18)
  if r5 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r1 + 0x70)
  r5 = *(u64 *)(r4 + 0x20)
  if r5 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x50)
  r0 = 0x3
  if r2 != 0x52 goto jmp_f1c8
  w2 = *(u8 *)(r4 + 0x85)
  if w2 > 0x1 goto jmp_f768
  r0 = 0x9

jmp_f768:
  if w2 != 0x1 goto jmp_f1c8
  r0 = 0x500000000 ll
  w2 = *(u8 *)(r4 + 0x58)
  if w2 != 0x1 goto jmp_f1c8
  r0 = 0x400000000 ll
  r2 = *(u64 *)(r4 + 0x5c)
  r5 = *(u64 *)(r10 - 0x830)
  r5 = *(u64 *)(r5 + 0x10)
  r6 = *(u64 *)(r5 + 0x8)
  if r2 != r6 goto jmp_f1c8
  r2 = *(u64 *)(r5 + 0x10)
  r6 = *(u64 *)(r4 + 0x64)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r5 + 0x18)
  r6 = *(u64 *)(r4 + 0x6c)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r5 + 0x20)
  r6 = *(u64 *)(r4 + 0x74)
  if r6 != r2 goto jmp_f1c8
  r3 = *(u64 *)(r3 + 0x0)
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_129d0
  r2 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_12970
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_129d0
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_129d0
  r2 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_129d0
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 == r0 goto jmp_f8c8
  goto jmp_129d0

jmp_f8c8:
  w2 = *(u8 *)(r5 + 0x5a)
  if w2 != 0x1 goto jmp_124c8
  w2 = 0x0
  *(u32 *)(r10 - 0x870) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_139a0
  w2 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x888) = r2
  if r2 > 0xb goto jmp_14c58
  r0 = *(u64 *)(r10 - 0x830)
  r2 = r0
  r2 += 0x18
  *(u64 *)(r10 - 0x868) = r2
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r0 += r2
  *(u64 *)(r10 - 0x890) = r0
  r2 = *(u64 *)(r10 - 0x888)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x898) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x870) = w2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x8a0) = r2
  goto jmp_13850

jmp_f9a8:
  r0 = 0xc00000000 ll
  if w4 < 0x21 goto jmp_101d0
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 < 0x2 goto jmp_101d0
  *(u64 *)(r10 - 0x848) = r3
  r1 = *(u64 *)(r10 - 0x830)
  r9 = *(u64 *)(r1 + 0x0)
  r6 = *(u64 *)(r9 + 0x50)
  r1 = *(u64 *)(r10 - 0x850)
  *(u32 *)(r1 + 0x3) = 0x0
  *(u32 *)(r1 + 0x0) = 0x0
  r2 = r10
  r2 += -0x18
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_111f8
  r1 = -0x100000000 ll
  r0 = *(u64 *)(r10 - 0x878)
  r0 &= r1
  r0 |= 0x10
  *(u64 *)(r10 - 0x878) = r0
  goto jmp_101d0

jmp_fa88:
  r9 = 0x0
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 < 0x3 goto jmp_14b88
  r1 = *(u64 *)(r10 - 0x828)
  if w1 == 0x3 goto jmp_14b88
  r0 = 0x1
  r1 = *(u64 *)(r10 - 0x830)
  r2 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r2 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 != r3 goto jmp_14b88
  r1 = *(u64 *)(r10 - 0x830)
  r3 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r10 - 0x848) = r3
  r3 = *(u64 *)(r3 + 0x50)
  r1 = *(u64 *)(r1 + 0x10)
  *(u64 *)(r10 - 0x860) = r1
  r7 = r3
  r3 += 0x80
  r1 = *(u64 *)(r2 + 0x58)
  r1 *= r3
  r6 = *(u64 *)(r2 + 0x60)
  r2 = 0x3ff0000000000000 ll
  if r6 == r2 goto jmp_10630
  r2 = 0x4000000000000000 ll
  if r6 == r2 goto jmp_10628
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x868) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  *(u32 *)(r10 - 0x870) = w0
  r1 = r6
  call fn_17668
  w1 = *(u32 *)(r10 - 0x870)
  if w1 s< 0x0 goto jmp_fc58
  *(u64 *)(r10 - 0x868) = r0

jmp_fc58:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  if w0 s> 0x0 goto jmp_10630
  r1 = *(u64 *)(r10 - 0x868)
  goto jmp_10630

jmp_fc98:
  r9 = 0xc00000000 ll
  r0 = 0x0
  if w4 < 0xa goto jmp_14b88
  r9 = 0x0
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 < 0x3 goto jmp_14b88
  r1 = *(u64 *)(r10 - 0x830)
  r3 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  r0 = 0x3
  if r1 != 0xa5 goto jmp_14b88
  w2 = *(u8 *)(r3 + 0xc4)
  if w2 > 0x2 goto jmp_14b88
  r0 = 0x9
  if w2 == 0x0 goto jmp_14b88
  r1 = *(u64 *)(r10 - 0x830)
  r1 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x50)
  r0 = 0x3
  if r4 != 0x52 goto jmp_14b88
  w4 = *(u8 *)(r1 + 0x85)
  if w4 > 0x1 goto jmp_fd60
  r0 = 0x9

jmp_fd60:
  if w4 != 0x1 goto jmp_11588
  r9 = 0x1100000000 ll
  r0 = 0x0
  if w2 == 0x2 goto jmp_14b88
  r9 = 0xa00000000 ll
  w2 = *(u8 *)(r3 + 0xc5)
  if w2 == 0x1 goto jmp_14b88
  r4 = *(u64 *)(r8 + 0x3)
  r9 = 0x100000000 ll
  r7 = *(u64 *)(r3 + 0x98)
  if r7 < r4 goto jmp_14b88
  r9 = 0x300000000 ll
  r2 = *(u64 *)(r3 + 0x58)
  r6 = *(u64 *)(r1 + 0x8)
  if r6 != r2 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x60)
  r6 = *(u64 *)(r1 + 0x10)
  if r6 != r2 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x68)
  r6 = *(u64 *)(r1 + 0x18)
  if r6 != r2 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x70)
  r6 = *(u64 *)(r1 + 0x20)
  if r6 != r2 goto jmp_14b88
  w2 = *(u8 *)(r8 + 0xb)
  r9 = 0x1200000000 ll
  w6 = *(u8 *)(r1 + 0x84)
  if w2 != w6 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x78)
  r5 = 0x6011348d72903300 ll
  if r2 == r5 goto jmp_10d28
  if r2 != 0x0 goto jmp_10d88
  r0 = *(u64 *)(r3 + 0x80)
  if r0 != 0x0 goto jmp_10d88
  r0 = *(u64 *)(r3 + 0x88)
  if r0 != 0x0 goto jmp_10d88
  r0 = *(u64 *)(r3 + 0x90)
  if r0 == 0x0 goto jmp_12848
  goto jmp_10d88

jmp_fec8:
  r0 = 0xc00000000 ll
  if w4 < 0x9 goto jmp_f1c8
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 < 0x3 goto jmp_f1c8
  r1 = *(u64 *)(r10 - 0x830)
  r4 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r4 + 0x50)
  r0 = 0x3
  if r1 != 0xa5 goto jmp_f1c8
  w2 = *(u8 *)(r4 + 0xc4)
  if w2 > 0x2 goto jmp_f1c8
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8
  r1 = *(u64 *)(r10 - 0x830)
  r1 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x50)
  r0 = 0x3
  if r5 != 0x52 goto jmp_f1c8
  w5 = *(u8 *)(r1 + 0x85)
  if w5 > 0x1 goto jmp_ff80
  r0 = 0x9

jmp_ff80:
  if w5 != 0x1 goto jmp_f1c8
  r0 = 0x1100000000 ll
  if w2 == 0x2 goto jmp_f1c8
  r0 = 0xa00000000 ll
  w2 = *(u8 *)(r4 + 0xc5)
  if w2 == 0x1 goto jmp_f1c8
  r7 = *(u64 *)(r3 + 0x0)
  r0 = 0x100000000 ll
  r5 = *(u64 *)(r4 + 0x98)
  if r5 < r7 goto jmp_f1c8
  r0 = 0x300000000 ll
  r2 = *(u64 *)(r4 + 0x58)
  r6 = *(u64 *)(r1 + 0x8)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x60)
  r6 = *(u64 *)(r1 + 0x10)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x68)
  r6 = *(u64 *)(r1 + 0x18)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x70)
  r6 = *(u64 *)(r1 + 0x20)
  if r6 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x78)
  r3 = 0x6011348d72903300 ll
  if r2 == r3 goto jmp_11ae8
  if r2 != 0x0 goto jmp_11b48
  r0 = *(u64 *)(r4 + 0x80)
  if r0 != 0x0 goto jmp_11b48
  r0 = *(u64 *)(r4 + 0x88)
  if r0 != 0x0 goto jmp_11b48
  r0 = *(u64 *)(r4 + 0x90)
  if r0 == 0x0 goto jmp_12c18
  goto jmp_11b48

jmp_100b8:
  r0 = 0xc00000000 ll
  if w4 < 0x23 goto jmp_101d0
  r7 = 0x0
  w2 = *(u8 *)(r8 + 0x3)
  w1 = *(u8 *)(r8 + 0x24)
  if w1 == 0x0 goto jmp_10118
  if w1 == 0x1 goto jmp_10100
  goto jmp_101d0

jmp_10100:
  if w4 < 0x43 goto jmp_101d0
  r7 = r8
  r7 += 0x25

jmp_10118:
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 == 0x0 goto jmp_101d0
  *(u32 *)(r10 - 0x848) = w2
  r9 = *(u64 *)(r6 + 0x0)
  r6 = *(u64 *)(r9 + 0x50)
  r1 = *(u64 *)(r10 - 0x850)
  *(u32 *)(r1 + 0x3) = 0x0
  *(u32 *)(r1 + 0x0) = 0x0
  r2 = r10
  r2 += -0x18
  r1 = data_06b8 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_11300
  r1 = -0x100000000 ll
  r0 = *(u64 *)(r10 - 0x880)
  r0 &= r1
  r0 |= 0x10
  *(u64 *)(r10 - 0x880) = r0

jmp_101d0:
  r9 = r0
  r1 = -0x100000000 ll
  goto jmp_11580

jmp_101f0:
  r2 = *(u64 *)(r6 + 0x8)
  r4 = *(u64 *)(r3 + 0xa4)
  if r4 != r2 goto jmp_10268
  r5 = *(u64 *)(r6 + 0x10)
  r0 = *(u64 *)(r3 + 0xac)
  r2 = r4
  if r0 != r5 goto jmp_10268
  r5 = *(u64 *)(r6 + 0x18)
  r0 = *(u64 *)(r3 + 0xb4)
  r2 = r4
  if r0 != r5 goto jmp_10268
  r5 = *(u64 *)(r6 + 0x20)
  r0 = *(u64 *)(r3 + 0xbc)
  r2 = r4
  if r0 == r5 goto jmp_11840

jmp_10268:
  r0 = 0x400000000 ll
  r4 = *(u64 *)(r3 + 0x78)
  if r4 != r2 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x10)
  r4 = *(u64 *)(r3 + 0x80)
  if r4 != r2 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x18)
  r4 = *(u64 *)(r3 + 0x88)
  if r4 != r2 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x20)
  r4 = *(u64 *)(r3 + 0x90)
  if r4 != r2 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_126f8
  r2 = *(u64 *)(r6 + 0x28)
  r4 = -0x21708a111e0922fa ll
  if r2 == r4 goto jmp_12698
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_126f8
  r2 = *(u64 *)(r6 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_126f8
  r2 = *(u64 *)(r6 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_126f8
  r2 = *(u64 *)(r6 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r2 == r4 goto jmp_10380
  goto jmp_126f8

jmp_10380:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_122c0
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x4 goto jmp_14068
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x890) = r2
  if r2 > 0xb goto jmp_14bf8
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r4 = *(u64 *)(r10 - 0x830)
  r4 += r2
  *(u64 *)(r10 - 0x898) = r4
  r2 = *(u64 *)(r10 - 0x890)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a0) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8a8) = r2
  goto jmp_13ef8

jmp_10448:
  r0 = 0x1
  r1 = *(u64 *)(r10 - 0x830)
  r2 = *(u64 *)(r1 + 0x8)
  r1 = *(u64 *)(r2 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 == r3 goto jmp_104e8
  goto jmp_14b88

jmp_104e8:
  r7 = *(u64 *)(r6 + 0x50)
  r1 = *(u64 *)(r2 + 0x58)
  r3 = r7
  r3 += 0x80
  r1 *= r3
  r3 = *(u64 *)(r2 + 0x60)
  r2 = 0x3ff0000000000000 ll
  if r3 == r2 goto jmp_10c90
  r2 = 0x4000000000000000 ll
  if r3 == r2 goto jmp_10c88
  *(u64 *)(r10 - 0x868) = r7
  r7 = r3
  call fn_17728
  r1 = r7
  r2 = r0
  call fn_17ae0
  r7 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x848) = r1
  r1 = r7
  r2 = 0x0
  call fn_17920
  *(u32 *)(r10 - 0x870) = w0
  *(u64 *)(r10 - 0x860) = r7
  r1 = r7
  call fn_17668
  w1 = *(u32 *)(r10 - 0x870)
  if w1 s< 0x0 goto jmp_105e0
  *(u64 *)(r10 - 0x848) = r0

jmp_105e0:
  r1 = *(u64 *)(r10 - 0x860)
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  r7 = *(u64 *)(r10 - 0x868)
  if w0 s> 0x0 goto jmp_10c90
  r1 = *(u64 *)(r10 - 0x848)
  goto jmp_10c90

jmp_10628:
  r1 <<= 0x1

jmp_10630:
  r2 = *(u64 *)(r10 - 0x830)
  r2 = *(u64 *)(r2 + 0x8)
  r3 = *(u64 *)(r2 + 0x8)
  r4 = -0x7b7e5401a87764fa ll
  if r3 == r4 goto jmp_10670

jmp_10660:
  w5 = 0x0
  goto jmp_106d8

jmp_10670:
  r3 = *(u64 *)(r2 + 0x10)
  r4 = 0x35c01846637f68fb ll
  if r3 != r4 goto jmp_10660
  r3 = *(u64 *)(r2 + 0x18)
  r4 = 0x553beb1adc39c4da ll
  if r3 != r4 goto jmp_10660
  w5 = 0x1
  r3 = *(u64 *)(r2 + 0x20)
  r4 = 0x100000000f0a098 ll
  if r3 != r4 goto jmp_10660

jmp_106d8:
  r0 = 0x3
  if r7 == 0xa5 goto jmp_106f0
  goto jmp_14b88

jmp_106f0:
  r3 = *(u64 *)(r10 - 0x848)
  w3 = *(u8 *)(r3 + 0xc4)
  if w3 > 0x2 goto jmp_14b88
  r9 = 0x600000000 ll
  r0 = 0x0
  if w3 != 0x0 goto jmp_14b88
  r3 = *(u64 *)(r10 - 0x848)
  r6 = *(u64 *)(r3 + 0x48)
  r9 = 0x0
  if r6 < r1 goto jmp_14b88
  r3 = *(u64 *)(r10 - 0x860)
  r3 += 0x8
  *(u64 *)(r10 - 0x860) = r3
  r4 = r2
  r4 += 0x8
  r3 = *(u64 *)(r10 - 0x848)
  r3 += 0x58
  if w5 != 0x0 goto jmp_12200
  r0 = 0x6
  r1 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_14b88
  r1 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 == r5 goto jmp_10818
  goto jmp_14b88

jmp_10818:
  r9 = 0x200000000 ll
  r1 = *(u64 *)(r2 + 0x50)
  r0 = 0x0
  if r1 != 0x52 goto jmp_14b88
  w1 = *(u8 *)(r2 + 0x85)
  if w1 != 0x1 goto jmp_14b88
  r0 = *(u64 *)(r10 - 0x848)
  *(u8 *)(r0 + 0xc4) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r5 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r5
  *(u64 *)(r3 + 0x8) = r2
  *(u64 *)(r3 + 0x0) = r1
  r4 = *(u64 *)(r10 - 0x860)
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r0 + 0x90) = r4
  *(u64 *)(r0 + 0x88) = r3
  *(u64 *)(r0 + 0x80) = r2
  *(u64 *)(r0 + 0x78) = r1
  goto jmp_145f0

jmp_108f0:
  r4 = *(u64 *)(r1 + 0x80)
  r5 = -0x24ff0040ee364287 ll
  if r4 != r5 goto jmp_10950
  r4 = *(u64 *)(r1 + 0x88)
  r5 = -0x5963083332d1b22c ll
  if r4 != r5 goto jmp_10950
  r4 = *(u64 *)(r1 + 0x90)
  r5 = 0xe13800e1 ll
  if r4 == r5 goto jmp_f0b8

jmp_10950:
  r0 = 0x400000000 ll
  r5 = *(u64 *)(r2 + 0x0)
  r4 = *(u64 *)(r6 + 0x10)
  r6 = *(u64 *)(r4 + 0x8)
  if r5 != r6 goto jmp_12330
  r5 = *(u64 *)(r4 + 0x10)
  r6 = *(u64 *)(r2 + 0x8)
  if r6 != r5 goto jmp_12330
  r5 = *(u64 *)(r4 + 0x18)
  r6 = *(u64 *)(r2 + 0x10)
  if r6 != r5 goto jmp_12330
  r5 = *(u64 *)(r4 + 0x20)
  r2 = *(u64 *)(r2 + 0x18)
  if r2 != r5 goto jmp_12330
  r2 = *(u64 *)(r4 + 0x50)
  if r2 != 0x163 goto jmp_111d8
  r2 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_11178
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_111d8
  r2 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_111d8
  r2 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_111d8
  r2 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 == r5 goto jmp_10a78
  goto jmp_111d8

jmp_10a78:
  w2 = *(u8 *)(r4 + 0x5a)
  if w2 != 0x1 goto jmp_125f0
  w2 = 0x0
  *(u32 *)(r10 - 0x868) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_13eb8
  w2 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0x870) = r2
  if r2 > 0xb goto jmp_14c28
  r5 = *(u64 *)(r10 - 0x830)
  r2 = r5
  r2 += 0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r5 += r2
  *(u64 *)(r10 - 0x888) = r5
  r2 = *(u64 *)(r10 - 0x870)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x890) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x868) = w2
  r2 = r4
  r2 += 0x73
  *(u64 *)(r10 - 0x898) = r2
  goto jmp_13d80

jmp_10b58:
  r3 = *(u64 *)(r10 - 0x10)
  r2 = *(u64 *)(r10 - 0x18)
  r7 = *(u64 *)(r6 + 0x50)
  r1 = r7
  r1 += 0x80
  *(u64 *)(r10 - 0x858) = r2
  r1 *= r2
  r2 = 0x3ff0000000000000 ll
  if r3 == r2 goto jmp_10c90
  r2 = 0x4000000000000000 ll
  if r3 == r2 goto jmp_10c88
  *(u64 *)(r10 - 0x848) = r3
  call fn_17728
  r1 = *(u64 *)(r10 - 0x848)
  r2 = r0
  call fn_17ae0
  *(u64 *)(r10 - 0x848) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x860) = r1
  r1 = r0
  r2 = 0x0
  call fn_17920
  *(u32 *)(r10 - 0x868) = w0
  r1 = *(u64 *)(r10 - 0x848)
  call fn_17668
  w1 = *(u32 *)(r10 - 0x868)
  if w1 s< 0x0 goto jmp_10c48
  *(u64 *)(r10 - 0x860) = r0

jmp_10c48:
  r1 = *(u64 *)(r10 - 0x848)
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  if w0 s> 0x0 goto jmp_10c90
  r1 = *(u64 *)(r10 - 0x860)
  goto jmp_10c90

jmp_10c88:
  r1 <<= 0x1

jmp_10c90:
  r0 = 0x3
  if r7 != 0xa5 goto jmp_14b88
  w2 = *(u8 *)(r6 + 0xc4)
  if w2 > 0x2 goto jmp_14b88
  r0 = 0x9
  if w2 == 0x0 goto jmp_14b88
  r9 = 0x1300000000 ll
  r0 = 0x0
  w2 = *(u8 *)(r6 + 0xc5)
  if w2 != 0x1 goto jmp_14b88
  r9 = 0xe00000000 ll
  r2 = *(u64 *)(r6 + 0x48)
  if r2 < r1 goto jmp_14b88
  *(u64 *)(r6 + 0xc9) = r1
  r2 -= r1
  *(u64 *)(r6 + 0x98) = r2
  goto jmp_145f0

jmp_10d28:
  r0 = *(u64 *)(r3 + 0x80)
  r5 = -0x24ff0040ee364287 ll
  if r0 != r5 goto jmp_10d88
  r0 = *(u64 *)(r3 + 0x88)
  r5 = -0x5963083332d1b22c ll
  if r0 != r5 goto jmp_10d88
  r0 = *(u64 *)(r3 + 0x90)
  r5 = 0xe13800e1 ll
  if r0 == r5 goto jmp_12848

jmp_10d88:
  r5 = *(u64 *)(r10 - 0x830)
  r0 = r5
  r0 += 0x18
  *(u64 *)(r10 - 0x848) = r0
  r6 = *(u64 *)(r5 + 0x10)
  w0 = *(u8 *)(r3 + 0xa0)
  if w0 == 0x1 goto jmp_10fa0
  r9 = *(u64 *)(r6 + 0x8)

jmp_10dc8:
  r0 = 0x400000000 ll
  if r2 != r9 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x10)
  r5 = *(u64 *)(r3 + 0x80)
  if r5 != r2 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x18)
  r5 = *(u64 *)(r3 + 0x88)
  if r5 != r2 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x20)
  r5 = *(u64 *)(r3 + 0x90)
  if r5 != r2 goto jmp_12330
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_12830
  r2 = *(u64 *)(r6 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_127d0
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_12830
  r2 = *(u64 *)(r6 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_12830
  r2 = *(u64 *)(r6 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_12830
  r2 = *(u64 *)(r6 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 == r5 goto jmp_10ed8
  goto jmp_12830

jmp_10ed8:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_12318
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_145c8
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x890) = r2
  if r2 > 0xb goto jmp_14bf8
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r5 = *(u64 *)(r10 - 0x830)
  r5 += r2
  *(u64 *)(r10 - 0x898) = r5
  r2 = *(u64 *)(r10 - 0x890)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a0) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8a8) = r2
  goto jmp_14450

jmp_10fa0:
  r9 = *(u64 *)(r6 + 0x8)
  r0 = *(u64 *)(r3 + 0xa4)
  if r9 != r0 goto jmp_10dc8
  r0 = *(u64 *)(r3 + 0xac)
  r5 = *(u64 *)(r6 + 0x10)
  if r5 != r0 goto jmp_10dc8
  r5 = *(u64 *)(r3 + 0xb4)
  r0 = *(u64 *)(r6 + 0x18)
  if r0 != r5 goto jmp_10dc8
  r5 = *(u64 *)(r3 + 0xbc)
  r0 = *(u64 *)(r6 + 0x20)
  if r0 != r5 goto jmp_10dc8
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_13000
  r2 = *(u64 *)(r6 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_12fa0
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_13000
  r2 = *(u64 *)(r6 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_13000
  r2 = *(u64 *)(r6 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_13000
  r2 = *(u64 *)(r6 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 == r5 goto jmp_110b0
  goto jmp_13000

jmp_110b0:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_125d8
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_14400
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x890) = r2
  if r2 > 0xb goto jmp_14bf8
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r5 = *(u64 *)(r10 - 0x830)
  r5 += r2
  *(u64 *)(r10 - 0x898) = r5
  r2 = *(u64 *)(r10 - 0x890)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a0) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8a8) = r2
  goto jmp_14288

jmp_11178:
  r2 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_111d8
  r2 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_111d8
  r2 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_10a78

jmp_111d8:
  r0 = 0x7
  w2 = *(u8 *)(r4 + 0x1)
  if w2 == 0x0 goto jmp_12330
  goto jmp_f148

jmp_111f8:
  r6 += 0x80
  r1 = *(u64 *)(r10 - 0x18)
  r1 *= r6
  r6 = *(u64 *)(r10 - 0x10)
  r2 = 0x3ff0000000000000 ll
  if r6 == r2 goto jmp_115c0
  r2 = 0x4000000000000000 ll
  if r6 == r2 goto jmp_115b8
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r7 = 0x0
  r1 = r6
  r2 = 0x0
  call fn_17920
  *(u32 *)(r10 - 0x860) = w0
  r1 = r6
  call fn_17668
  w1 = *(u32 *)(r10 - 0x860)
  if w1 s< 0x0 goto jmp_112c0
  r7 = r0

jmp_112c0:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  if w0 s> 0x0 goto jmp_115c0
  r1 = r7
  goto jmp_115c0

jmp_11300:
  r6 += 0x80
  r1 = *(u64 *)(r10 - 0x18)
  r1 *= r6
  r6 = *(u64 *)(r10 - 0x10)
  r5 = *(u64 *)(r9 + 0x48)
  r2 = 0x3ff0000000000000 ll
  r4 = r7
  w3 = *(u32 *)(r10 - 0x848)
  if r6 == r2 goto jmp_119c0
  r2 = 0x4000000000000000 ll
  if r6 == r2 goto jmp_119b8
  *(u64 *)(r10 - 0x860) = r5
  call fn_17728
  r1 = r6
  r2 = r0
  call fn_17ae0
  r6 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x868) = r1
  r1 = r6
  r2 = 0x0
  call fn_17920
  *(u32 *)(r10 - 0x870) = w0
  r1 = r6
  call fn_17668
  w1 = *(u32 *)(r10 - 0x870)
  if w1 s< 0x0 goto jmp_113f0
  *(u64 *)(r10 - 0x868) = r0

jmp_113f0:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_17a00
  r1 = -0x1
  if w0 s> 0x0 goto jmp_11428
  r1 = *(u64 *)(r10 - 0x868)

jmp_11428:
  r4 = r7
  w3 = *(u32 *)(r10 - 0x848)
  r5 = *(u64 *)(r10 - 0x860)
  goto jmp_119c0

jmp_11448:
  r1 <<= 0x1

jmp_11450:
  r0 = 0x3
  if r4 != 0x52 goto jmp_11568
  w2 = *(u8 *)(r9 + 0x85)
  if w2 == 0x1 goto jmp_11558
  if w2 != 0x0 goto jmp_11568
  r0 = 0x0
  if r3 < r1 goto jmp_11568
  r1 = r8
  r1 += 0x4
  *(u8 *)(r9 + 0x58) = 0x1
  *(u8 *)(r9 + 0x85) = 0x1
  r2 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r9 + 0x5c) = r2
  r2 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r9 + 0x64) = r2
  r2 = *(u64 *)(r1 + 0x10)
  *(u64 *)(r9 + 0x6c) = r2
  r1 = *(u64 *)(r1 + 0x18)
  *(u64 *)(r9 + 0x74) = r1
  *(u8 *)(r9 + 0x84) = w5
  r0 = 0xffffffff ll
  if r7 == 0x0 goto jmp_11568
  *(u8 *)(r9 + 0x86) = 0x1
  r1 = *(u64 *)(r7 + 0x0)
  r2 = *(u64 *)(r7 + 0x8)
  r3 = *(u64 *)(r7 + 0x10)
  r4 = *(u64 *)(r7 + 0x18)
  *(u64 *)(r9 + 0xa2) = r4
  *(u64 *)(r9 + 0x9a) = r3
  *(u64 *)(r9 + 0x92) = r2
  *(u64 *)(r9 + 0x8a) = r1
  goto jmp_11568

jmp_11558:
  r0 = 0x600000000 ll

jmp_11568:
  r9 = r0
  r1 = 0xe00000000 ll

jmp_11580:
  r9 &= r1

jmp_11588:
  r0 <<= 0x20
  r0 >>= 0x20
  r1 = 0xffffffff ll
  if r0 == r1 goto jmp_145f0
  goto jmp_14b88

jmp_115b8:
  r1 <<= 0x1

jmp_115c0:
  r2 = *(u64 *)(r10 - 0x830)
  r2 = *(u64 *)(r2 + 0x8)
  r3 = *(u64 *)(r2 + 0x8)
  r4 = -0x7b7e5401a87764fa ll
  if r3 == r4 goto jmp_11600

jmp_115f0:
  w5 = 0x0
  goto jmp_11668

jmp_11600:
  r3 = *(u64 *)(r2 + 0x10)
  r4 = 0x35c01846637f68fb ll
  if r3 != r4 goto jmp_115f0
  r3 = *(u64 *)(r2 + 0x18)
  r4 = 0x553beb1adc39c4da ll
  if r3 != r4 goto jmp_115f0
  w5 = 0x1
  r3 = *(u64 *)(r2 + 0x20)
  r4 = 0x100000000f0a098 ll
  if r3 != r4 goto jmp_115f0

jmp_11668:
  r0 = 0x3
  r3 = *(u64 *)(r9 + 0x50)
  if r3 != 0xa5 goto jmp_101d0
  w3 = *(u8 *)(r9 + 0xc4)
  if w3 > 0x2 goto jmp_101d0
  r0 = 0x600000000 ll
  if w3 != 0x0 goto jmp_101d0
  r0 = 0x0
  r6 = *(u64 *)(r9 + 0x48)
  if r6 < r1 goto jmp_101d0
  r4 = r2
  r4 += 0x8
  r3 = r9
  r3 += 0x58
  if w5 != 0x0 goto jmp_124f8
  r0 = 0x6
  r5 = *(u64 *)(r2 + 0x28)
  r1 = *(u64 *)(r10 - 0x848)
  r6 = -0x6c5e9a281e0922fa ll
  if r5 != r6 goto jmp_101d0
  r5 = *(u64 *)(r2 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r5 != r6 goto jmp_101d0
  r5 = *(u64 *)(r2 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r5 != r6 goto jmp_101d0
  r5 = *(u64 *)(r2 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r5 == r6 goto jmp_11780
  goto jmp_101d0

jmp_11780:
  r0 = 0x200000000 ll
  r5 = *(u64 *)(r2 + 0x50)
  if r5 != 0x52 goto jmp_101d0
  w2 = *(u8 *)(r2 + 0x85)
  if w2 != 0x1 goto jmp_101d0
  *(u8 *)(r9 + 0xc4) = 0x1
  r2 = *(u64 *)(r4 + 0x0)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r0
  *(u64 *)(r3 + 0x8) = r5
  *(u64 *)(r3 + 0x0) = r2
  r2 = *(u64 *)(r1 + 0x18)
  *(u64 *)(r9 + 0x90) = r2
  r2 = *(u64 *)(r1 + 0x10)
  *(u64 *)(r9 + 0x88) = r2
  r2 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r9 + 0x80) = r2
  r1 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r9 + 0x78) = r1
  goto jmp_125a8

jmp_11840:
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_12de8
  r2 = *(u64 *)(r6 + 0x28)
  r4 = -0x21708a111e0922fa ll
  if r2 == r4 goto jmp_12d88
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_12de8
  r2 = *(u64 *)(r6 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_12de8
  r2 = *(u64 *)(r6 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_12de8
  r2 = *(u64 *)(r6 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r2 == r4 goto jmp_118f0
  goto jmp_12de8

jmp_118f0:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_125c0
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x4 goto jmp_14238
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x890) = r2
  if r2 > 0xb goto jmp_14bf8
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r4 = *(u64 *)(r10 - 0x830)
  r4 += r2
  *(u64 *)(r10 - 0x898) = r4
  r2 = *(u64 *)(r10 - 0x890)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a0) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8a8) = r2
  goto jmp_140a8

jmp_119b8:
  r1 <<= 0x1

jmp_119c0:
  r0 = 0x3
  r2 = *(u64 *)(r9 + 0x50)
  if r2 != 0x52 goto jmp_101d0
  w2 = *(u8 *)(r9 + 0x85)
  if w2 == 0x1 goto jmp_11ad0
  if w2 != 0x0 goto jmp_101d0
  r0 = 0x0
  if r5 < r1 goto jmp_101d0
  r1 = r8
  r1 += 0x4
  *(u8 *)(r9 + 0x58) = 0x1
  *(u8 *)(r9 + 0x85) = 0x1
  r2 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r9 + 0x5c) = r2
  r2 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r9 + 0x64) = r2
  r2 = *(u64 *)(r1 + 0x10)
  *(u64 *)(r9 + 0x6c) = r2
  r1 = *(u64 *)(r1 + 0x18)
  *(u64 *)(r9 + 0x74) = r1
  *(u8 *)(r9 + 0x84) = w3
  r0 = 0xffffffff ll
  if r4 == 0x0 goto jmp_101d0
  *(u8 *)(r9 + 0x86) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r9 + 0xa2) = r4
  *(u64 *)(r9 + 0x9a) = r3
  *(u64 *)(r9 + 0x92) = r2
  *(u64 *)(r9 + 0x8a) = r1
  goto jmp_101d0

jmp_11ad0:
  r0 = 0x600000000 ll
  goto jmp_101d0

jmp_11ae8:
  r0 = *(u64 *)(r4 + 0x80)
  r3 = -0x24ff0040ee364287 ll
  if r0 != r3 goto jmp_11b48
  r0 = *(u64 *)(r4 + 0x88)
  r3 = -0x5963083332d1b22c ll
  if r0 != r3 goto jmp_11b48
  r0 = *(u64 *)(r4 + 0x90)
  r3 = 0xe13800e1 ll
  if r0 == r3 goto jmp_12c18

jmp_11b48:
  r3 = *(u64 *)(r10 - 0x830)
  r0 = r3
  r0 += 0x18
  *(u64 *)(r10 - 0x848) = r0
  r6 = *(u64 *)(r3 + 0x10)
  w0 = *(u8 *)(r4 + 0xa0)
  if w0 == 0x1 goto jmp_11d60
  r9 = *(u64 *)(r6 + 0x8)

jmp_11b88:
  r0 = 0x400000000 ll
  if r2 != r9 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x10)
  r3 = *(u64 *)(r4 + 0x80)
  if r3 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x18)
  r3 = *(u64 *)(r4 + 0x88)
  if r3 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x20)
  r3 = *(u64 *)(r4 + 0x90)
  if r3 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_12c00
  r2 = *(u64 *)(r6 + 0x28)
  r3 = -0x21708a111e0922fa ll
  if r2 == r3 goto jmp_12ba0
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_12c00
  r2 = *(u64 *)(r6 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_12c00
  r2 = *(u64 *)(r6 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_12c00
  r2 = *(u64 *)(r6 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_11c98
  goto jmp_12c00

jmp_11c98:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_124e0
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_13d30
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x890) = r2
  if r2 > 0xb goto jmp_14bf8
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r3 = *(u64 *)(r10 - 0x830)
  r3 += r2
  *(u64 *)(r10 - 0x898) = r3
  r2 = *(u64 *)(r10 - 0x890)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a0) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8a8) = r2
  goto jmp_13bb8

jmp_11d60:
  r9 = *(u64 *)(r6 + 0x8)
  r0 = *(u64 *)(r4 + 0xa4)
  if r9 != r0 goto jmp_11b88
  r0 = *(u64 *)(r4 + 0xac)
  r3 = *(u64 *)(r6 + 0x10)
  if r3 != r0 goto jmp_11b88
  r3 = *(u64 *)(r4 + 0xb4)
  r0 = *(u64 *)(r6 + 0x18)
  if r0 != r3 goto jmp_11b88
  r3 = *(u64 *)(r4 + 0xbc)
  r0 = *(u64 *)(r6 + 0x20)
  if r0 != r3 goto jmp_11b88
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_130d8
  r2 = *(u64 *)(r6 + 0x28)
  r3 = -0x21708a111e0922fa ll
  if r2 == r3 goto jmp_13078
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_130d8
  r2 = *(u64 *)(r6 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_130d8
  r2 = *(u64 *)(r6 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_130d8
  r2 = *(u64 *)(r6 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_11e70
  goto jmp_130d8

jmp_11e70:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_12618
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_13b68
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x890) = r2
  if r2 > 0xb goto jmp_14bf8
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r3 = *(u64 *)(r10 - 0x830)
  r3 += r2
  *(u64 *)(r10 - 0x898) = r3
  r2 = *(u64 *)(r10 - 0x890)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a0) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x888) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8a8) = r2
  goto jmp_139f0

jmp_11f38:
  r9 = 0x1100000000 ll
  r0 = 0x0
  if w5 == 0x2 goto jmp_14b88
  r9 = 0x100000000 ll
  r4 = *(u64 *)(r3 + 0x98)
  r7 = r4
  r5 = *(u64 *)(r10 - 0x848)
  if r4 < r5 goto jmp_14b88
  r4 = *(u64 *)(r3 + 0x58)
  goto jmp_14a38

jmp_11f98:
  r2 = *(u64 *)(r6 + 0x8)
  r0 = *(u64 *)(r4 + 0xa4)
  if r0 != r2 goto jmp_12020
  r2 = *(u64 *)(r6 + 0x10)
  *(u64 *)(r10 - 0x860) = r2
  r9 = *(u64 *)(r4 + 0xac)
  r2 = r0
  r7 = *(u64 *)(r10 - 0x860)
  if r9 != r7 goto jmp_12020
  r7 = *(u64 *)(r6 + 0x18)
  r9 = *(u64 *)(r4 + 0xb4)
  r2 = r0
  if r9 != r7 goto jmp_12020
  r7 = *(u64 *)(r6 + 0x20)
  r9 = *(u64 *)(r4 + 0xbc)
  r2 = r0
  if r9 == r7 goto jmp_12350

jmp_12020:
  r0 = 0x400000000 ll
  r9 = *(u64 *)(r4 + 0x78)
  if r9 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x10)
  r9 = *(u64 *)(r4 + 0x80)
  if r9 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x18)
  r9 = *(u64 *)(r4 + 0x88)
  if r9 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x20)
  r9 = *(u64 *)(r4 + 0x90)
  if r9 != r2 goto jmp_f1c8
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_131a0
  r2 = *(u64 *)(r6 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_13140
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_131a0
  r2 = *(u64 *)(r6 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_131a0
  r2 = *(u64 *)(r6 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_131a0
  r2 = *(u64 *)(r6 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 == r0 goto jmp_12138
  goto jmp_131a0

jmp_12138:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_12648
  w2 = 0x0
  *(u32 *)(r10 - 0x890) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_13620
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x898) = r2
  if r2 > 0xb goto jmp_14c88
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r0 = *(u64 *)(r10 - 0x830)
  r0 += r2
  *(u64 *)(r10 - 0x8a0) = r0
  r2 = *(u64 *)(r10 - 0x898)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a8) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x890) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8b0) = r2
  goto jmp_13488

jmp_12200:
  r7 = *(u64 *)(r10 - 0x848)
  *(u8 *)(r7 + 0xc4) = 0x1
  r2 = *(u64 *)(r4 + 0x0)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r0
  *(u64 *)(r3 + 0x8) = r5
  *(u64 *)(r3 + 0x0) = r2
  r5 = *(u64 *)(r10 - 0x860)
  r2 = *(u64 *)(r5 + 0x0)
  r3 = *(u64 *)(r5 + 0x8)
  r4 = *(u64 *)(r5 + 0x10)
  r5 = *(u64 *)(r5 + 0x18)
  *(u64 *)(r7 + 0x90) = r5
  *(u64 *)(r7 + 0x88) = r4
  *(u64 *)(r7 + 0x80) = r3
  *(u64 *)(r7 + 0x78) = r2
  *(u64 *)(r7 + 0xc9) = r1
  r6 -= r1
  *(u64 *)(r7 + 0x98) = r6
  *(u8 *)(r7 + 0xc5) = 0x1
  goto jmp_145f0

jmp_122c0:
  r0 = 0x9
  if w2 == 0x0 goto jmp_12330
  goto jmp_12328

jmp_122d8:
  r0 = 0x1100000000 ll
  if w2 == 0x2 goto jmp_f1c8
  r0 = 0x100000000 ll
  r5 = *(u64 *)(r4 + 0x98)
  if r5 < r3 goto jmp_f1c8
  goto jmp_ed98

jmp_12318:
  r0 = 0x9
  if w2 == 0x0 goto jmp_12330

jmp_12328:
  r0 = 0x3

jmp_12330:
  r9 = r0
  r1 = 0x400000000 ll
  goto jmp_11580

jmp_12350:
  r2 = *(u64 *)(r6 + 0x50)
  if r2 != 0x163 goto jmp_132c0
  r2 = *(u64 *)(r6 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_13260
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_132c0
  r2 = *(u64 *)(r6 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_132c0
  r2 = *(u64 *)(r6 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_132c0
  r2 = *(u64 *)(r6 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 == r0 goto jmp_12400
  goto jmp_132c0

jmp_12400:
  w2 = *(u8 *)(r6 + 0x5a)
  if w2 != 0x1 goto jmp_12630
  w2 = 0x0
  *(u32 *)(r10 - 0x890) = w2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = *(u64 *)(r10 - 0x828)
  if w2 == 0x3 goto jmp_13800
  w2 = *(u8 *)(r6 + 0x59)
  *(u64 *)(r10 - 0x898) = r2
  if r2 > 0xb goto jmp_14c88
  r2 = *(u64 *)(r10 - 0x828)
  r2 <<= 0x3
  r0 = *(u64 *)(r10 - 0x830)
  r0 += r2
  *(u64 *)(r10 - 0x8a0) = r0
  r2 = *(u64 *)(r10 - 0x898)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x8a8) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x890) = w2
  r2 = r6
  r2 += 0x73
  *(u64 *)(r10 - 0x8b0) = r2
  goto jmp_13670

jmp_124c8:
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8
  goto jmp_12658

jmp_124e0:
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8
  goto jmp_12658

jmp_124f8:
  *(u8 *)(r9 + 0xc4) = 0x1
  r2 = *(u64 *)(r4 + 0x0)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r0
  *(u64 *)(r3 + 0x8) = r5
  *(u64 *)(r3 + 0x0) = r2
  r2 = *(u64 *)(r10 - 0x848)
  r3 = *(u64 *)(r2 + 0x18)
  *(u64 *)(r9 + 0x90) = r3
  r3 = *(u64 *)(r2 + 0x10)
  *(u64 *)(r9 + 0x88) = r3
  r3 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r9 + 0x80) = r3
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r9 + 0x78) = r2
  *(u64 *)(r9 + 0xc9) = r1
  r6 -= r1
  *(u64 *)(r9 + 0x98) = r6
  *(u8 *)(r9 + 0xc5) = 0x1

jmp_125a8:
  r0 = 0xffffffff ll
  goto jmp_101d0

jmp_125c0:
  r0 = 0x9
  if w2 == 0x0 goto jmp_12608
  goto jmp_12600

jmp_125d8:
  r0 = 0x9
  if w2 == 0x0 goto jmp_12608
  goto jmp_12600

jmp_125f0:
  r0 = 0x9
  if w2 == 0x0 goto jmp_12608

jmp_12600:
  r0 = 0x3

jmp_12608:
  r9 = 0x0
  goto jmp_11588

jmp_12618:
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8
  goto jmp_12658

jmp_12630:
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8
  goto jmp_12658

jmp_12648:
  r0 = 0x9
  if w2 == 0x0 goto jmp_f1c8

jmp_12658:
  r0 = 0x3
  goto jmp_f1c8

jmp_12668:
  r7 -= r4
  *(u64 *)(r3 + 0x98) = r7
  r2 = *(u64 *)(r1 + 0x7c)
  r2 -= r4
  *(u64 *)(r1 + 0x7c) = r2
  goto jmp_145f0

jmp_12698:
  r2 = *(u64 *)(r6 + 0x30)
  r4 = -0x2532931b43a2bde8 ll
  if r2 != r4 goto jmp_126f8
  r2 = *(u64 *)(r6 + 0x38)
  r4 = 0x270db9834dfc1ab6 ll
  if r2 != r4 goto jmp_126f8
  r2 = *(u64 *)(r6 + 0x40)
  r4 = -0x3745e27d7064202 ll
  if r2 == r4 goto jmp_10380

jmp_126f8:
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_12330

jmp_12710:
  r2 = *(u64 *)(r10 - 0x848)
  if r2 == 0x0 goto jmp_12e80
  if r3 == r1 goto jmp_12e80

jmp_12728:
  r2 = *(u64 *)(r10 - 0x848)
  r7 -= r2
  *(u64 *)(r3 + 0x98) = r7
  r9 = 0x0
  r0 = 0x3
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_14b88
  r2 = *(u64 *)(r1 + 0x98)
  r4 = *(u64 *)(r10 - 0x848)
  r2 += r4
  *(u64 *)(r1 + 0x98) = r2
  w2 = *(u8 *)(r3 + 0xc5)
  if w2 != 0x1 goto jmp_145f0
  r2 = *(u64 *)(r3 + 0x48)
  r4 = *(u64 *)(r10 - 0x848)
  r2 -= r4
  *(u64 *)(r3 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r4
  *(u64 *)(r1 + 0x48) = r2
  goto jmp_145f0

jmp_127d0:
  r2 = *(u64 *)(r6 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_12830
  r2 = *(u64 *)(r6 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_12830
  r2 = *(u64 *)(r6 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_10ed8

jmp_12830:
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_12330

jmp_12848:
  if r4 != 0x0 goto jmp_12668
  r9 = 0x0
  r0 = 0x6
  r2 = *(u64 *)(r3 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_128e8
  goto jmp_14b88

jmp_128e8:
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14b88
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14b88
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14b88
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_145f0
  goto jmp_14b88

jmp_12970:
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_129d0
  r2 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_129d0
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_f8c8

jmp_129d0:
  r0 = 0x7
  w2 = *(u8 *)(r5 + 0x1)
  if w2 == 0x0 goto jmp_f1c8

jmp_129e8:
  if r3 != 0x0 goto jmp_12b18
  r0 = 0x6
  r2 = *(u64 *)(r4 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_12a80
  goto jmp_f1c8

jmp_12a80:
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_12b10
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_12b10
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_12b10
  r0 = 0xffffffff ll
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_f1c8

jmp_12b10:
  goto jmp_13450

jmp_12b18:
  r0 = *(u64 *)(r4 + 0x7c)
  r2 = r0
  r2 += r3
  w5 = 0x1
  if r2 < r0 goto jmp_12b48
  w5 = 0x0

jmp_12b48:
  r0 = 0xe00000000 ll
  w5 &= 0x1
  if w5 != 0x0 goto jmp_f1c8
  *(u64 *)(r4 + 0x7c) = r2
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r3
  *(u64 *)(r1 + 0x98) = r2
  r0 = 0xffffffff ll
  goto jmp_f1c8

jmp_12ba0:
  r2 = *(u64 *)(r6 + 0x30)
  r3 = -0x2532931b43a2bde8 ll
  if r2 != r3 goto jmp_12c00
  r2 = *(u64 *)(r6 + 0x38)
  r3 = 0x270db9834dfc1ab6 ll
  if r2 != r3 goto jmp_12c00
  r2 = *(u64 *)(r6 + 0x40)
  r3 = -0x3745e27d7064202 ll
  if r2 == r3 goto jmp_11c98

jmp_12c00:
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_f1c8

jmp_12c18:
  if r7 != 0x0 goto jmp_12d48
  r0 = 0x6
  r2 = *(u64 *)(r4 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_12cb0
  goto jmp_f1c8

jmp_12cb0:
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_12d40
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_12d40
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_12d40
  r0 = 0xffffffff ll
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_f1c8

jmp_12d40:
  goto jmp_13450

jmp_12d48:
  r5 -= r7
  *(u64 *)(r4 + 0x98) = r5
  r2 = *(u64 *)(r1 + 0x7c)
  r2 -= r7
  *(u64 *)(r1 + 0x7c) = r2
  r0 = 0xffffffff ll
  goto jmp_f1c8

jmp_12d88:
  r2 = *(u64 *)(r6 + 0x30)
  r4 = -0x2532931b43a2bde8 ll
  if r2 != r4 goto jmp_12de8
  r2 = *(u64 *)(r6 + 0x38)
  r4 = 0x270db9834dfc1ab6 ll
  if r2 != r4 goto jmp_12de8
  r2 = *(u64 *)(r6 + 0x40)
  r4 = -0x3745e27d7064202 ll
  if r2 == r4 goto jmp_118f0

jmp_12de8:
  r9 = 0x0
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_14b88

jmp_12e08:
  r9 = 0x100000000 ll
  r2 = *(u64 *)(r3 + 0xd1)
  r0 = 0x0
  r4 = *(u64 *)(r10 - 0x848)
  if r2 < r4 goto jmp_14b88
  if r3 == r1 goto jmp_12e80
  r4 = r2
  r5 = *(u64 *)(r10 - 0x848)
  r4 -= r5
  *(u64 *)(r3 + 0xd1) = r4
  if r2 != r5 goto jmp_12e70
  *(u8 *)(r3 + 0xa0) = 0x0

jmp_12e70:
  r2 = *(u64 *)(r10 - 0x848)
  if r2 != 0x0 goto jmp_12728

jmp_12e80:
  r9 = 0x0
  r0 = 0x6
  r2 = *(u64 *)(r3 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_14b88
  r2 = *(u64 *)(r3 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_12f18
  goto jmp_14b88

jmp_12f18:
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14b88
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14b88
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14b88
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_145f0
  goto jmp_14b88

jmp_12fa0:
  r2 = *(u64 *)(r6 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_13000
  r2 = *(u64 *)(r6 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_13000
  r2 = *(u64 *)(r6 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_110b0

jmp_13000:
  r9 = 0x0
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_14b88

jmp_13020:
  r2 = *(u64 *)(r3 + 0xd1)
  r0 = 0x0
  r9 = 0x100000000 ll
  if r2 < r4 goto jmp_14b88
  r5 = r2
  r5 -= r4
  *(u64 *)(r3 + 0xd1) = r5
  if r2 != r4 goto jmp_12848
  *(u8 *)(r3 + 0xa0) = 0x0
  goto jmp_12848

jmp_13078:
  r2 = *(u64 *)(r6 + 0x30)
  r3 = -0x2532931b43a2bde8 ll
  if r2 != r3 goto jmp_130d8
  r2 = *(u64 *)(r6 + 0x38)
  r3 = 0x270db9834dfc1ab6 ll
  if r2 != r3 goto jmp_130d8
  r2 = *(u64 *)(r6 + 0x40)
  r3 = -0x3745e27d7064202 ll
  if r2 == r3 goto jmp_11e70

jmp_130d8:
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_f1c8

jmp_130f0:
  r2 = *(u64 *)(r4 + 0xd1)
  r0 = 0x100000000 ll
  if r2 < r7 goto jmp_f1c8
  r3 = r2
  r3 -= r7
  *(u64 *)(r4 + 0xd1) = r3
  if r2 != r7 goto jmp_12c18
  *(u8 *)(r4 + 0xa0) = 0x0
  goto jmp_12c18

jmp_13140:
  r2 = *(u64 *)(r6 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_131a0
  r2 = *(u64 *)(r6 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_131a0
  r2 = *(u64 *)(r6 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_12138

jmp_131a0:
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_f1c8

jmp_131b8:
  if r3 == 0x0 goto jmp_13330
  if r4 == r1 goto jmp_13330

jmp_131c8:
  r5 -= r3
  *(u64 *)(r4 + 0x98) = r5
  r2 = *(u64 *)(r1 + 0x50)
  r0 = 0x3
  if r2 != 0xa5 goto jmp_f1c8
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r3
  *(u64 *)(r1 + 0x98) = r2
  r0 = 0xffffffff ll
  w2 = *(u8 *)(r4 + 0xc5)
  if w2 != 0x1 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x48)
  r2 -= r3
  *(u64 *)(r4 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r3
  *(u64 *)(r1 + 0x48) = r2
  goto jmp_f1c8

jmp_13260:
  r2 = *(u64 *)(r6 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_132c0
  r2 = *(u64 *)(r6 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_132c0
  r2 = *(u64 *)(r6 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_12400

jmp_132c0:
  r0 = 0x7
  w2 = *(u8 *)(r6 + 0x1)
  if w2 == 0x0 goto jmp_f1c8

jmp_132d8:
  r0 = 0x100000000 ll
  r2 = *(u64 *)(r4 + 0xd1)
  if r2 < r3 goto jmp_f1c8
  if r4 == r1 goto jmp_13330
  r0 = r2
  r0 -= r3
  *(u64 *)(r4 + 0xd1) = r0
  if r2 != r3 goto jmp_13328
  *(u8 *)(r4 + 0xa0) = 0x0

jmp_13328:
  if r3 != 0x0 goto jmp_131c8

jmp_13330:
  r2 = *(u64 *)(r4 + 0x28)
  r0 = 0x6
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_f1c8
  r2 = *(u64 *)(r4 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 == r3 goto jmp_133c0
  goto jmp_f1c8

jmp_133c0:
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_13450
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_13450
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_13450
  r0 = 0xffffffff ll
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_f1c8

jmp_13450:
  r0 = 0x6
  goto jmp_f1c8

jmp_13460:
  r0 = *(u64 *)(r10 - 0x848)
  r0 += 0x8
  r2 = *(u64 *)(r10 - 0x8a0)
  *(u64 *)(r10 - 0x848) = r0
  if r0 == r2 goto jmp_13620

jmp_13488:
  r2 = *(u64 *)(r10 - 0x898)
  if w2 == 0x0 goto jmp_13460
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r10 - 0x848)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x888) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r10 - 0x8a8)
  *(u64 *)(r10 - 0x868) = r2
  r2 = *(u64 *)(r10 - 0x8b0)

jmp_134f0:
  r9 = *(u64 *)(r2 - 0x18)
  r0 = *(u64 *)(r10 - 0x870)
  if r9 != r0 goto jmp_13568
  r9 = *(u64 *)(r10 - 0x888)
  r0 = *(u64 *)(r9 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r0 goto jmp_13568
  r9 = *(u64 *)(r10 - 0x888)
  r0 = *(u64 *)(r9 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r0 goto jmp_13568
  r9 = *(u64 *)(r10 - 0x888)
  r0 = *(u64 *)(r9 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 == r0 goto jmp_135b0

jmp_13568:
  r2 += 0x20
  r9 = *(u64 *)(r10 - 0x860)
  r9 += 0x1
  *(u64 *)(r10 - 0x860) = r9
  r0 = *(u64 *)(r10 - 0x868)
  r0 += -0x20
  *(u64 *)(r10 - 0x868) = r0
  if r0 == 0x0 goto jmp_13460
  goto jmp_134f0

jmp_135b0:
  r9 = *(u64 *)(r10 - 0x860)
  w9 = *(u8 *)(r9 + 0x0)
  if w9 != 0x0 goto jmp_13568
  r9 = *(u64 *)(r10 - 0x888)
  w9 = *(u8 *)(r9 + 0x1)
  if w9 != 0x0 goto jmp_135f0

jmp_135e0:
  r0 = 0x7
  goto jmp_f1c8

jmp_135f0:
  r9 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r9 + 0x0) = 0x1
  w9 = *(u32 *)(r10 - 0x890)
  w9 += 0x1
  *(u32 *)(r10 - 0x890) = w9
  goto jmp_13568

jmp_13620:
  w2 = *(u8 *)(r6 + 0x58)
  w0 = *(u32 *)(r10 - 0x890)
  w0 &= 0xff
  if w0 < w2 goto jmp_135e0
  goto jmp_131b8

jmp_13648:
  r0 = *(u64 *)(r10 - 0x848)
  r0 += 0x8
  r2 = *(u64 *)(r10 - 0x8a0)
  *(u64 *)(r10 - 0x848) = r0
  if r0 == r2 goto jmp_13800

jmp_13670:
  r2 = *(u64 *)(r10 - 0x898)
  if w2 == 0x0 goto jmp_13648
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r10 - 0x848)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x888) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r10 - 0x8a8)
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x8b0)

jmp_136d8:
  r9 = *(u64 *)(r0 - 0x18)
  r2 = *(u64 *)(r10 - 0x870)
  if r9 != r2 goto jmp_13750
  r9 = *(u64 *)(r10 - 0x888)
  r2 = *(u64 *)(r9 + 0x10)
  r9 = *(u64 *)(r0 - 0x10)
  if r9 != r2 goto jmp_13750
  r9 = *(u64 *)(r10 - 0x888)
  r2 = *(u64 *)(r9 + 0x18)
  r9 = *(u64 *)(r0 - 0x8)
  if r9 != r2 goto jmp_13750
  r9 = *(u64 *)(r10 - 0x888)
  r2 = *(u64 *)(r9 + 0x20)
  r9 = *(u64 *)(r0 + 0x0)
  if r9 == r2 goto jmp_13798

jmp_13750:
  r0 += 0x20
  r9 = *(u64 *)(r10 - 0x860)
  r9 += 0x1
  *(u64 *)(r10 - 0x860) = r9
  r2 = *(u64 *)(r10 - 0x868)
  r2 += -0x20
  *(u64 *)(r10 - 0x868) = r2
  if r2 == 0x0 goto jmp_13648
  goto jmp_136d8

jmp_13798:
  r9 = *(u64 *)(r10 - 0x860)
  w9 = *(u8 *)(r9 + 0x0)
  if w9 != 0x0 goto jmp_13750
  r9 = *(u64 *)(r10 - 0x888)
  w9 = *(u8 *)(r9 + 0x1)
  if w9 != 0x0 goto jmp_137d0

jmp_137c8:
  goto jmp_135e0

jmp_137d0:
  r9 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r9 + 0x0) = 0x1
  w9 = *(u32 *)(r10 - 0x890)
  w9 += 0x1
  *(u32 *)(r10 - 0x890) = w9
  goto jmp_13750

jmp_13800:
  w2 = *(u8 *)(r6 + 0x58)
  w0 = *(u32 *)(r10 - 0x890)
  w0 &= 0xff
  if w0 < w2 goto jmp_137c8
  goto jmp_132d8

jmp_13828:
  r2 = *(u64 *)(r10 - 0x868)
  r2 += 0x8
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x890)
  if r2 == r0 goto jmp_139a0

jmp_13850:
  r2 = *(u64 *)(r10 - 0x888)
  if w2 == 0x0 goto jmp_13828
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r10 - 0x868)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x848) = r2
  r6 = *(u64 *)(r10 - 0x898)
  r2 = *(u64 *)(r10 - 0x8a0)

jmp_138a8:
  r0 = *(u64 *)(r2 - 0x18)
  r7 = *(u64 *)(r10 - 0x848)
  if r0 != r7 goto jmp_13920
  r0 = *(u64 *)(r10 - 0x860)
  r7 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r2 - 0x10)
  if r0 != r7 goto jmp_13920
  r0 = *(u64 *)(r10 - 0x860)
  r7 = *(u64 *)(r0 + 0x18)
  r0 = *(u64 *)(r2 - 0x8)
  if r0 != r7 goto jmp_13920
  r0 = *(u64 *)(r10 - 0x860)
  r7 = *(u64 *)(r0 + 0x20)
  r0 = *(u64 *)(r2 + 0x0)
  if r0 == r7 goto jmp_13948

jmp_13920:
  r2 += 0x20
  r9 += 0x1
  r6 += -0x20
  if r6 == 0x0 goto jmp_13828
  goto jmp_138a8

jmp_13948:
  w0 = *(u8 *)(r9 + 0x0)
  if w0 != 0x0 goto jmp_13920
  r0 = *(u64 *)(r10 - 0x860)
  w0 = *(u8 *)(r0 + 0x1)
  if w0 != 0x0 goto jmp_13978

jmp_13970:
  goto jmp_135e0

jmp_13978:
  *(u8 *)(r9 + 0x0) = 0x1
  w0 = *(u32 *)(r10 - 0x870)
  w0 += 0x1
  *(u32 *)(r10 - 0x870) = w0
  goto jmp_13920

jmp_139a0:
  w2 = *(u8 *)(r5 + 0x58)
  w7 = *(u32 *)(r10 - 0x870)
  w7 &= 0xff
  if w7 < w2 goto jmp_13970
  goto jmp_129e8

jmp_139c8:
  r2 = *(u64 *)(r10 - 0x848)
  r2 += 0x8
  *(u64 *)(r10 - 0x848) = r2
  r3 = *(u64 *)(r10 - 0x898)
  if r2 == r3 goto jmp_13b68

jmp_139f0:
  r2 = *(u64 *)(r10 - 0x890)
  if w2 == 0x0 goto jmp_139c8
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r10 - 0x848)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x8a0)
  r2 = *(u64 *)(r10 - 0x8a8)

jmp_13a50:
  r3 = *(u64 *)(r2 - 0x18)
  r9 = *(u64 *)(r10 - 0x868)
  if r3 != r9 goto jmp_13ac8
  r3 = *(u64 *)(r10 - 0x870)
  r3 = *(u64 *)(r3 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r3 goto jmp_13ac8
  r3 = *(u64 *)(r10 - 0x870)
  r3 = *(u64 *)(r3 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r3 goto jmp_13ac8
  r3 = *(u64 *)(r10 - 0x870)
  r3 = *(u64 *)(r3 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 == r3 goto jmp_13b00

jmp_13ac8:
  r2 += 0x20
  r3 = *(u64 *)(r10 - 0x860)
  r3 += 0x1
  *(u64 *)(r10 - 0x860) = r3
  r0 += -0x20
  if r0 == 0x0 goto jmp_139c8
  goto jmp_13a50

jmp_13b00:
  r3 = *(u64 *)(r10 - 0x860)
  w3 = *(u8 *)(r3 + 0x0)
  if w3 != 0x0 goto jmp_13ac8
  r3 = *(u64 *)(r10 - 0x870)
  w3 = *(u8 *)(r3 + 0x1)
  if w3 != 0x0 goto jmp_13b38

jmp_13b30:
  goto jmp_135e0

jmp_13b38:
  r3 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r3 + 0x0) = 0x1
  w3 = *(u32 *)(r10 - 0x888)
  w3 += 0x1
  *(u32 *)(r10 - 0x888) = w3
  goto jmp_13ac8

jmp_13b68:
  w2 = *(u8 *)(r6 + 0x58)
  w3 = *(u32 *)(r10 - 0x888)
  w3 &= 0xff
  if w3 < w2 goto jmp_13b30
  goto jmp_130f0

jmp_13b90:
  r2 = *(u64 *)(r10 - 0x848)
  r2 += 0x8
  *(u64 *)(r10 - 0x848) = r2
  r3 = *(u64 *)(r10 - 0x898)
  if r2 == r3 goto jmp_13d30

jmp_13bb8:
  r2 = *(u64 *)(r10 - 0x890)
  if w2 == 0x0 goto jmp_13b90
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r10 - 0x848)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x8a0)
  r2 = *(u64 *)(r10 - 0x8a8)

jmp_13c18:
  r3 = *(u64 *)(r2 - 0x18)
  r9 = *(u64 *)(r10 - 0x868)
  if r3 != r9 goto jmp_13c90
  r3 = *(u64 *)(r10 - 0x870)
  r3 = *(u64 *)(r3 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r3 goto jmp_13c90
  r3 = *(u64 *)(r10 - 0x870)
  r3 = *(u64 *)(r3 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r3 goto jmp_13c90
  r3 = *(u64 *)(r10 - 0x870)
  r3 = *(u64 *)(r3 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 == r3 goto jmp_13cc8

jmp_13c90:
  r2 += 0x20
  r3 = *(u64 *)(r10 - 0x860)
  r3 += 0x1
  *(u64 *)(r10 - 0x860) = r3
  r0 += -0x20
  if r0 == 0x0 goto jmp_13b90
  goto jmp_13c18

jmp_13cc8:
  r3 = *(u64 *)(r10 - 0x860)
  w3 = *(u8 *)(r3 + 0x0)
  if w3 != 0x0 goto jmp_13c90
  r3 = *(u64 *)(r10 - 0x870)
  w3 = *(u8 *)(r3 + 0x1)
  if w3 != 0x0 goto jmp_13d00

jmp_13cf8:
  goto jmp_135e0

jmp_13d00:
  r3 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r3 + 0x0) = 0x1
  w3 = *(u32 *)(r10 - 0x888)
  w3 += 0x1
  *(u32 *)(r10 - 0x888) = w3
  goto jmp_13c90

jmp_13d30:
  w2 = *(u8 *)(r6 + 0x58)
  w3 = *(u32 *)(r10 - 0x888)
  w3 &= 0xff
  if w3 < w2 goto jmp_13cf8
  goto jmp_12c18

jmp_13d58:
  r2 = *(u64 *)(r10 - 0x860)
  r2 += 0x8
  *(u64 *)(r10 - 0x860) = r2
  r5 = *(u64 *)(r10 - 0x888)
  if r2 == r5 goto jmp_13eb8

jmp_13d80:
  r2 = *(u64 *)(r10 - 0x870)
  if w2 == 0x0 goto jmp_13d58
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r10 - 0x860)
  r2 = *(u64 *)(r2 + 0x0)
  r7 = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x848) = r2
  r5 = *(u64 *)(r10 - 0x890)
  r0 = *(u64 *)(r10 - 0x898)

jmp_13dd8:
  r6 = *(u64 *)(r0 - 0x18)
  r2 = *(u64 *)(r10 - 0x848)
  if r6 != r2 goto jmp_13e38
  r6 = *(u64 *)(r7 + 0x10)
  r2 = *(u64 *)(r0 - 0x10)
  if r2 != r6 goto jmp_13e38
  r2 = *(u64 *)(r7 + 0x18)
  r6 = *(u64 *)(r0 - 0x8)
  if r6 != r2 goto jmp_13e38
  r2 = *(u64 *)(r7 + 0x20)
  r6 = *(u64 *)(r0 + 0x0)
  if r6 == r2 goto jmp_13e60

jmp_13e38:
  r0 += 0x20
  r9 += 0x1
  r5 += -0x20
  if r5 == 0x0 goto jmp_13d58
  goto jmp_13dd8

jmp_13e60:
  w2 = *(u8 *)(r9 + 0x0)
  if w2 != 0x0 goto jmp_13e38
  w2 = *(u8 *)(r7 + 0x1)
  if w2 != 0x0 goto jmp_13e90

jmp_13e80:
  r0 = 0x7
  goto jmp_12330

jmp_13e90:
  *(u8 *)(r9 + 0x0) = 0x1
  w2 = *(u32 *)(r10 - 0x868)
  w2 += 0x1
  *(u32 *)(r10 - 0x868) = w2
  goto jmp_13e38

jmp_13eb8:
  w2 = *(u8 *)(r4 + 0x58)
  w7 = *(u32 *)(r10 - 0x868)
  w7 &= 0xff
  if w7 < w2 goto jmp_13e80
  goto jmp_f148

jmp_13ee0:
  r9 += 0x8
  r2 = *(u64 *)(r10 - 0x898)
  if r9 == r2 goto jmp_14068

jmp_13ef8:
  r2 = *(u64 *)(r10 - 0x890)
  if w2 == 0x0 goto jmp_13ee0
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r9 + 0x0)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x8a0)
  r2 = *(u64 *)(r10 - 0x8a8)

jmp_13f50:
  r4 = *(u64 *)(r2 - 0x18)
  r5 = *(u64 *)(r10 - 0x868)
  if r4 != r5 goto jmp_13fc8
  r4 = *(u64 *)(r10 - 0x870)
  r4 = *(u64 *)(r4 + 0x10)
  r5 = *(u64 *)(r2 - 0x10)
  if r5 != r4 goto jmp_13fc8
  r4 = *(u64 *)(r10 - 0x870)
  r4 = *(u64 *)(r4 + 0x18)
  r5 = *(u64 *)(r2 - 0x8)
  if r5 != r4 goto jmp_13fc8
  r4 = *(u64 *)(r10 - 0x870)
  r4 = *(u64 *)(r4 + 0x20)
  r5 = *(u64 *)(r2 + 0x0)
  if r5 == r4 goto jmp_14000

jmp_13fc8:
  r2 += 0x20
  r4 = *(u64 *)(r10 - 0x860)
  r4 += 0x1
  *(u64 *)(r10 - 0x860) = r4
  r0 += -0x20
  if r0 == 0x0 goto jmp_13ee0
  goto jmp_13f50

jmp_14000:
  r4 = *(u64 *)(r10 - 0x860)
  w4 = *(u8 *)(r4 + 0x0)
  if w4 != 0x0 goto jmp_13fc8
  r4 = *(u64 *)(r10 - 0x870)
  w4 = *(u8 *)(r4 + 0x1)
  if w4 != 0x0 goto jmp_14038

jmp_14030:
  goto jmp_13e80

jmp_14038:
  r4 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r4 + 0x0) = 0x1
  w4 = *(u32 *)(r10 - 0x888)
  w4 += 0x1
  *(u32 *)(r10 - 0x888) = w4
  goto jmp_13fc8

jmp_14068:
  w2 = *(u8 *)(r6 + 0x58)
  w4 = *(u32 *)(r10 - 0x888)
  w4 &= 0xff
  if w4 < w2 goto jmp_14030
  goto jmp_12710

jmp_14090:
  r9 += 0x8
  r2 = *(u64 *)(r10 - 0x898)
  if r9 == r2 goto jmp_14238

jmp_140a8:
  r2 = *(u64 *)(r10 - 0x890)
  if w2 == 0x0 goto jmp_14090
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r9 + 0x0)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x8a0)
  r2 = *(u64 *)(r10 - 0x8a8)

jmp_14100:
  r4 = *(u64 *)(r2 - 0x18)
  r5 = *(u64 *)(r10 - 0x868)
  if r4 != r5 goto jmp_14178
  r4 = *(u64 *)(r10 - 0x870)
  r4 = *(u64 *)(r4 + 0x10)
  r5 = *(u64 *)(r2 - 0x10)
  if r5 != r4 goto jmp_14178
  r4 = *(u64 *)(r10 - 0x870)
  r4 = *(u64 *)(r4 + 0x18)
  r5 = *(u64 *)(r2 - 0x8)
  if r5 != r4 goto jmp_14178
  r4 = *(u64 *)(r10 - 0x870)
  r4 = *(u64 *)(r4 + 0x20)
  r5 = *(u64 *)(r2 + 0x0)
  if r5 == r4 goto jmp_141b0

jmp_14178:
  r2 += 0x20
  r4 = *(u64 *)(r10 - 0x860)
  r4 += 0x1
  *(u64 *)(r10 - 0x860) = r4
  r0 += -0x20
  if r0 == 0x0 goto jmp_14090
  goto jmp_14100

jmp_141b0:
  r4 = *(u64 *)(r10 - 0x860)
  w4 = *(u8 *)(r4 + 0x0)
  if w4 != 0x0 goto jmp_14178
  r4 = *(u64 *)(r10 - 0x870)
  w4 = *(u8 *)(r4 + 0x1)
  if w4 != 0x0 goto jmp_14208

jmp_141e0:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  goto jmp_da40

jmp_14208:
  r4 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r4 + 0x0) = 0x1
  w4 = *(u32 *)(r10 - 0x888)
  w4 += 0x1
  *(u32 *)(r10 - 0x888) = w4
  goto jmp_14178

jmp_14238:
  w2 = *(u8 *)(r6 + 0x58)
  w4 = *(u32 *)(r10 - 0x888)
  w4 &= 0xff
  if w4 < w2 goto jmp_141e0
  goto jmp_12e08

jmp_14260:
  r2 = *(u64 *)(r10 - 0x848)
  r2 += 0x8
  *(u64 *)(r10 - 0x848) = r2
  r5 = *(u64 *)(r10 - 0x898)
  if r2 == r5 goto jmp_14400

jmp_14288:
  r2 = *(u64 *)(r10 - 0x890)
  if w2 == 0x0 goto jmp_14260
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r10 - 0x848)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x8a0)
  r2 = *(u64 *)(r10 - 0x8a8)

jmp_142e8:
  r5 = *(u64 *)(r2 - 0x18)
  r9 = *(u64 *)(r10 - 0x868)
  if r5 != r9 goto jmp_14360
  r5 = *(u64 *)(r10 - 0x870)
  r5 = *(u64 *)(r5 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r5 goto jmp_14360
  r5 = *(u64 *)(r10 - 0x870)
  r5 = *(u64 *)(r5 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r5 goto jmp_14360
  r5 = *(u64 *)(r10 - 0x870)
  r5 = *(u64 *)(r5 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 == r5 goto jmp_14398

jmp_14360:
  r2 += 0x20
  r5 = *(u64 *)(r10 - 0x860)
  r5 += 0x1
  *(u64 *)(r10 - 0x860) = r5
  r0 += -0x20
  if r0 == 0x0 goto jmp_14260
  goto jmp_142e8

jmp_14398:
  r5 = *(u64 *)(r10 - 0x860)
  w5 = *(u8 *)(r5 + 0x0)
  if w5 != 0x0 goto jmp_14360
  r5 = *(u64 *)(r10 - 0x870)
  w5 = *(u8 *)(r5 + 0x1)
  if w5 != 0x0 goto jmp_143d0

jmp_143c8:
  goto jmp_141e0

jmp_143d0:
  r5 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r5 + 0x0) = 0x1
  w5 = *(u32 *)(r10 - 0x888)
  w5 += 0x1
  *(u32 *)(r10 - 0x888) = w5
  goto jmp_14360

jmp_14400:
  w2 = *(u8 *)(r6 + 0x58)
  w5 = *(u32 *)(r10 - 0x888)
  w5 &= 0xff
  if w5 < w2 goto jmp_143c8
  goto jmp_13020

jmp_14428:
  r2 = *(u64 *)(r10 - 0x848)
  r2 += 0x8
  *(u64 *)(r10 - 0x848) = r2
  r5 = *(u64 *)(r10 - 0x898)
  if r2 == r5 goto jmp_145c8

jmp_14450:
  r2 = *(u64 *)(r10 - 0x890)
  if w2 == 0x0 goto jmp_14428
  r2 = r10
  r2 += -0x18
  *(u64 *)(r10 - 0x860) = r2
  r2 = *(u64 *)(r10 - 0x848)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x870) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x868) = r2
  r0 = *(u64 *)(r10 - 0x8a0)
  r2 = *(u64 *)(r10 - 0x8a8)

jmp_144b0:
  r5 = *(u64 *)(r2 - 0x18)
  r9 = *(u64 *)(r10 - 0x868)
  if r5 != r9 goto jmp_14528
  r5 = *(u64 *)(r10 - 0x870)
  r5 = *(u64 *)(r5 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r5 goto jmp_14528
  r5 = *(u64 *)(r10 - 0x870)
  r5 = *(u64 *)(r5 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r5 goto jmp_14528
  r5 = *(u64 *)(r10 - 0x870)
  r5 = *(u64 *)(r5 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 == r5 goto jmp_14560

jmp_14528:
  r2 += 0x20
  r5 = *(u64 *)(r10 - 0x860)
  r5 += 0x1
  *(u64 *)(r10 - 0x860) = r5
  r0 += -0x20
  if r0 == 0x0 goto jmp_14428
  goto jmp_144b0

jmp_14560:
  r5 = *(u64 *)(r10 - 0x860)
  w5 = *(u8 *)(r5 + 0x0)
  if w5 != 0x0 goto jmp_14528
  r5 = *(u64 *)(r10 - 0x870)
  w5 = *(u8 *)(r5 + 0x1)
  if w5 != 0x0 goto jmp_14598

jmp_14590:
  goto jmp_13e80

jmp_14598:
  r5 = *(u64 *)(r10 - 0x860)
  *(u8 *)(r5 + 0x0) = 0x1
  w5 = *(u32 *)(r10 - 0x888)
  w5 += 0x1
  *(u32 *)(r10 - 0x888) = w5
  goto jmp_14528

jmp_145c8:
  w2 = *(u8 *)(r6 + 0x58)
  w5 = *(u32 *)(r10 - 0x888)
  w5 &= 0xff
  if w5 < w2 goto jmp_14590
  goto jmp_12848

jmp_145f0:
  r0 = 0x0
  r6 = *(u64 *)(r10 - 0x830)
  r1 = *(u64 *)(r10 - 0x818)
  r2 = *(u64 *)(r10 - 0x838)
  if r1 == r2 goto jmp_e488
  r1 = *(u64 *)(r10 - 0x820)
  r2 = *(u64 *)(r10 - 0x828)
  r1 -= r2
  *(u64 *)(r10 - 0x820) = r1
  r2 <<= 0x3
  r6 += r2
  r2 = *(u64 *)(r10 - 0x838)
  r8 += r2
  r1 = *(u64 *)(r10 - 0x818)
  r1 -= r2
  *(u64 *)(r10 - 0x818) = r1
  if r1 < 0x2 goto jmp_da18

jmp_14678:
  w4 = *(u8 *)(r8 + 0x1)
  if r4 == 0x0 goto jmp_da18
  r2 = r4
  r2 += 0x2
  r1 = *(u64 *)(r10 - 0x818)
  *(u64 *)(r10 - 0x838) = r2
  if r1 < r2 goto jmp_da18
  w5 = *(u8 *)(r8 + 0x0)
  r1 = str_00df ll
  r2 = 0x1b
  r9 = 0xa
  r3 = *(u64 *)(r10 - 0x820)
  *(u64 *)(r10 - 0x828) = r5
  if r3 < r5 goto jmp_da40
  w5 = *(u8 *)(r8 + 0x2)
  *(u64 *)(r10 - 0x830) = r6
  if w5 > 0xf goto jmp_f1e8
  w3 = 0x1
  w3 <<= w5
  w3 &= 0xc188
  if w3 != 0x0 goto jmp_14b70
  if w5 == 0xc goto jmp_14738
  goto jmp_f1e8

jmp_14738:
  r3 = *(u64 *)(r10 - 0x828)
  if w3 > 0x2 goto jmp_14750
  goto jmp_da40

jmp_14750:
  r1 = str_008c ll
  r2 = 0x19
  r9 = 0x6
  r3 = *(u64 *)(r6 + 0x0)
  r5 = *(u64 *)(r3 + 0x28)
  r0 = -0x6c5e9a281e0922fa ll
  if r5 != r0 goto jmp_da40
  r5 = *(u64 *)(r3 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r5 != r0 goto jmp_da40
  r5 = *(u64 *)(r3 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r5 != r0 goto jmp_da40
  r3 = *(u64 *)(r3 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r3 != r5 goto jmp_da40
  r3 = *(u64 *)(r6 + 0x10)
  r5 = *(u64 *)(r3 + 0x28)
  r0 = -0x6c5e9a281e0922fa ll
  if r5 != r0 goto jmp_da40
  r5 = *(u64 *)(r3 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r5 != r0 goto jmp_da40
  r5 = *(u64 *)(r3 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r5 != r0 goto jmp_da40
  r3 = *(u64 *)(r3 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r3 != r5 goto jmp_da40

jmp_14880:
  r9 = 0xc00000000 ll
  r0 = 0x0
  if w4 < 0xa goto jmp_14b88
  r9 = 0x0
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x828)
  if w1 < 0x4 goto jmp_14b88
  r1 = *(u64 *)(r10 - 0x830)
  r3 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  r0 = 0x3
  if r1 != 0xa5 goto jmp_14b88
  w5 = *(u8 *)(r3 + 0xc4)
  if w5 > 0x2 goto jmp_14b88
  r0 = 0x9
  if w5 == 0x0 goto jmp_14b88
  w2 = *(u8 *)(r8 + 0xb)
  r1 = *(u64 *)(r8 + 0x3)
  *(u64 *)(r10 - 0x848) = r1
  r1 = *(u64 *)(r10 - 0x830)
  r1 = *(u64 *)(r1 + 0x10)
  if r3 == r1 goto jmp_11f38
  r4 = *(u64 *)(r1 + 0x50)
  r0 = 0x3
  if r4 != 0xa5 goto jmp_14b88
  w4 = *(u8 *)(r1 + 0xc4)
  if w4 > 0x2 goto jmp_14b88
  r0 = 0x9
  if w4 == 0x0 goto jmp_14b88
  r9 = 0x1100000000 ll
  r0 = 0x0
  if w5 == 0x2 goto jmp_14b88
  if w4 == 0x2 goto jmp_14b88
  r9 = 0x100000000 ll
  r4 = *(u64 *)(r3 + 0x98)
  r7 = r4
  r5 = *(u64 *)(r10 - 0x848)
  if r4 < r5 goto jmp_14b88
  r9 = 0x300000000 ll
  r4 = *(u64 *)(r3 + 0x58)
  r6 = *(u64 *)(r1 + 0x58)
  if r4 != r6 goto jmp_14b88
  r6 = *(u64 *)(r1 + 0x60)
  r5 = *(u64 *)(r3 + 0x60)
  if r5 != r6 goto jmp_14b88
  r5 = *(u64 *)(r1 + 0x68)
  r6 = *(u64 *)(r3 + 0x68)
  if r6 != r5 goto jmp_14b88
  r5 = *(u64 *)(r1 + 0x70)
  r6 = *(u64 *)(r3 + 0x70)
  if r6 != r5 goto jmp_14b88

jmp_14a38:
  r9 = 0x300000000 ll
  r5 = *(u64 *)(r10 - 0x830)
  r6 = *(u64 *)(r5 + 0x8)
  r5 = *(u64 *)(r6 + 0x8)
  if r5 == r4 goto jmp_14a70
  goto jmp_14b88

jmp_14a70:
  r4 = *(u64 *)(r3 + 0x60)
  r5 = *(u64 *)(r6 + 0x10)
  if r5 != r4 goto jmp_14b88
  r4 = *(u64 *)(r3 + 0x68)
  r5 = *(u64 *)(r6 + 0x18)
  if r5 != r4 goto jmp_14b88
  r4 = *(u64 *)(r3 + 0x70)
  r5 = *(u64 *)(r6 + 0x20)
  if r5 == r4 goto jmp_14ac0
  goto jmp_14b88

jmp_14ac0:
  r9 = 0x0
  r4 = *(u64 *)(r6 + 0x50)
  r0 = 0x3
  if r4 != 0x52 goto jmp_14b88
  w4 = *(u8 *)(r6 + 0x85)
  if w4 > 0x1 goto jmp_14af8
  r0 = 0x9

jmp_14af8:
  if w4 != 0x1 goto jmp_11588
  r9 = 0x1200000000 ll
  r0 = 0x0
  w4 = *(u8 *)(r6 + 0x84)
  if w2 == w4 goto jmp_14b30
  goto jmp_14b88

jmp_14b30:
  r2 = *(u64 *)(r10 - 0x830)
  r9 = r2
  r9 += 0x20
  r6 = *(u64 *)(r2 + 0x18)
  w2 = *(u8 *)(r3 + 0xa0)
  if w2 == 0x1 goto jmp_101f0
  r2 = *(u64 *)(r6 + 0x8)
  goto jmp_10268

jmp_14b70:
  r3 = *(u64 *)(r10 - 0x828)
  if w3 > 0x1 goto jmp_ea90
  goto jmp_da40

jmp_14b88:
  r9 |= r0

jmp_14b90:
  if w9 == -0x1 goto jmp_da48
  if w9 s> 0xc goto jmp_14cb8
  if w9 s> 0x5 goto jmp_14cf8
  if w9 s> 0x2 goto jmp_14dc8
  if w9 == 0x0 goto jmp_14e78
  r1 = str_000e ll
  r2 = 0x16
  if w9 == 0x1 goto jmp_da40
  r1 = str_0024 ll
  r2 = 0x1d
  goto jmp_da40

jmp_14bf8:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x890)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_14c28:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x870)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_14c58:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x888)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_14c88:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x898)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_14cb8:
  if w9 s> 0x12 goto jmp_14d30
  if w9 s> 0xf goto jmp_14df8
  if w9 == 0xd goto jmp_14eb8
  if w9 == 0xe goto jmp_14ed8
  r1 = str_0156 ll
  r2 = 0x1b
  goto jmp_da40

jmp_14cf8:
  if w9 s> 0x8 goto jmp_14d68
  if w9 == 0x6 goto jmp_14ef8
  if w9 == 0x7 goto jmp_14f18
  r1 = str_0698 ll
  r2 = 0x20
  goto jmp_da40

jmp_14d30:
  if w9 s> 0x15 goto jmp_14d98
  if w9 == 0x13 goto jmp_14f38
  if w9 == 0x14 goto jmp_14f58
  r1 = str_0202 ll
  r2 = 0x2d
  goto jmp_da40

jmp_14d68:
  if w9 s> 0xa goto jmp_14e28
  if w9 == 0x9 goto jmp_14f78
  r1 = str_00df ll
  r2 = 0x1b
  goto jmp_da40

jmp_14d98:
  if w9 s> 0x17 goto jmp_14e50
  if w9 == 0x16 goto jmp_14f98
  r1 = str_0249 ll
  r2 = 0x19
  goto jmp_da40

jmp_14dc8:
  if w9 == 0x3 goto jmp_14fb8
  if w9 == 0x4 goto jmp_14fd8
  r1 = str_0074 ll
  r2 = 0x18
  goto jmp_da40

jmp_14df8:
  if w9 == 0x10 goto jmp_14ff8
  if w9 == 0x11 goto jmp_15018
  r1 = str_019c ll
  r2 = 0x29
  goto jmp_da40

jmp_14e28:
  if w9 == 0xb goto jmp_15038
  r1 = str_0114 ll
  r2 = 0x1c
  goto jmp_da40

jmp_14e50:
  if w9 == 0x18 goto jmp_15058
  r1 = str_0262 ll
  r2 = 0x19
  goto jmp_da40

jmp_14e78:
  r1 = str_0000 ll
  r2 = 0xe
  r3 = 0x1400000000 ll
  *(u64 *)(r10 - 0x840) = r9
  if r9 < r3 goto jmp_da18
  goto jmp_da40

jmp_14eb8:
  r1 = str_0130 ll
  r2 = 0x13
  goto jmp_da40

jmp_14ed8:
  r1 = str_0143 ll
  r2 = 0x13
  goto jmp_da40

jmp_14ef8:
  r1 = str_008c ll
  r2 = 0x19
  goto jmp_da40

jmp_14f18:
  r1 = str_00a5 ll
  r2 = 0x1f
  goto jmp_da40

jmp_14f38:
  r1 = str_01c5 ll
  r2 = 0x15
  goto jmp_da40

jmp_14f58:
  r1 = str_01da ll
  r2 = 0x28
  goto jmp_da40

jmp_14f78:
  r1 = str_00c4 ll
  r2 = 0x1b
  goto jmp_da40

jmp_14f98:
  r1 = str_022f ll
  r2 = 0x1a
  goto jmp_da40

jmp_14fb8:
  r1 = str_0041 ll
  r2 = 0x19
  goto jmp_da40

jmp_14fd8:
  r1 = str_005a ll
  r2 = 0x1a
  goto jmp_da40

jmp_14ff8:
  r1 = str_0171 ll
  r2 = 0x18
  goto jmp_da40

jmp_15018:
  r1 = str_0189 ll
  r2 = 0x13
  goto jmp_da40

jmp_15038:
  r1 = str_00fa ll
  r2 = 0x1a
  goto jmp_da40

jmp_15058:
  r1 = str_06d8 ll
  r2 = 0x10
  goto jmp_da40

jmp_15078:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_151d0

jmp_15088:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_15158

jmp_150d8:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_15138
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_15138
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_15178

jmp_15138:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_15078

jmp_15158:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_15138
  goto jmp_150d8

jmp_15178:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_15138
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_151a8

jmp_151a0:
  goto jmp_141e0

jmp_151a8:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_15138

jmp_151d0:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_151a0
  goto jmp_e720

jmp_151f8:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_15350

jmp_15208:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_152d8

jmp_15258:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_152b8
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_152b8
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_152f8

jmp_152b8:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_151f8

jmp_152d8:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_152b8
  goto jmp_15258

jmp_152f8:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_152b8
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_15328

jmp_15320:
  goto jmp_141e0

jmp_15328:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_152b8

jmp_15350:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_15320
  goto jmp_e888

jmp_15378:
  r1 = *(u64 *)(r10 - 0x838)
  r2 = *(u64 *)(r10 - 0x818)
  if r2 == r1 goto jmp_154b0

jmp_15390:
  r8 = r10
  r8 += -0x18
  r1 = *(u64 *)(r10 - 0x818)
  r9 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x818) = r1
  r0 = *(u64 *)(r9 + 0x8)
  r2 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r10 - 0x840)
  goto jmp_15448

jmp_153e0:
  r1 = *(u64 *)(r9 + 0x10)
  r6 = *(u64 *)(r7 - 0x10)
  if r6 != r1 goto jmp_15428
  r1 = *(u64 *)(r9 + 0x18)
  r6 = *(u64 *)(r7 - 0x8)
  if r6 != r1 goto jmp_15428
  r1 = *(u64 *)(r9 + 0x20)
  r6 = *(u64 *)(r7 + 0x0)
  if r6 == r1 goto jmp_15460

jmp_15428:
  r7 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_15378

jmp_15448:
  r1 = *(u64 *)(r7 - 0x18)
  if r1 != r0 goto jmp_15428
  goto jmp_153e0

jmp_15460:
  w1 = *(u8 *)(r8 + 0x0)
  if w1 != 0x0 goto jmp_15428
  w1 = *(u8 *)(r9 + 0x1)
  if w1 != 0x0 goto jmp_15488

jmp_15480:
  goto jmp_141e0

jmp_15488:
  *(u8 *)(r8 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x830)
  w1 += 0x1
  *(u32 *)(r10 - 0x830) = w1
  goto jmp_15428

jmp_154b0:
  w2 = *(u8 *)(r5 + 0x58)
  w1 = *(u32 *)(r10 - 0x830)
  w1 &= 0xff
  if w1 < w2 goto jmp_15480
  goto jmp_de30

jmp_154d8:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_15630

jmp_154e8:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_155b8

jmp_15538:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_15598
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_15598
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_155d8

jmp_15598:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_154d8

jmp_155b8:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_15598
  goto jmp_15538

jmp_155d8:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_15598
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_15608

jmp_15600:
  goto jmp_141e0

jmp_15608:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_15598

jmp_15630:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_15600
  goto jmp_e520

jmp_15658:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_157b0

jmp_15668:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_15738

jmp_156b8:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_15718
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_15718
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_15758

jmp_15718:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_15658

jmp_15738:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_15718
  goto jmp_156b8

jmp_15758:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_15718
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_15788

jmp_15780:
  goto jmp_141e0

jmp_15788:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_15718

jmp_157b0:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_15780
  goto jmp_e0d0

jmp_157d8:
  r1 = *(u64 *)(r10 - 0x830)
  if r0 == r1 goto jmp_158f8

jmp_157e8:
  r7 = r10
  r7 += -0x18
  r8 = *(u64 *)(r0 + 0x0)
  r0 += 0x8
  r9 = *(u64 *)(r8 + 0x8)
  r2 = *(u64 *)(r10 - 0x820)
  r6 = *(u64 *)(r10 - 0x838)
  goto jmp_15890

jmp_15828:
  r5 = *(u64 *)(r8 + 0x10)
  r1 = *(u64 *)(r6 - 0x10)
  if r1 != r5 goto jmp_15870
  r1 = *(u64 *)(r8 + 0x18)
  r5 = *(u64 *)(r6 - 0x8)
  if r5 != r1 goto jmp_15870
  r1 = *(u64 *)(r8 + 0x20)
  r5 = *(u64 *)(r6 + 0x0)
  if r5 == r1 goto jmp_158a8

jmp_15870:
  r6 += 0x20
  r7 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_157d8

jmp_15890:
  r5 = *(u64 *)(r6 - 0x18)
  if r5 != r9 goto jmp_15870
  goto jmp_15828

jmp_158a8:
  w1 = *(u8 *)(r7 + 0x0)
  if w1 != 0x0 goto jmp_15870
  w1 = *(u8 *)(r8 + 0x1)
  if w1 != 0x0 goto jmp_158d0

jmp_158c8:
  goto jmp_141e0

jmp_158d0:
  *(u8 *)(r7 + 0x0) = 0x1
  w1 = *(u32 *)(r10 - 0x818)
  w1 += 0x1
  *(u32 *)(r10 - 0x818) = w1
  goto jmp_15870

jmp_158f8:
  w2 = *(u8 *)(r4 + 0x58)
  w1 = *(u32 *)(r10 - 0x818)
  w1 &= 0xff
  if w1 < w2 goto jmp_158c8
  goto jmp_94e8

jmp_15920:
  r1 = 0xc00000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x818)
  if r1 s< 0xa goto jmp_da18
  r1 = str_00df ll
  r9 = 0xa
  r2 = 0x1b
  r3 = *(u64 *)(r10 - 0x820)
  if r3 < 0x4 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  r3 = *(u64 *)(r1 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r3 != 0xa5 goto jmp_da40
  r1 = *(u64 *)(r10 - 0x828)
  w5 = *(u8 *)(r1 + 0xc4)
  r1 = str_0041 ll
  if w5 > 0x2 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w5 == 0x0 goto jmp_da40
  w0 = *(u8 *)(r8 + 0x11)
  r4 = *(u64 *)(r8 + 0x9)
  r3 = *(u64 *)(r10 - 0x800)
  r1 = *(u64 *)(r10 - 0x828)
  if r1 == r3 goto jmp_15cf8
  r6 = *(u64 *)(r3 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r6 != 0xa5 goto jmp_da40
  w6 = *(u8 *)(r3 + 0xc4)
  if w6 > 0x2 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w6 == 0x0 goto jmp_da40
  r1 = 0x1100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w5 == 0x2 goto jmp_da18
  if w6 == 0x2 goto jmp_da18
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r1 + 0x98)
  if r5 < r4 goto jmp_da18
  r1 = 0x300000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x58)
  r2 = *(u64 *)(r3 + 0x58)
  if r1 != r2 goto jmp_da18
  r2 = *(u64 *)(r3 + 0x60)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x60)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r3 + 0x68)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x68)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r3 + 0x70)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x70)
  if r6 != r2 goto jmp_da18

jmp_15b80:
  r2 = 0x300000000 ll
  *(u64 *)(r10 - 0x840) = r2
  r6 = *(u64 *)(r10 - 0x808)
  r2 = *(u64 *)(r6 + 0x8)
  if r2 == r1 goto jmp_15bb8
  goto jmp_da18

jmp_15bb8:
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x60)
  r2 = *(u64 *)(r6 + 0x10)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x68)
  r2 = *(u64 *)(r6 + 0x18)
  if r2 != r1 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x70)
  r2 = *(u64 *)(r6 + 0x20)
  if r2 == r1 goto jmp_15c20
  goto jmp_da18

jmp_15c20:
  r7 = *(u64 *)(r6 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r7 != 0x52 goto jmp_da40
  w7 = *(u8 *)(r6 + 0x85)
  if w7 > 0x1 goto jmp_da40
  r9 = 0x9
  r2 = 0x1b
  r1 = str_00c4 ll
  if w7 != 0x1 goto jmp_da40
  r1 = 0x1200000000 ll
  *(u64 *)(r10 - 0x840) = r1
  w1 = *(u8 *)(r6 + 0x84)
  if w0 == w1 goto jmp_15cb8
  goto jmp_da18

jmp_15cb8:
  r1 = r10
  r1 += -0x7f0
  r0 = *(u64 *)(r10 - 0x7f8)
  r2 = *(u64 *)(r10 - 0x828)
  w2 = *(u8 *)(r2 + 0xa0)
  if w2 == 0x1 goto jmp_15d60
  r2 = *(u64 *)(r0 + 0x8)
  goto jmp_15df8

jmp_15cf8:
  r1 = 0x1100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  if w5 == 0x2 goto jmp_da18
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r5 = *(u64 *)(r1 + 0x98)
  if r5 < r4 goto jmp_da18
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0x58)
  goto jmp_15b80

jmp_15d60:
  r2 = *(u64 *)(r0 + 0x8)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0xa4)
  if r6 != r2 goto jmp_15df8
  r7 = *(u64 *)(r0 + 0x10)
  r2 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r2 + 0xac)
  r2 = r6
  if r8 != r7 goto jmp_15df8
  r7 = *(u64 *)(r0 + 0x18)
  r2 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r2 + 0xb4)
  r2 = r6
  if r8 != r7 goto jmp_15df8
  r7 = *(u64 *)(r0 + 0x20)
  r2 = *(u64 *)(r10 - 0x828)
  r8 = *(u64 *)(r2 + 0xbc)
  r2 = r6
  if r8 == r7 goto jmp_16028

jmp_15df8:
  r6 = 0x400000000 ll
  *(u64 *)(r10 - 0x840) = r6
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x78)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x10)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x80)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x88)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r10 - 0x828)
  r6 = *(u64 *)(r6 + 0x90)
  if r6 != r2 goto jmp_da18
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_16278
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_16218
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_16278
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_16278
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_16278
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_15f38
  goto jmp_16278

jmp_15f38:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_161f8
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x20 goto jmp_16720
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_16720
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_165d8

jmp_16028:
  r2 = *(u64 *)(r0 + 0x50)
  if r2 != 0x163 goto jmp_163a8
  r2 = *(u64 *)(r0 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_16348
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_163a8
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_163a8
  r2 = *(u64 *)(r0 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_163a8
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 == r6 goto jmp_160d8
  goto jmp_163a8

jmp_160d8:
  w2 = *(u8 *)(r0 + 0x5a)
  if w2 != 0x1 goto jmp_16208
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r6 = *(u64 *)(r10 - 0x820)
  r6 <<= 0x3
  r2 = r10
  r2 += -0x810
  *(u64 *)(r10 - 0x840) = r2
  *(u32 *)(r10 - 0x11) = 0x0
  *(u64 *)(r10 - 0x18) = 0x0
  r2 = r6
  if r6 == 0x20 goto jmp_168a0
  w6 = *(u8 *)(r0 + 0x59)
  *(u64 *)(r10 - 0x838) = r6
  if r6 > 0xb goto jmp_161c8
  r6 = *(u64 *)(r10 - 0x838)
  if w6 == 0x0 goto jmp_168a0
  r6 = *(u64 *)(r10 - 0x840)
  r6 += r2
  *(u64 *)(r10 - 0x840) = r6
  r2 = *(u64 *)(r10 - 0x838)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x838) = r2
  w2 = 0x0
  *(u32 *)(r10 - 0x830) = w2
  r2 = r0
  r2 += 0x73
  *(u64 *)(r10 - 0x848) = r2
  goto jmp_16758

jmp_161c8:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x838)
  r3 = 0xb
  r4 = data_0718 ll
  call fn_18a18

jmp_161f8:
  if w2 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_16208:
  if w2 == 0x0 goto jmp_14b90
  goto jmp_ea80

jmp_16218:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_16278
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_16278
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_15f38

jmp_16278:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_162a8:
  if r4 == 0x0 goto jmp_16458
  r1 = *(u64 *)(r10 - 0x828)
  if r1 == r3 goto jmp_16458

jmp_162c0:
  r5 -= r4
  r1 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r1 + 0x98) = r5
  r5 = *(u64 *)(r3 + 0x50)
  r9 = 0x3
  r2 = 0x19
  r1 = str_0041 ll
  if r5 != 0xa5 goto jmp_da40
  r1 = *(u64 *)(r3 + 0x98)
  r1 += r4
  *(u64 *)(r3 + 0x98) = r1
  r0 = 0x0
  r1 = *(u64 *)(r10 - 0x828)
  w1 = *(u8 *)(r1 + 0xc5)
  if w1 != 0x1 goto jmp_e488
  goto jmp_e7b8

jmp_16348:
  r2 = *(u64 *)(r0 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_163a8
  r2 = *(u64 *)(r0 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_163a8
  r2 = *(u64 *)(r0 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_160d8

jmp_163a8:
  r1 = str_00a5 ll
  r2 = 0x1f
  r9 = 0x7
  w0 = *(u8 *)(r0 + 0x1)
  if w0 == 0x0 goto jmp_da40

jmp_163d8:
  r1 = 0x100000000 ll
  *(u64 *)(r10 - 0x840) = r1
  r1 = *(u64 *)(r10 - 0x828)
  r1 = *(u64 *)(r1 + 0xd1)
  if r1 < r4 goto jmp_da18
  r2 = *(u64 *)(r10 - 0x828)
  if r2 == r3 goto jmp_16458
  r2 = r1
  r2 -= r4
  r0 = *(u64 *)(r10 - 0x828)
  *(u64 *)(r0 + 0xd1) = r2
  if r1 != r4 goto jmp_16450
  r1 = *(u64 *)(r10 - 0x828)
  *(u8 *)(r1 + 0xa0) = 0x0

jmp_16450:
  if r4 != 0x0 goto jmp_162c0

jmp_16458:
  r1 = str_008c ll
  r9 = 0x6
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  r2 = 0x19
  if r4 != r5 goto jmp_da40
  r2 = *(u64 *)(r10 - 0x828)
  r4 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  r2 = 0x19
  if r4 == r5 goto jmp_16538
  goto jmp_da40

jmp_16538:
  r4 = *(u64 *)(r3 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_da40
  r4 = *(u64 *)(r3 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_da40
  r0 = 0x0
  r3 = *(u64 *)(r3 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r3 == r4 goto jmp_e488
  goto jmp_da40

jmp_165c8:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_16720

jmp_165d8:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_166a8

jmp_16628:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_16688
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_16688
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_166c8

jmp_16688:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_165c8

jmp_166a8:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_16688
  goto jmp_16628

jmp_166c8:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_16688
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_166f8

jmp_166f0:
  goto jmp_141e0

jmp_166f8:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_16688

jmp_16720:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_166f0
  goto jmp_162a8

jmp_16748:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_168a0

jmp_16758:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_16828

jmp_167a8:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_16808
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_16808
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_16848

jmp_16808:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_16748

jmp_16828:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_16808
  goto jmp_167a8

jmp_16848:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_16808
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_16878

jmp_16870:
  goto jmp_141e0

jmp_16878:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_16808

jmp_168a0:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_16870
  goto jmp_163d8

jmp_168c8:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_16a20

jmp_168d8:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_169a8

jmp_16928:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_16988
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_16988
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_169c8

jmp_16988:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_168c8

jmp_169a8:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_16988
  goto jmp_16928

jmp_169c8:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_16988
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_169f8

jmp_169f0:
  goto jmp_141e0

jmp_169f8:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_16988

jmp_16a20:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_169f0
  goto jmp_e620

jmp_16a48:
  r2 = *(u64 *)(r10 - 0x840)
  if r1 == r2 goto jmp_16ba0

jmp_16a58:
  r9 = r10
  r9 += -0x18
  r2 = *(u64 *)(r1 + 0x0)
  r1 += 0x8
  *(u64 *)(r10 - 0x820) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x818) = r2
  r2 = *(u64 *)(r10 - 0x838)
  r6 = *(u64 *)(r10 - 0x848)
  goto jmp_16b28

jmp_16aa8:
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_16b08
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_16b08
  r7 = *(u64 *)(r10 - 0x820)
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 == r7 goto jmp_16b48

jmp_16b08:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_16a48

jmp_16b28:
  r7 = *(u64 *)(r6 - 0x18)
  r8 = *(u64 *)(r10 - 0x818)
  if r7 != r8 goto jmp_16b08
  goto jmp_16aa8

jmp_16b48:
  w7 = *(u8 *)(r9 + 0x0)
  if w7 != 0x0 goto jmp_16b08
  r7 = *(u64 *)(r10 - 0x820)
  w7 = *(u8 *)(r7 + 0x1)
  if w7 != 0x0 goto jmp_16b78

jmp_16b70:
  goto jmp_141e0

jmp_16b78:
  *(u8 *)(r9 + 0x0) = 0x1
  w7 = *(u32 *)(r10 - 0x830)
  w7 += 0x1
  *(u32 *)(r10 - 0x830) = w7
  goto jmp_16b08

jmp_16ba0:
  w1 = *(u8 *)(r0 + 0x58)
  w2 = *(u32 *)(r10 - 0x830)
  w2 &= 0xff
  if w2 < w1 goto jmp_16b70
  goto jmp_e2d8

fn_16bc8:
  if w1 s> 0xc goto jmp_16c18
  if w1 s> 0x5 goto jmp_16c50
  if w1 s> 0x2 goto jmp_16d00
  if w1 == 0x0 goto jmp_16dc0
  r0 = 0x200000000 ll
  if w1 == 0x1 goto jmp_16f00
  r0 = 0x300000000 ll
  goto jmp_16f00

jmp_16c18:
  if w1 s> 0x12 goto jmp_16c80
  if w1 s> 0xf goto jmp_16d28
  if w1 == 0xd goto jmp_16de8
  if w1 == 0xe goto jmp_16ec0
  r0 = 0x1000000000 ll
  goto jmp_16f00

jmp_16c50:
  if w1 s> 0x8 goto jmp_16cb0
  if w1 == 0x6 goto jmp_16d90
  if w1 == 0x7 goto jmp_16e30
  r0 = 0x900000000 ll
  goto jmp_16f00

jmp_16c80:
  if w1 s> 0x15 goto jmp_16cd8
  if w1 == 0x13 goto jmp_16da8
  if w1 == 0x14 goto jmp_16e48
  r0 = 0x1600000000 ll
  goto jmp_16f00

jmp_16cb0:
  if w1 s> 0xa goto jmp_16d50
  if w1 == 0x9 goto jmp_16e60
  r0 = 0xb00000000 ll
  goto jmp_16f00

jmp_16cd8:
  if w1 s> 0x17 goto jmp_16d70
  if w1 == 0x16 goto jmp_16e78
  r0 = 0x1800000000 ll
  goto jmp_16f00

jmp_16d00:
  if w1 == 0x3 goto jmp_16e00
  if w1 == 0x4 goto jmp_16ed8
  r0 = 0x600000000 ll
  goto jmp_16f00

jmp_16d28:
  if w1 == 0x10 goto jmp_16e18
  if w1 == 0x11 goto jmp_16ef0
  r0 = 0x1300000000 ll
  goto jmp_16f00

jmp_16d50:
  if w1 == 0xb goto jmp_16e90
  r0 = 0xd00000000 ll
  goto jmp_16f00

jmp_16d70:
  if w1 == 0x18 goto jmp_16ea8
  r0 = 0x1a00000000 ll
  goto jmp_16f00

jmp_16d90:
  r0 = 0x700000000 ll
  goto jmp_16f00

jmp_16da8:
  r0 = 0x1400000000 ll
  goto jmp_16f00

jmp_16dc0:
  r0 = 0x100000000 ll
  if w2 == 0x0 goto jmp_16f00
  w0 = w2
  goto jmp_16f00

jmp_16de8:
  r0 = 0xe00000000 ll
  goto jmp_16f00

jmp_16e00:
  r0 = 0x400000000 ll
  goto jmp_16f00

jmp_16e18:
  r0 = 0x1100000000 ll
  goto jmp_16f00

jmp_16e30:
  r0 = 0x800000000 ll
  goto jmp_16f00

jmp_16e48:
  r0 = 0x1500000000 ll
  goto jmp_16f00

jmp_16e60:
  r0 = 0xa00000000 ll
  goto jmp_16f00

jmp_16e78:
  r0 = 0x1700000000 ll
  goto jmp_16f00

jmp_16e90:
  r0 = 0xc00000000 ll
  goto jmp_16f00

jmp_16ea8:
  r0 = 0x1900000000 ll
  goto jmp_16f00

jmp_16ec0:
  r0 = 0xf00000000 ll
  goto jmp_16f00

jmp_16ed8:
  r0 = 0x500000000 ll
  goto jmp_16f00

jmp_16ef0:
  r0 = 0x1200000000 ll

jmp_16f00:
  exit

fn_16f08:
  if w1 s> 0xc goto jmp_16f68
  if w1 s> 0x5 goto jmp_16fa8
  if w1 s> 0x2 goto jmp_17078
  if w1 == 0x0 goto jmp_17168
  r0 = str_000e ll
  r2 = 0x16
  if w1 == 0x1 goto jmp_17348
  r0 = str_0024 ll
  r2 = 0x1d
  goto jmp_17348

jmp_16f68:
  if w1 s> 0x12 goto jmp_16fe0
  if w1 s> 0xf goto jmp_170a8
  if w1 == 0xd goto jmp_171e0
  if w1 == 0xe goto jmp_172f8
  r0 = str_0156 ll
  r2 = 0x1b
  goto jmp_17348

jmp_16fa8:
  if w1 s> 0x8 goto jmp_17018
  if w1 == 0x6 goto jmp_17128
  if w1 == 0x7 goto jmp_17238
  r0 = str_0698 ll
  r2 = 0x20
  goto jmp_17348

jmp_16fe0:
  if w1 s> 0x15 goto jmp_17048
  if w1 == 0x13 goto jmp_17148
  if w1 == 0x14 goto jmp_17258
  r0 = str_0202 ll
  r2 = 0x2d
  goto jmp_17348

jmp_17018:
  if w1 s> 0xa goto jmp_170d8
  if w1 == 0x9 goto jmp_17278
  r0 = str_00df ll
  r2 = 0x1b
  goto jmp_17348

jmp_17048:
  if w1 s> 0x17 goto jmp_17100
  if w1 == 0x16 goto jmp_17298
  r0 = str_0249 ll
  r2 = 0x19
  goto jmp_17348

jmp_17078:
  if w1 == 0x3 goto jmp_171f8
  if w1 == 0x4 goto jmp_17310
  r0 = str_0074 ll
  r2 = 0x18
  goto jmp_17348

jmp_170a8:
  if w1 == 0x10 goto jmp_17218
  if w1 == 0x11 goto jmp_17330
  r0 = str_019c ll
  r2 = 0x29
  goto jmp_17348

jmp_170d8:
  if w1 == 0xb goto jmp_172b8
  r0 = str_0114 ll
  r2 = 0x1c
  goto jmp_17348

jmp_17100:
  if w1 == 0x18 goto jmp_172d8
  r0 = str_0262 ll
  r2 = 0x19
  goto jmp_17348

jmp_17128:
  r0 = str_008c ll
  r2 = 0x19
  goto jmp_17348

jmp_17148:
  r0 = str_01c5 ll
  r2 = 0x15
  goto jmp_17348

jmp_17168:
  r1 = r2
  r1 <<= 0x20
  r3 = 0xffffffff ll
  r1 |= r3
  if w2 < 0x14 goto jmp_171a0
  r1 = 0x1

jmp_171a0:
  r0 = str_0000 ll
  r2 = 0xe
  if w1 == -0x1 goto jmp_171c8
  goto jmp_17348

jmp_171c8:
  r1 >>= 0x20
  call fn_17350
  goto jmp_17348

jmp_171e0:
  r0 = str_0130 ll
  goto jmp_17340

jmp_171f8:
  r0 = str_0041 ll
  r2 = 0x19
  goto jmp_17348

jmp_17218:
  r0 = str_0171 ll
  r2 = 0x18
  goto jmp_17348

jmp_17238:
  r0 = str_00a5 ll
  r2 = 0x1f
  goto jmp_17348

jmp_17258:
  r0 = str_01da ll
  r2 = 0x28
  goto jmp_17348

jmp_17278:
  r0 = str_00c4 ll
  r2 = 0x1b
  goto jmp_17348

jmp_17298:
  r0 = str_022f ll
  r2 = 0x1a
  goto jmp_17348

jmp_172b8:
  r0 = str_00fa ll
  r2 = 0x1a
  goto jmp_17348

jmp_172d8:
  r0 = str_06d8 ll
  r2 = 0x10
  goto jmp_17348

jmp_172f8:
  r0 = str_0143 ll
  goto jmp_17340

jmp_17310:
  r0 = str_005a ll
  r2 = 0x1a
  goto jmp_17348

jmp_17330:
  r0 = str_0189 ll

jmp_17340:
  r2 = 0x13

jmp_17348:
  exit

fn_17350:
  w1 &= 0xff
  if w1 s> 0x9 goto jmp_173b0
  if w1 s> 0x4 goto jmp_173e8
  if w1 s> 0x1 goto jmp_17448
  r0 = str_027b ll
  r2 = 0x32
  if w1 == 0x0 goto jmp_17660
  r0 = str_02ad ll
  r2 = 0x19
  goto jmp_17660

jmp_173b0:
  if w1 s> 0xe goto jmp_17418
  if w1 s> 0xb goto jmp_17478
  if w1 == 0xa goto jmp_17608
  r0 = str_0414 ll
  r2 = 0x43
  goto jmp_17660

jmp_173e8:
  if w1 s> 0x6 goto jmp_174a8
  if w1 == 0x5 goto jmp_17628
  r0 = str_034e ll
  r2 = 0x26
  goto jmp_17660

jmp_17418:
  if w1 s> 0x10 goto jmp_174d8
  if w1 == 0xf goto jmp_17648
  r0 = str_04ee ll
  r2 = 0x2d
  goto jmp_17660

jmp_17448:
  if w1 == 0x2 goto jmp_17508
  if w1 == 0x3 goto jmp_17588
  r0 = str_0305 ll
  r2 = 0x1b
  goto jmp_17660

jmp_17478:
  if w1 == 0xc goto jmp_17528
  if w1 == 0xd goto jmp_175a8
  r0 = str_049b ll
  r2 = 0x1b
  goto jmp_17660

jmp_174a8:
  if w1 == 0x7 goto jmp_17548
  if w1 == 0x8 goto jmp_175c8
  r0 = str_03c6 ll
  r2 = 0x1d
  goto jmp_17660

jmp_174d8:
  if w1 == 0x11 goto jmp_17568
  if w1 == 0x12 goto jmp_175e8
  r0 = str_0563 ll
  r2 = 0x35
  goto jmp_17660

jmp_17508:
  r0 = str_02c6 ll
  r2 = 0x13
  goto jmp_17660

jmp_17528:
  r0 = str_0457 ll
  r2 = 0x1a
  goto jmp_17660

jmp_17548:
  r0 = str_0374 ll
  r2 = 0x29
  goto jmp_17660

jmp_17568:
  r0 = str_051b ll
  r2 = 0x18
  goto jmp_17660

jmp_17588:
  r0 = str_02d9 ll
  r2 = 0x2c
  goto jmp_17660

jmp_175a8:
  r0 = str_0471 ll
  r2 = 0x2a
  goto jmp_17660

jmp_175c8:
  r0 = str_039d ll
  r2 = 0x29
  goto jmp_17660

jmp_175e8:
  r0 = str_0533 ll
  r2 = 0x30
  goto jmp_17660

jmp_17608:
  r0 = str_03e3 ll
  r2 = 0x31
  goto jmp_17660

jmp_17628:
  r0 = str_0320 ll
  r2 = 0x2e
  goto jmp_17660

jmp_17648:
  r0 = str_04b6 ll
  r2 = 0x38

jmp_17660:
  exit

fn_17668:
  r0 = 0x0
  r2 = 0x3ff0000000000000 ll
  if r1 < r2 goto jmp_17720
  r2 = 0x43f0000000000000 ll
  if r1 < r2 goto jmp_176d0
  r0 = -0x1
  r2 = 0x7ff0000000000001 ll
  if r1 < r2 goto jmp_17720
  r0 = 0x0
  goto jmp_17720

jmp_176d0:
  r2 = r1
  r2 >>= 0x34
  r3 = 0x43e
  r3 -= r2
  r1 <<= 0xb
  r2 = -0x8000000000000000 ll
  r1 |= r2
  r1 >>= r3
  r0 = r1

jmp_17720:
  exit

fn_17728:
  r0 = 0x0
  if r1 == 0x0 goto jmp_17918
  r3 = r1
  r3 >>= 0x1
  r2 = r1
  r2 |= r3
  r3 = r2
  r3 >>= 0x2
  r2 |= r3
  r3 = r2
  r3 >>= 0x4
  r2 |= r3
  r3 = r2
  r3 >>= 0x8
  r2 |= r3
  r3 = r2
  r3 >>= 0x10
  r2 |= r3
  r3 = r2
  r3 >>= 0x20
  r2 |= r3
  r2 ^= -0x1
  r3 = 0x5555555555555555 ll
  r4 = r2
  r4 >>= 0x1
  r4 &= r3
  r2 -= r4
  r4 = 0x3333333333333333 ll
  r3 = r2
  r3 &= r4
  r2 >>= 0x2
  r2 &= r4
  r3 += r2
  r2 = r3
  r2 >>= 0x4
  r3 += r2
  r2 = 0xf0f0f0f0f0f0f0f ll
  r3 &= r2
  r2 = 0x101010101010101 ll
  r3 *= r2
  r3 >>= 0x38
  r1 <<= r3
  r3 <<= 0x34
  r2 = r1
  r2 >>= 0xb
  r0 = r2
  r0 -= r3
  r2 ^= -0x1
  r1 <<= 0x35
  r3 = r1
  r3 >>= 0x3f
  r3 &= r2
  r1 -= r3
  r1 >>= 0x3f
  r0 += r1
  r1 = 0x43d0000000000000 ll
  r0 += r1

jmp_17918:
  exit

fn_17920:
  r0 = -0x1
  r5 = 0x7fffffffffffffff ll
  r3 = r1
  r3 &= r5
  r6 = 0x7ff0000000000000 ll
  if r3 > r6 goto jmp_179f8
  r4 = r2
  r4 &= r5
  if r4 > r6 goto jmp_179f8
  r4 |= r3
  r0 = 0x0
  if r4 == 0x0 goto jmp_179f8
  r3 = r2
  r3 &= r1
  if r3 s> -0x1 goto jmp_179d0
  r0 = -0x1
  if r1 s> r2 goto jmp_179f8
  w0 = 0x1
  if r1 != r2 goto jmp_179f8
  goto jmp_179f0

jmp_179d0:
  r0 = -0x1
  if r1 s< r2 goto jmp_179f8
  w0 = 0x1
  if r1 != r2 goto jmp_179f8

jmp_179f0:
  w0 = 0x0

jmp_179f8:
  exit

fn_17a00:
  r0 = -0x1
  r5 = 0x7fffffffffffffff ll
  r3 = r1
  r3 &= r5
  r6 = 0x7ff0000000000000 ll
  if r3 > r6 goto jmp_17ad8
  r4 = r2
  r4 &= r5
  if r4 > r6 goto jmp_17ad8
  r4 |= r3
  r0 = 0x0
  if r4 == 0x0 goto jmp_17ad8
  r3 = r2
  r3 &= r1
  if r3 s> -0x1 goto jmp_17ab0
  r0 = -0x1
  if r1 s> r2 goto jmp_17ad8
  w0 = 0x1
  if r1 != r2 goto jmp_17ad8
  goto jmp_17ad0

jmp_17ab0:
  r0 = -0x1
  if r1 s< r2 goto jmp_17ad8
  w0 = 0x1
  if r1 != r2 goto jmp_17ad8

jmp_17ad0:
  w0 = 0x0

jmp_17ad8:
  exit

fn_17ae0:
  r0 = r1
  r1 = r2
  r1 ^= r0
  r3 = -0x8000000000000000 ll
  r1 &= r3
  r3 = 0xfffffffffffff ll
  r4 = r2
  r4 &= r3
  r5 = r0
  r5 &= r3
  r3 = r2
  r3 >>= 0x34
  r3 &= 0x7ff
  r6 = r0
  r6 >>= 0x34
  r6 &= 0x7ff
  r7 = r6
  r7 += -0x7ff
  if r7 < -0x7fe goto jmp_17d40
  w7 = 0x0
  r8 = r3
  r8 += -0x7ff
  if r8 < -0x7fe goto jmp_17d40

jmp_17ba8:
  r9 = r5
  r9 <<= 0x20
  r9 >>= 0x20
  r5 >>= 0x20
  r5 |= 0x100000
  r4 <<= 0xb
  r2 = r4
  r2 <<= 0x20
  r2 >>= 0x20
  r0 = r5
  r0 *= r2
  r8 = r9
  r8 *= r2
  r2 = r8
  r2 >>= 0x20
  r0 += r2
  r4 >>= 0x20
  r2 = 0x80000000 ll
  r4 |= r2
  r5 *= r4
  r2 = r0
  r2 >>= 0x20
  r2 += r5
  w3 += w6
  r4 *= r9
  r0 <<= 0x20
  r0 >>= 0x20
  r0 += r4
  w3 += w7
  r4 = r0
  r4 >>= 0x20
  r2 += r4
  r0 <<= 0x20
  r8 <<= 0x20
  r8 >>= 0x20
  r4 = r0
  r4 |= r8
  r5 = 0x10000000000000 ll
  r6 = r2
  r6 &= r5
  if r6 == 0x0 goto jmp_17d08
  goto jmp_17df8

jmp_17d08:
  r0 >>= 0x3f
  r2 <<= 0x1
  r2 |= r0
  r4 <<= 0x1
  w3 += -0x3ff
  if w3 s> 0x7fe goto jmp_17dd0
  goto jmp_17e08

jmp_17d40:
  r7 = 0x7fffffffffffffff ll
  r9 = r0
  r9 &= r7
  r8 = 0x7ff0000000000000 ll
  if r9 > r8 goto jmp_17e50
  r0 = r2
  r0 &= r7
  if r0 > r8 goto jmp_17e70
  r2 = 0x7ff0000000000000 ll
  if r9 == r2 goto jmp_17db0
  goto jmp_17f80

jmp_17db0:
  r2 = r0
  r0 = 0x7ff8000000000000 ll
  if r2 == 0x0 goto jmp_17f78

jmp_17dd0:
  r2 = 0x7ff0000000000000 ll

jmp_17de0:
  r1 |= r2
  r0 = r1
  goto jmp_17f78

jmp_17df8:
  w3 += -0x3fe
  if w3 s> 0x7fe goto jmp_17dd0

jmp_17e08:
  if w3 s< 0x1 goto jmp_17e98
  r5 = 0xfffffffffffff ll
  r2 &= r5
  r3 <<= 0x34
  r3 |= r2
  r5 = r4
  r2 = r3
  goto jmp_17f18

jmp_17e50:
  r1 = 0x8000000000000 ll
  r0 |= r1
  goto jmp_17f78

jmp_17e70:
  r1 = 0x8000000000000 ll
  r2 |= r1
  r0 = r2
  goto jmp_17f78

jmp_17e98:
  w7 = 0x1
  w6 = 0x1
  w6 -= w3
  r0 = r1
  if w6 > 0x3f goto jmp_17f78
  w3 += 0x3f
  r5 = r4
  r5 <<= r3
  if r5 != 0x0 goto jmp_17ee8
  w7 = 0x0

jmp_17ee8:
  r4 >>= r6
  r5 = r2
  r5 <<= r3
  r5 |= r4
  r5 |= r7
  r2 >>= r6

jmp_17f18:
  w4 = 0x1
  r3 = -0x8000000000000000 ll
  if r5 > r3 goto jmp_17f40
  w4 = 0x0

jmp_17f40:
  r2 |= r1
  r2 += r4
  r0 = r2
  r0 &= 0x1
  if r5 == r3 goto jmp_17f70
  r0 = 0x0

jmp_17f70:
  r0 += r2

jmp_17f78:
  exit

jmp_17f80:
  if r0 == r2 goto jmp_17f90
  goto jmp_17fb0

jmp_17f90:
  r0 = 0x7ff8000000000000 ll
  if r9 == 0x0 goto jmp_17f78
  goto jmp_17de0

jmp_17fb0:
  r2 = r0
  r0 = r1
  if r9 == 0x0 goto jmp_17f78
  r0 = r1
  if r2 == 0x0 goto jmp_17f78
  w7 = 0x0
  r8 = 0x10000000000000 ll
  r0 = r2
  if r9 < r8 goto jmp_18010
  if r0 < r8 goto jmp_181c0
  goto jmp_17ba8

jmp_18010:
  r9 = 0x40
  if r5 == 0x0 goto jmp_18190
  r7 = r5
  r7 >>= 0x1
  r0 = r5
  r0 |= r7
  r7 = r0
  r7 >>= 0x2
  r0 |= r7
  r7 = r0
  r7 >>= 0x4
  r0 |= r7
  r7 = r0
  r7 >>= 0x8
  r0 |= r7
  r7 = r0
  r7 >>= 0x10
  r0 |= r7
  r7 = r0
  r7 >>= 0x20
  r0 |= r7
  r0 ^= -0x1
  r7 = 0x5555555555555555 ll
  r8 = r0
  r8 >>= 0x1
  r8 &= r7
  r0 -= r8
  r8 = 0x10000000000000 ll
  r7 = 0x3333333333333333 ll
  r9 = r0
  r9 &= r7
  r0 >>= 0x2
  r0 &= r7
  r9 += r0
  r0 = r9
  r0 >>= 0x4
  r9 += r0
  r0 = 0xf0f0f0f0f0f0f0f ll
  r9 &= r0
  r0 = 0x101010101010101 ll
  r9 *= r0
  r0 = r2
  r9 >>= 0x38

jmp_18190:
  w7 = 0xc
  w7 -= w9
  w9 += -0xb
  r5 <<= r9
  if r0 < r8 goto jmp_181c0
  goto jmp_17ba8

jmp_181c0:
  r0 = 0x40
  if r4 == 0x0 goto jmp_18328
  r0 = r4
  r0 >>= 0x1
  r2 = r4
  r2 |= r0
  r0 = r2
  r0 >>= 0x2
  r2 |= r0
  r0 = r2
  r0 >>= 0x4
  r2 |= r0
  r0 = r2
  r0 >>= 0x8
  r2 |= r0
  r0 = r2
  r0 >>= 0x10
  r2 |= r0
  r0 = r2
  r0 >>= 0x20
  r2 |= r0
  r2 ^= -0x1
  r0 = 0x5555555555555555 ll
  r8 = r2
  r8 >>= 0x1
  r8 &= r0
  r2 -= r8
  r8 = 0x3333333333333333 ll
  r0 = r2
  r0 &= r8
  r2 >>= 0x2
  r2 &= r8
  r0 += r2
  r2 = r0
  r2 >>= 0x4
  r0 += r2
  r2 = 0xf0f0f0f0f0f0f0f ll
  r0 &= r2
  r2 = 0x101010101010101 ll
  r0 *= r2
  r0 >>= 0x38

jmp_18328:
  w7 -= w0
  w0 += -0xb
  r4 <<= r0
  w7 += 0xc
  goto jmp_17ba8

fn_18350:
  r5 = r2
  r5 *= r3
  r0 = r1
  r0 >>= 0x20
  r6 = r3
  r6 >>= 0x20
  r2 = r6
  r2 *= r0
  r2 += r5
  r4 *= r1
  r2 += r4
  r3 <<= 0x20
  r3 >>= 0x20
  r4 = r3
  r4 *= r0
  r1 <<= 0x20
  r1 >>= 0x20
  r3 *= r1
  r0 = r3
  r0 >>= 0x20
  r0 += r4
  r4 = r0
  r4 >>= 0x20
  r2 += r4
  r6 *= r1
  r0 <<= 0x20
  r0 >>= 0x20
  r0 += r6
  r1 = r0
  r1 >>= 0x20
  r2 += r1
  r0 <<= 0x20
  r3 <<= 0x20
  r3 >>= 0x20
  r0 |= r3
  exit

fn_18470:
  r6 = r1
  if r3 > 0x50 goto jmp_18550
  r1 = 0x0
  if r3 < 0x8 goto jmp_18510
  w4 = w2
  w4 &= 0xff
  r1 = 0x101010101010101 ll
  r4 *= r1
  r5 = 0x0
  r1 = 0x0

jmp_184c8:
  r0 = r6
  r0 += r5
  *(u64 *)(r0 + 0x0) = r4
  r1 += 0x8
  r0 = r5
  r0 += 0x10
  r5 = r1
  if r0 > r3 goto jmp_18510
  goto jmp_184c8

jmp_18510:
  if r1 >= r3 goto jmp_18540

jmp_18518:
  r4 = r6
  r4 += r1
  *(u8 *)(r4 + 0x0) = w2
  r1 += 0x1
  if r1 < r3 goto jmp_18518

jmp_18540:
  r0 = r6
  exit

jmp_18550:
  w2 &= 0xff
  r1 = r6
  call sol_memset_
  goto jmp_18540

fn_18570:
  if r3 > r2 goto jmp_18950
  if r4 > r2 goto jmp_18950
  if r3 > r4 goto jmp_18950
  if r3 == 0x0 goto jmp_18598
  if r3 < r2 goto jmp_18678

jmp_18598:
  if r4 == 0x0 goto jmp_18950
  if r4 < r2 goto jmp_185b0
  goto jmp_18950

jmp_185b0:
  r3 = r1
  r3 += r4
  w3 = *(u8 *)(r3 + 0x0)
  w3 <<= 0x18
  w3 s>>= 0x18
  if w3 s> -0x41 goto jmp_18950
  r3 = r4
  r3 += -0x1
  r0 = r1
  r0 += r3
  w0 = *(u8 *)(r0 + 0x0)
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s> -0x41 goto jmp_18808
  r3 = r4
  r3 += -0x2
  r0 = r1
  r0 += r3
  w0 = *(u8 *)(r0 + 0x0)
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s> -0x41 goto jmp_18808
  r3 = r4
  r3 += -0x3
  goto jmp_18808

jmp_18678:
  r0 = r1
  r0 += r3
  w0 = *(u8 *)(r0 + 0x0)
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s> -0x41 goto jmp_18598
  r0 = r3
  r0 += -0x1
  r4 = r1
  r4 += r0
  w4 = *(u8 *)(r4 + 0x0)
  w4 <<= 0x18
  w4 s>>= 0x18
  if w4 s> -0x41 goto jmp_18788
  r0 = r3
  r0 += -0x2
  r4 = r1
  r4 += r0
  w4 = *(u8 *)(r4 + 0x0)
  w4 <<= 0x18
  w4 s>>= 0x18
  if w4 s> -0x41 goto jmp_18788
  r0 = r3
  r0 += -0x3
  goto jmp_18788

jmp_18740:
  r4 = r1
  r4 += r3
  w4 = *(u8 *)(r4 + 0x0)
  w4 <<= 0x18
  w4 s>>= 0x18
  if w4 s> -0x41 goto jmp_188e0
  r3 += 0x1
  if r3 < r2 goto jmp_18788
  goto jmp_188e0

jmp_18788:
  if r3 < r2 goto jmp_18740
  goto jmp_18810

jmp_18798:
  r0 = r1
  r0 += r4
  w0 = *(u8 *)(r0 + 0x0)
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s> -0x41 goto jmp_187d8
  r4 += 0x1
  if r4 < r2 goto jmp_18808

jmp_187d8:
  if r3 > r4 goto jmp_18890
  if r4 > r2 goto jmp_18890
  if r3 == r2 goto jmp_18898
  if r3 != 0x0 goto jmp_18828

jmp_187f8:
  if r4 == r2 goto jmp_18898
  goto jmp_18860

jmp_18808:
  if r4 < r2 goto jmp_18798

jmp_18810:
  r1 = data_0730 ll
  call fn_18a00

jmp_18828:
  r0 = r1
  r0 += r3
  w0 = *(u8 *)(r0 + 0x0)
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s> -0x41 goto jmp_187f8
  goto jmp_18890

jmp_18860:
  r0 = r1
  r0 += r4
  w0 = *(u8 *)(r0 + 0x0)
  w0 <<= 0x18
  w0 s>>= 0x18
  if w0 s> -0x41 goto jmp_18898

jmp_18890:
  call fn_18a10

jmp_18898:
  if r3 == r4 goto jmp_18960
  r1 += r3
  w1 = *(u8 *)(r1 + 0x0)
  w2 = w1
  w2 <<= 0x18
  w2 s>>= 0x18
  if w2 s> -0x1 goto jmp_18950
  if w1 < 0xe0 goto jmp_18950
  goto jmp_18950

jmp_188e0:
  if r0 > r3 goto jmp_189d8
  if r3 > r2 goto jmp_189d8
  if r0 == r2 goto jmp_18910
  if r0 != 0x0 goto jmp_18970

jmp_18900:
  if r3 == r2 goto jmp_18910
  goto jmp_189a8

jmp_18910:
  if r0 == r3 goto jmp_18960
  r1 += r0
  w1 = *(u8 *)(r1 + 0x0)
  w2 = w1
  w2 <<= 0x18
  w2 s>>= 0x18
  if w2 s> -0x1 goto jmp_18950
  if w1 < 0xe0 goto jmp_18950

jmp_18950:
  r1 = r5
  call fn_189f8

jmp_18960:
  r1 = r5
  call fn_189f0

jmp_18970:
  r4 = r1
  r4 += r0
  w4 = *(u8 *)(r4 + 0x0)
  w4 <<= 0x18
  w4 s>>= 0x18
  if w4 s> -0x41 goto jmp_18900
  goto jmp_189d8

jmp_189a8:
  r4 = r1
  r4 += r3
  w4 = *(u8 *)(r4 + 0x0)
  w4 <<= 0x18
  w4 s>>= 0x18
  if w4 s> -0x41 goto jmp_18910

jmp_189d8:
  r4 = r3
  r3 = r0
  call fn_18a10

fn_189f0:
  call fn_18a08

fn_189f8:
  call fn_0000

fn_18a00:
  call fn_189f8

fn_18a08:
  call fn_189f8

fn_18a10:
  call fn_18570

fn_18a18:
  r1 = r4
  call fn_189f8

.rodata
  str_0000: .ascii "Error: Unknown"
  str_000e: .ascii "Error: InvalidArgument"
  str_0024: .ascii "Error: InvalidInstructionData"
  str_0041: .ascii "Error: InvalidAccountData"
  str_005a: .ascii "Error: AccountDataTooSmall"
  str_0074: .ascii "Error: InsufficientFunds"
  str_008c: .ascii "Error: IncorrectProgramId"
  str_00a5: .ascii "Error: MissingRequiredSignature"
  str_00c4: .ascii "Error: UninitializedAccount"
  str_00df: .ascii "Error: NotEnoughAccountKeys"
  str_00fa: .ascii "Error: AccountBorrowFailed"
  str_0114: .ascii "Error: MaxSeedLengthExceeded"
  str_0130: .ascii "Error: InvalidSeeds"
  str_0143: .ascii "Error: BorshIoError"
  str_0156: .ascii "Error: AccountNotRentExempt"
  str_0171: .ascii "Error: UnsupportedSysvar"
  str_0189: .ascii "Error: IllegalOwner"
  str_019c: .ascii "Error: MaxAccountsDataAllocationsExceeded"
  str_01c5: .ascii "Error: InvalidRealloc"
  str_01da: .ascii "Error: MaxInstructionTraceLengthExceeded"
  str_0202: .ascii "Error: BuiltinProgramsMustConsumeComputeUnits"
  str_022f: .ascii "Error: InvalidAccountOwner"
  str_0249: .ascii "Error: ArithmeticOverflow"
  str_0262: .ascii "Error: IncorrectAuthority"
  str_027b: .ascii "Error: Lamport balance below rent-exempt threshold"
  str_02ad: .ascii "Error: insufficient funds"
  str_02c6: .ascii "Error: Invalid Mint"
  str_02d9: .ascii "Error: Account not associated with this Mint"
  str_0305: .ascii "Error: owner does not match"
  str_0320: .ascii "Error: the total supply of this token is fixed"
  str_034e: .ascii "Error: account or token already in use"
  str_0374: .ascii "Error: Invalid number of provided signers"
  str_039d: .ascii "Error: Invalid number of required signers"
  str_03c6: .ascii "Error: State is uninitialized"
  str_03e3: .ascii "Error: Instruction does not support native tokens"
  str_0414: .ascii "Error: Non-native account can only be closed if its balance is zero"
  str_0457: .ascii "Error: Invalid instruction"
  str_0471: .ascii "Error: Invalid account state for operation"
  str_049b: .ascii "Error: Operation overflowed"
  str_04b6: .ascii "Error: Account does not support specified authority type"
  str_04ee: .ascii "Error: This token mint cannot freeze accounts"
  str_051b: .ascii "Error: Account is frozen"
  str_0533: .ascii "Error: decimals different from the Mint decimals"
  str_0563: .ascii "Error: Instruction does not support non-native tokens"
  data_0598: .byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  str_0698: .ascii "Error: AccountAlreadyInitialized"
  data_06b8: .byte 0x06, 0xa7, 0xd5, 0x17, 0x19, 0x2c, 0x5c, 0x51, 0x21, 0x8c, 0xc9, 0x4c, 0x3d, 0x4a, 0xf1, 0x7f, 0x58, 0xda, 0xee, 0x08, 0x9b, 0xa1, 0xfd, 0x44, 0xe3, 0xdb, 0xd9, 0x8a, 0x00, 0x00, 0x00, 0x00
  str_06d8: .ascii "Error: Immutable"
  data_06e8: .byte 0x3e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9f, 0x00, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00
  data_0700: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_0718: .byte 0x3e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00
  data_0730: .byte 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x71, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe6, 0x01, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x70, 0x69, 0x6e, 0x6f, 0x63, 0x63, 0x68, 0x69, 0x6f, 0x2f, 0x70, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x70, 0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x6f, 0x72, 0x2f, 0x73, 0x68, 0x61, 0x72, 0x65, 0x64, 0x2f, 0x69, 0x6e, 0x69, 0x74, 0x69, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x5f, 0x6d, 0x75, 0x6c, 0x74, 0x69, 0x73, 0x69, 0x67, 0x2e, 0x72, 0x73, 0x00, 0x70, 0x69, 0x6e, 0x6f, 0x63, 0x63, 0x68, 0x69, 0x6f, 0x2f, 0x70, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x70, 0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x6f, 0x72, 0x2f, 0x6d, 0x6f, 0x64, 0x2e, 0x72, 0x73, 0x00, 0x2f, 0x68, 0x6f, 0x6d, 0x65, 0x2f, 0x75, 0x62, 0x75, 0x6e, 0x74, 0x75, 0x2f, 0x2e, 0x72, 0x75, 0x73, 0x74, 0x75, 0x70, 0x2f, 0x74, 0x6f, 0x6f, 0x6c, 0x63, 0x68, 0x61, 0x69, 0x6e, 0x73, 0x2f, 0x6e, 0x69, 0x67, 0x68, 0x74, 0x6c, 0x79, 0x2d, 0x78, 0x38, 0x36, 0x5f, 0x36, 0x34, 0x2d, 0x75, 0x6e, 0x6b, 0x6e, 0x6f, 0x77, 0x6e, 0x2d, 0x6c, 0x69, 0x6e, 0x75, 0x78, 0x2d, 0x67, 0x6e, 0x75, 0x2f, 0x6c, 0x69, 0x62, 0x2f, 0x72, 0x75, 0x73, 0x74, 0x6c, 0x69, 0x62, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x72, 0x75, 0x73, 0x74, 0x2f, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x73, 0x74, 0x72, 0x2f, 0x6d, 0x6f, 0x64, 0x2e, 0x72, 0x73
