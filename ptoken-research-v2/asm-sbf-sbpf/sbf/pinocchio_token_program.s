# Generated with sbpf v0.3.0
# Generated on: 2026-09-10 20:49:16 UTC

.globl entrypoint

fn_0000:
  r1 = *(u64 *)(r1 + 0x8)
  w4 = *(u32 *)(r1 + 0x14)
  w3 = *(u32 *)(r1 + 0x10)
  r2 = *(u64 *)(r1 + 0x8)
  r1 = *(u64 *)(r1 + 0x0)
  call sol_panic_

fn_0030:
  r6 = r1
  r0 = 0x0
  r1 = 0xc
  r5 &= 0xff
  if r5 s<= 0xd goto jmp_01a8
  if r5 s> 0x16 goto jmp_0318
  if r5 s> 0x12 goto jmp_05e8
  if r5 == 0xe goto jmp_09e8
  if r5 != 0x10 goto jmp_4ee0
  if r4 < 0x20 goto jmp_4ee0
  r0 = 0xa
  if r2 < 0x2 goto jmp_3fb0
  r1 = 0x0
  if r2 == 0x2 goto jmp_4ee0
  r0 = 0x1
  r4 = *(u64 *)(r6 + 0x10)
  r2 = *(u64 *)(r4 + 0x8)
  r5 = 0x515c2c1917d5a706 ll
  if r2 != r5 goto jmp_3fb0
  r2 = *(u64 *)(r4 + 0x10)
  r5 = 0x7ff14a3d4cc98c21 ll
  if r2 != r5 goto jmp_3fb0
  r2 = *(u64 *)(r4 + 0x18)
  r5 = 0x44fda19b08eeda58 ll
  if r2 != r5 goto jmp_3fb0
  r2 = *(u64 *)(r4 + 0x20)
  r5 = 0x8ad9dbe3 ll
  if r2 != r5 goto jmp_3fb0
  r8 = *(u64 *)(r6 + 0x0)
  r9 = *(u64 *)(r8 + 0x50)
  r5 = r9
  r5 += 0x80
  r2 = *(u64 *)(r4 + 0x58)
  r2 *= r5
  r7 = *(u64 *)(r4 + 0x60)
  r4 = 0x3ff0000000000000 ll
  if r7 == r4 goto jmp_2e00
  r4 = 0x4000000000000000 ll
  if r7 != r4 goto jmp_2d00
  r2 <<= 0x1
  goto jmp_2e00

jmp_01a8:
  if r5 s<= 0x5 goto jmp_0388
  if r5 s> 0xa goto jmp_0498
  if r5 == 0x6 goto jmp_07b0
  if r5 != 0xa goto jmp_4ee0
  if r2 < 0x3 goto jmp_1ae0
  r0 = 0x3
  r1 = 0x0
  r3 = *(u64 *)(r6 + 0x0)
  r4 = *(u64 *)(r3 + 0x50)
  if r4 != 0xa5 goto jmp_4ee0
  w4 = *(u8 *)(r3 + 0xc4)
  if r4 > 0x2 goto jmp_4ee0
  if r4 == 0x2 goto jmp_0840
  r0 = 0x9
  if r4 == 0x0 goto jmp_4ee0
  r0 = 0x0
  r1 = 0xa
  w4 = *(u8 *)(r3 + 0xc5)
  if r4 == 0x1 goto jmp_4ee0
  r1 = 0x3
  r4 = *(u64 *)(r3 + 0x58)
  r7 = *(u64 *)(r6 + 0x8)
  r5 = *(u64 *)(r7 + 0x8)
  if r5 != r4 goto jmp_4ee0
  r4 = *(u64 *)(r3 + 0x60)
  r5 = *(u64 *)(r7 + 0x10)
  if r5 != r4 goto jmp_4ee0
  r4 = *(u64 *)(r3 + 0x68)
  r5 = *(u64 *)(r7 + 0x18)
  if r5 != r4 goto jmp_4ee0
  r4 = *(u64 *)(r3 + 0x70)
  r5 = *(u64 *)(r7 + 0x20)
  if r5 != r4 goto jmp_4ee0
  r1 = *(u64 *)(r7 + 0x50)
  if r1 != 0x52 goto jmp_6ad0
  w1 = *(u8 *)(r7 + 0x85)
  r4 = 0x3 ll
  if r1 == 0x1 goto jmp_4600
  r4 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_4610

jmp_02f8:
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_4630
  goto jmp_56f8

jmp_0318:
  if r5 s> 0x25 goto jmp_06f8
  if r5 == 0x17 goto jmp_0b38
  if r5 != 0x18 goto jmp_4ee0
  r7 = r2
  r1 = r10
  r1 += -0xfe8
  r2 = r3
  r3 = r4
  call fn_191d0
  r1 = *(u64 *)(r10 - 0xfe8)
  if r1 != 0x1 goto jmp_1320
  r0 = 0x0
  r1 = 0xc
  goto jmp_4ee0

jmp_0388:
  if r5 == 0x2 goto jmp_0ed8
  if r5 == 0x4 goto jmp_0858
  if r5 != 0x5 goto jmp_4ee0
  r0 = 0xa
  if r2 == 0x0 goto jmp_3fb0
  r1 = 0x0
  r3 = *(u64 *)(r6 + 0x0)
  r4 = *(u64 *)(r3 + 0x50)
  if r4 != 0xa5 goto jmp_1458
  w4 = *(u8 *)(r3 + 0xc4)
  if r4 > 0x2 goto jmp_1458
  if r4 == 0x0 goto jmp_50c0
  if r2 == 0x1 goto jmp_4ee0
  r0 = 0x0
  if r4 == 0x2 goto jmp_5100
  r4 = *(u64 *)(r6 + 0x8)
  r5 = r4
  r5 += 0x8
  w1 = *(u8 *)(r3 + 0xa0)
  if r1 != 0x1 goto jmp_26b8
  r1 = *(u64 *)(r5 + 0x0)
  r7 = *(u64 *)(r3 + 0xa4)
  if r7 != r1 goto jmp_36f0
  r1 = *(u64 *)(r4 + 0x10)
  r8 = *(u64 *)(r3 + 0xac)
  if r8 != r1 goto jmp_36e8
  r1 = *(u64 *)(r4 + 0x18)
  r8 = *(u64 *)(r3 + 0xb4)
  if r8 != r1 goto jmp_36e8
  r8 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r3 + 0xbc)
  r1 = r7
  if r9 != r8 goto jmp_36f0
  goto jmp_3710

jmp_0498:
  if r5 == 0xb goto jmp_07e8
  if r5 != 0xd goto jmp_4ee0
  if r4 < 0x9 goto jmp_4ee0
  if r2 < 0x4 goto jmp_4ed8
  r0 = 0x3
  r1 = 0x0
  r4 = *(u64 *)(r6 + 0x0)
  r5 = *(u64 *)(r4 + 0x50)
  if r5 != 0xa5 goto jmp_4ee0
  w5 = *(u8 *)(r4 + 0xc4)
  if r5 > 0x2 goto jmp_4ee0
  if r5 == 0x2 goto jmp_1fa8
  r0 = 0x9
  if r5 == 0x0 goto jmp_4ee0
  r0 = 0x0
  r1 = 0x3
  r7 = *(u64 *)(r4 + 0x58)
  r5 = *(u64 *)(r6 + 0x8)
  r8 = *(u64 *)(r5 + 0x8)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x60)
  r8 = *(u64 *)(r5 + 0x10)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x68)
  r8 = *(u64 *)(r5 + 0x18)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x70)
  r8 = *(u64 *)(r5 + 0x20)
  if r8 != r7 goto jmp_4ee0
  r1 = *(u64 *)(r5 + 0x50)
  if r1 != 0x52 goto jmp_4f98
  w1 = *(u8 *)(r5 + 0x85)
  r7 = 0x3 ll
  if r1 == 0x1 goto jmp_1fc0
  r7 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_1fd0

jmp_05c8:
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_1ff0
  goto jmp_6390

jmp_05e8:
  if r5 == 0x13 goto jmp_0c50
  if r5 != 0x15 goto jmp_4ee0
  r1 = 0x2
  if r2 == 0x0 goto jmp_1448
  r2 = *(u64 *)(r6 + 0x0)
  r3 = *(u64 *)(r2 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r3 != r4 goto jmp_4b18
  r3 = *(u64 *)(r2 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r3 != r4 goto jmp_4b18
  r3 = *(u64 *)(r2 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r3 != r4 goto jmp_4b18
  r3 = *(u64 *)(r2 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r3 != r4 goto jmp_4b18
  r3 = *(u64 *)(r2 + 0x50)
  if r3 != 0x52 goto jmp_4ee0
  w2 = *(u8 *)(r2 + 0x85)
  r3 = 0x3 ll
  if r2 == 0x1 goto jmp_1010
  r3 = 0x3
  r4 = 0x1a
  if r2 != 0x0 goto jmp_1020

jmp_06d8:
  r2 = r4
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_1040
  goto jmp_4ee0

jmp_06f8:
  if r5 == 0x26 goto jmp_0d20
  if r5 != 0x2d goto jmp_4ee0
  if r4 == 0x0 goto jmp_4ee0
  w5 = *(u8 *)(r3 + 0x0)
  if r5 != 0x0 goto jmp_4eb0
  if r2 <= 0x2 goto jmp_4ed8

jmp_0728:
  r0 = 0x3
  r1 = 0x0
  r3 = *(u64 *)(r6 + 0x0)
  r4 = *(u64 *)(r3 + 0x50)
  if r4 != 0xa5 goto jmp_4ee0
  w4 = *(u8 *)(r3 + 0xc4)
  if r4 > 0x2 goto jmp_4ee0
  r0 = 0x9
  if r4 == 0x0 goto jmp_4ee0
  w1 = *(u8 *)(r3 + 0xc5)
  if r1 != 0x1 goto jmp_26a0
  r4 = *(u64 *)(r3 + 0x98)
  if r5 == 0x0 goto jmp_36d0
  if r4 >= r7 goto jmp_38a0

jmp_0798:
  r0 = 0x0
  r1 = 0x1
  goto jmp_4ee0

jmp_07b0:
  if r4 < 0x2 goto jmp_4ee0
  w7 = *(u8 *)(r3 + 0x0)
  if r7 > 0x3 goto jmp_4ee0
  w5 = *(u8 *)(r3 + 0x1)
  if r5 != 0x0 goto jmp_1930
  r3 = 0x0
  goto jmp_1948

jmp_07e8:
  if r2 < 0x3 goto jmp_1ae0
  r0 = 0x3
  r1 = 0x0
  r3 = *(u64 *)(r6 + 0x0)
  r4 = *(u64 *)(r3 + 0x50)
  if r4 != 0xa5 goto jmp_4ee0
  w4 = *(u8 *)(r3 + 0xc4)
  if r4 > 0x2 goto jmp_4ee0
  if r4 == 0x2 goto jmp_1eb0
  r0 = 0x9
  if r4 == 0x0 goto jmp_4ee0

jmp_0840:
  r0 = 0x0
  r1 = 0xd
  goto jmp_4ee0

jmp_0858:
  if r4 < 0x8 goto jmp_4ee0
  if r2 <= 0x2 goto jmp_1ae0
  r0 = 0x3
  r1 = 0x0
  r4 = *(u64 *)(r6 + 0x0)
  r5 = *(u64 *)(r4 + 0x50)
  if r5 != 0xa5 goto jmp_4ee0
  w5 = *(u8 *)(r4 + 0xc4)
  if r5 > 0x2 goto jmp_4ee0
  if r5 == 0x2 goto jmp_1af0
  r0 = 0x9
  if r5 == 0x0 goto jmp_4ee0
  r0 = 0x0
  r1 = 0x4
  r7 = *(u64 *)(r4 + 0x78)
  r5 = *(u64 *)(r6 + 0x10)
  r8 = *(u64 *)(r5 + 0x8)
  if r7 != r8 goto jmp_4ee0
  r7 = *(u64 *)(r5 + 0x10)
  r8 = *(u64 *)(r4 + 0x80)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r5 + 0x18)
  r8 = *(u64 *)(r4 + 0x88)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r5 + 0x20)
  r8 = *(u64 *)(r4 + 0x90)
  if r8 != r7 goto jmp_4ee0
  r1 = *(u64 *)(r3 + 0x0)
  r3 = *(u64 *)(r5 + 0x50)
  if r3 != 0x163 goto jmp_3b30
  r3 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r3 == r0 goto jmp_3ad0
  r0 = -0x6c5e9a281e0922fa ll
  if r3 != r0 goto jmp_3b30
  r3 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r3 != r0 goto jmp_3b30
  r3 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r3 != r0 goto jmp_3b30
  r3 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r3 != r0 goto jmp_3b30
  goto jmp_55d8

jmp_09e8:
  if r4 < 0x9 goto jmp_4ee0
  if r2 < 0x3 goto jmp_4ed8
  r0 = 0x3
  r1 = 0x0
  r4 = *(u64 *)(r6 + 0x8)
  r5 = *(u64 *)(r4 + 0x50)
  if r5 != 0xa5 goto jmp_4ee0
  w5 = *(u8 *)(r4 + 0xc4)
  if r5 > 0x2 goto jmp_4ee0
  r0 = 0x9
  if r5 == 0x0 goto jmp_4ee0
  r0 = 0x0
  if r5 == 0x2 goto jmp_50d0
  w1 = *(u8 *)(r4 + 0xc5)
  if r1 == 0x1 goto jmp_50e0
  r1 = 0x3
  r7 = *(u64 *)(r4 + 0x58)
  r5 = *(u64 *)(r6 + 0x0)
  r8 = *(u64 *)(r5 + 0x8)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x60)
  r8 = *(u64 *)(r5 + 0x10)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x68)
  r8 = *(u64 *)(r5 + 0x18)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x70)
  r8 = *(u64 *)(r5 + 0x20)
  if r8 != r7 goto jmp_4ee0
  r1 = *(u64 *)(r5 + 0x50)
  if r1 != 0x52 goto jmp_4f98
  w1 = *(u8 *)(r5 + 0x85)
  r7 = 0x3 ll
  if r1 == 0x1 goto jmp_1660
  r7 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_1670

jmp_0b18:
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_1690
  goto jmp_6390

jmp_0b38:
  if r4 < 0x8 goto jmp_4ee0
  if r2 == 0x0 goto jmp_1430
  r0 = 0x6
  r2 = *(u64 *)(r6 + 0x0)
  r1 = *(u64 *)(r2 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r1 != r4 goto jmp_3fb0
  r1 = *(u64 *)(r2 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r1 != r4 goto jmp_3fb0
  r1 = *(u64 *)(r2 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r1 != r4 goto jmp_3fb0
  r1 = *(u64 *)(r2 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r1 != r4 goto jmp_3fb0
  r0 = 0x0
  r1 = 0x2
  r4 = *(u64 *)(r2 + 0x50)
  if r4 != 0x52 goto jmp_4ee0
  w5 = *(u8 *)(r2 + 0x85)
  r6 = 0x3 ll
  if r5 == 0x1 goto jmp_1098
  r6 = 0x3
  r4 = 0x1a
  if r5 != 0x0 goto jmp_10a8

jmp_0c30:
  r5 = r4
  r5 &= 0x1b
  if r5 == 0x1a goto jmp_10c8
  goto jmp_4ee0

jmp_0c50:
  if r4 == 0x0 goto jmp_4ee0
  if r2 == 0x0 goto jmp_1ae0
  r9 = r2
  w7 = *(u8 *)(r3 + 0x0)
  *(u64 *)(r10 - 0xed8) = r6
  r8 = *(u64 *)(r6 + 0x0)
  r6 = *(u64 *)(r8 + 0x50)
  r1 = r10
  r1 += -0xfe8
  call fn_16b58
  w1 = *(u32 *)(r10 - 0xfe8)
  if r1 == 0x1 goto jmp_4250
  r6 += 0x80
  r2 = *(u64 *)(r10 - 0xfe0)
  r2 *= r6
  r6 = *(u64 *)(r10 - 0xfd8)
  r3 = *(u64 *)(r8 + 0x48)
  r1 = 0x3ff0000000000000 ll
  *(u64 *)(r10 - 0xed0) = r3
  if r6 == r1 goto jmp_2818
  r1 = 0x4000000000000000 ll
  if r6 != r1 goto jmp_2738
  r2 <<= 0x1
  goto jmp_2818

jmp_0d20:
  if r2 < 0x3 goto jmp_4ed8
  r3 = r6
  r3 += 0x18
  r8 = *(u64 *)(r6 + 0x0)
  r7 = *(u64 *)(r8 + 0x50)
  if r7 == 0x52 goto jmp_1b08
  if r7 == 0x163 goto jmp_1810
  r1 = 0xd
  if r7 != 0xa5 goto jmp_4ee0
  r0 = 0x3
  r1 = 0x0
  w4 = *(u8 *)(r8 + 0xc4)
  if r4 > 0x2 goto jmp_4ee0
  r0 = 0x9
  if r4 == 0x0 goto jmp_4ee0
  r0 = 0x0
  r1 = 0xa
  w4 = *(u8 *)(r8 + 0xc5)
  if r4 == 0x1 goto jmp_4ee0
  r1 = 0x4
  r5 = *(u64 *)(r8 + 0x78)
  r4 = *(u64 *)(r6 + 0x10)
  r9 = *(u64 *)(r4 + 0x8)
  if r5 != r9 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r8 + 0x80)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r8 + 0x88)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r8 + 0x90)
  if r9 != r5 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r1 == r5 goto jmp_41b0
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_4210
  goto jmp_60a8

jmp_0ed8:
  if r4 == 0x0 goto jmp_4ee0
  if r2 < 0x2 goto jmp_1ae0
  r0 = 0x1
  r1 = *(u64 *)(r6 + 0x8)
  r4 = *(u64 *)(r1 + 0x8)
  r5 = 0x515c2c1917d5a706 ll
  if r4 != r5 goto jmp_3fb0
  r4 = *(u64 *)(r1 + 0x10)
  r5 = 0x7ff14a3d4cc98c21 ll
  if r4 != r5 goto jmp_3fb0
  r4 = *(u64 *)(r1 + 0x18)
  r5 = 0x44fda19b08eeda58 ll
  if r4 != r5 goto jmp_3fb0
  r4 = *(u64 *)(r1 + 0x20)
  r5 = 0x8ad9dbe3 ll
  if r4 != r5 goto jmp_3fb0
  w5 = *(u8 *)(r3 + 0x0)
  r8 = *(u64 *)(r6 + 0x0)
  r9 = *(u64 *)(r8 + 0x50)
  r4 = r9
  r4 += 0x80
  r3 = *(u64 *)(r1 + 0x58)
  r3 *= r4
  r4 = *(u64 *)(r8 + 0x48)
  r7 = *(u64 *)(r1 + 0x60)
  r1 = 0x3ff0000000000000 ll
  *(u64 *)(r10 - 0xec8) = r5
  *(u64 *)(r10 - 0xed0) = r4
  if r7 == r1 goto jmp_2270
  r1 = 0x4000000000000000 ll
  if r7 != r1 goto jmp_2178
  r3 <<= 0x1
  goto jmp_2270

jmp_1010:
  r4 = 0x1a
  if r2 == 0x0 goto jmp_06d8

jmp_1020:
  r4 = r3
  r2 = r4
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_4ee0

jmp_1040:
  r2 = data_0000 ll
  if r4 < r2 goto jmp_4ee0
  *(u64 *)(r10 - 0xfe8) = 0xa5
  r1 = r10
  r1 += -0xfe8
  r2 = 0x8
  call sol_set_return_data
  r1 = 0x2
  r0 = 0x1a
  goto jmp_4ee0

jmp_1098:
  r4 = 0x1a
  if r5 == 0x0 goto jmp_0c30

jmp_10a8:
  r4 = r6
  r5 = r4
  r5 &= 0x1b
  if r5 != 0x1a goto jmp_4ee0

jmp_10c8:
  r5 = data_0000 ll
  if r4 < r5 goto jmp_4ee0
  r1 = *(u64 *)(r3 + 0x0)
  r6 = r10
  r6 += -0xfe0
  *(u64 *)(r10 - 0xfe8) = 0x0
  w0 = *(u8 *)(r2 + 0x84)
  if r1 == 0x0 goto jmp_2150
  r7 = 0x0
  r9 = 0x0

jmp_1120:
  r2 = r1
  r3 = r10
  r3 += -0x1000
  r3 += r9
  r1 /= 0xa
  r4 = r1
  r4 *= 0xa
  r5 = r2
  r5 -= r4
  r5 |= 0x30
  *(u8 *)(r3 + 0x13) = w5
  r7 += 0x1
  r9 += -0x1
  if r2 > 0x9 goto jmp_1120
  r2 = r10
  r2 += -0x1000
  r2 += r9
  r8 = r9
  r8 = -r8
  r2 += 0x14
  *(u64 *)(r10 - 0xed8) = r0
  if r0 == 0x0 goto jmp_26c8
  r4 = r8
  if r8 < 0x101 goto jmp_11e8
  r4 = 0x101

jmp_11e8:
  r3 = 0x1
  r3 -= r9
  r5 = r0
  r5 += 0x2
  r1 = r3
  if r8 > r0 goto jmp_1220
  r1 = r5

jmp_1220:
  *(u64 *)(r10 - 0xed0) = r1
  if r8 <= r0 goto jmp_2878
  *(u64 *)(r10 - 0xec8) = r3
  r4 -= r0
  r1 = r6
  r3 = r4
  r8 = r4
  call fn_16b00
  r1 = r6
  r1 += r8
  *(u8 *)(r1 + 0x0) = 0x2e
  if r8 > 0xff goto jmp_28e0
  r3 = 0x100
  r3 -= r8
  if r7 < 0x101 goto jmp_12a0
  r7 = 0x101

jmp_12a0:
  r2 = *(u64 *)(r10 - 0xed8)
  r7 -= r2
  if r3 < r2 goto jmp_12c0
  r3 = r2

jmp_12c0:
  r2 = r10
  r2 += -0x1000
  r7 += r2
  r7 += r9
  r7 += 0x14
  r1 += 0x1
  r2 = r7
  call fn_16b00
  r1 = *(u64 *)(r10 - 0xed0)
  r2 = *(u64 *)(r10 - 0xec8)
  if r1 > 0x101 goto jmp_28f8
  goto jmp_2908

jmp_1320:
  if r7 == 0x0 goto jmp_1430
  r0 = 0x6
  r2 = *(u64 *)(r6 + 0x0)
  r1 = *(u64 *)(r2 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r1 != r3 goto jmp_3fb0
  r1 = *(u64 *)(r2 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r1 != r3 goto jmp_3fb0
  r1 = *(u64 *)(r2 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r1 != r3 goto jmp_3fb0
  r1 = *(u64 *)(r2 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r1 != r3 goto jmp_3fb0
  r0 = 0x0
  r1 = 0x2
  r3 = *(u64 *)(r2 + 0x50)
  if r3 != 0x52 goto jmp_4ee0
  w4 = *(u8 *)(r2 + 0x85)
  r5 = 0x3 ll
  if r4 == 0x1 goto jmp_1468
  r5 = 0x3
  r3 = 0x1a
  if r4 != 0x0 goto jmp_1478

jmp_1410:
  r4 = r3
  r4 &= 0x1b
  if r4 == 0x1a goto jmp_1498
  goto jmp_4ee0

jmp_1430:
  r0 = 0xa
  r1 = 0x0
  goto jmp_4ee0

jmp_1448:
  r0 = 0xa
  goto jmp_4ee0

jmp_1458:
  r0 = 0x3
  goto jmp_4ee0

jmp_1468:
  r3 = 0x1a
  if r4 == 0x0 goto jmp_1410

jmp_1478:
  r3 = r5
  r4 = r3
  r4 &= 0x1b
  if r4 != 0x1a goto jmp_4ee0

jmp_1498:
  r4 = data_0000 ll
  if r3 < r4 goto jmp_4ee0
  r8 = *(u64 *)(r10 - 0xfd8)
  r6 = *(u64 *)(r10 - 0xfe0)
  r9 = 0x0
  w1 = *(u8 *)(r2 + 0x84)
  *(u64 *)(r10 - 0xed8) = r1
  r7 = 0x1
  goto jmp_1500

jmp_14e8:
  r1 += 0x1
  r9 = r1
  if r1 > r8 goto jmp_1cf0

jmp_1500:
  r2 = r6
  r2 += r9
  r3 = r8
  r3 -= r9
  if r3 >= 0x10 goto jmp_1580
  r1 = 0x0
  if r3 == 0x0 goto jmp_1598

jmp_1538:
  r4 = r2
  r4 += r1
  w4 = *(u8 *)(r4 + 0x0)
  if r4 == 0x2e goto jmp_15a8
  r1 += 0x1
  if r1 < r3 goto jmp_1538
  r0 = 0x0
  r1 = r3
  goto jmp_15b0

jmp_1580:
  r1 = 0x2e
  call fn_198f0
  goto jmp_15b0

jmp_1598:
  r0 = 0x0
  goto jmp_15b0

jmp_15a8:
  r0 = 0x1

jmp_15b0:
  r2 = 0x0
  if r0 != 0x1 goto jmp_1cf0
  r1 += r9
  if r1 >= r8 goto jmp_14e8
  r3 = r6
  r3 += r1
  w3 = *(u8 *)(r3 + 0x0)
  if r3 != 0x2e goto jmp_14e8
  r3 = r1
  r3 += 0x1
  if r8 <= r3 goto jmp_1638
  r2 = r6
  r2 += r3
  w2 = *(u8 *)(r2 + 0x0)
  r2 <<= 0x38
  r2 s>>= 0x38
  if r2 s< -0x40 goto jmp_7f10

jmp_1638:
  r7 = r6
  r7 += r3
  r8 -= r3
  r2 = r8
  goto jmp_1d20

jmp_1660:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_0b18

jmp_1670:
  r0 = r7
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6390

jmp_1690:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_76a0
  w7 = *(u8 *)(r3 + 0x8)
  r0 = 0x0
  r1 = 0x12
  w8 = *(u8 *)(r5 + 0x84)
  if r7 != r8 goto jmp_4ee0
  r1 = 0x5
  w7 = *(u8 *)(r5 + 0x58)
  if r7 != 0x1 goto jmp_4ee0
  r1 = 0x4
  r8 = *(u64 *)(r5 + 0x5c)
  r7 = *(u64 *)(r6 + 0x10)
  r9 = *(u64 *)(r7 + 0x8)
  if r8 != r9 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x10)
  r9 = *(u64 *)(r5 + 0x64)
  if r9 != r8 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r5 + 0x6c)
  if r9 != r8 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x20)
  r9 = *(u64 *)(r5 + 0x74)
  if r9 != r8 goto jmp_4ee0
  r1 = *(u64 *)(r3 + 0x0)
  r3 = *(u64 *)(r7 + 0x50)
  if r3 != 0x163 goto jmp_4460
  r3 = *(u64 *)(r7 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r3 == r0 goto jmp_4400
  r0 = -0x6c5e9a281e0922fa ll
  if r3 != r0 goto jmp_4460
  r3 = *(u64 *)(r7 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r3 != r0 goto jmp_4460
  r3 = *(u64 *)(r7 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r3 != r0 goto jmp_4460
  r3 = *(u64 *)(r7 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r3 != r0 goto jmp_4460
  goto jmp_6578

jmp_1810:
  r1 = 0x4
  r5 = *(u64 *)(r8 + 0x8)
  r4 = *(u64 *)(r6 + 0x10)
  r9 = *(u64 *)(r4 + 0x8)
  if r5 != r9 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r8 + 0x10)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r8 + 0x18)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r8 + 0x20)
  if r9 != r5 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r1 == r5 goto jmp_3a10
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_4210
  goto jmp_3a70

jmp_1930:
  if r5 != 0x1 goto jmp_4ee0
  if r4 < 0x22 goto jmp_4ee0
  r3 += 0x2

jmp_1948:
  if r2 <= 0x1 goto jmp_1ae0
  r5 = r6
  r5 += 0x10
  r4 = *(u64 *)(r6 + 0x0)
  r0 = *(u64 *)(r4 + 0x50)
  if r0 == 0x52 goto jmp_3438
  if r0 != 0xa5 goto jmp_2690
  r0 = 0x3
  w8 = *(u8 *)(r4 + 0xc4)
  if r8 > 0x2 goto jmp_2868
  if r8 == 0x2 goto jmp_1af0
  r0 = 0x9
  if r8 == 0x0 goto jmp_2868
  r0 = 0x0
  if r7 == 0x3 goto jmp_4920
  if r7 != 0x2 goto jmp_4b08
  r8 = *(u64 *)(r4 + 0x78)
  r7 = *(u64 *)(r6 + 0x8)
  r9 = *(u64 *)(r7 + 0x8)
  if r8 != r9 goto jmp_50f0
  r8 = *(u64 *)(r7 + 0x10)
  r9 = *(u64 *)(r4 + 0x80)
  if r9 != r8 goto jmp_50f0
  r8 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r4 + 0x88)
  if r9 != r8 goto jmp_50f0
  r8 = *(u64 *)(r7 + 0x20)
  r9 = *(u64 *)(r4 + 0x90)
  if r9 != r8 goto jmp_50f0
  r8 = *(u64 *)(r7 + 0x50)
  if r8 != 0x163 goto jmp_4b88
  r8 = *(u64 *)(r7 + 0x28)
  r9 = -0x21708a111e0922fa ll
  if r8 == r9 goto jmp_4b28
  r9 = -0x6c5e9a281e0922fa ll
  if r8 != r9 goto jmp_4b88
  r8 = *(u64 *)(r7 + 0x30)
  r9 = -0x53861431b91e3427 ll
  if r8 != r9 goto jmp_4b88
  r8 = *(u64 *)(r7 + 0x38)
  r9 = -0x6ec8a4a0127a4be4 ll
  if r8 != r9 goto jmp_4b88
  r8 = *(u64 *)(r7 + 0x40)
  r9 = -0x56ff00817a0a73c6 ll
  if r8 != r9 goto jmp_4b88
  goto jmp_6af8

jmp_1ae0:
  r0 = 0xa
  goto jmp_4ee0

jmp_1af0:
  r0 = 0x0
  r1 = 0x11
  goto jmp_4ee0

jmp_1b08:
  w1 = *(u8 *)(r8 + 0x85)
  r5 = 0x3 ll
  if r1 == 0x1 goto jmp_1ca0
  r5 = 0x3
  r4 = 0x1a
  if r1 != 0x0 goto jmp_1cb0

jmp_1b40:
  r1 = r4
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_1cd0

jmp_1b58:
  r1 = data_0000 ll
  if r4 < r1 goto jmp_76a0
  w1 = *(u8 *)(r8 + 0x58)
  if r1 != 0x1 goto jmp_3630
  r1 = 0x4
  r5 = *(u64 *)(r8 + 0x5c)
  r4 = *(u64 *)(r6 + 0x10)
  r9 = *(u64 *)(r4 + 0x8)
  if r5 != r9 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r8 + 0x64)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r8 + 0x6c)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r8 + 0x74)
  if r9 != r5 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r1 == r5 goto jmp_40f0
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_4210
  goto jmp_4150

jmp_1ca0:
  r4 = 0x1a
  if r1 == 0x0 goto jmp_1b40

jmp_1cb0:
  r4 = r5
  r1 = r4
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_1b58

jmp_1cd0:
  r1 = r4
  r1 >>= 0x20
  r0 = r4
  goto jmp_4ee0

jmp_1cf0:
  r1 = r8
  goto jmp_1d20

jmp_1d00:
  r2 += -0x1
  r4 = r3
  r2 -= r7
  if r4 != 0x30 goto jmp_1e50

jmp_1d20:
  r8 = r2
  if r8 == 0x0 goto jmp_2680
  r2 = r7
  r2 += r8
  w3 = *(u8 *)(r2 - 0x1)
  r3 <<= 0x38
  r3 s>>= 0x38
  if r3 s> -0x1 goto jmp_1d00
  w5 = *(u8 *)(r2 - 0x2)
  r5 <<= 0x38
  r5 s>>= 0x38
  if r5 s>= -0x40 goto jmp_1de0
  w4 = *(u8 *)(r2 - 0x3)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s>= -0x40 goto jmp_1e00
  r0 = r4
  r0 &= 0x3f
  w4 = *(u8 *)(r2 - 0x4)
  r4 &= 0x7
  r4 <<= 0x6
  r4 |= r0
  r2 += -0x4
  goto jmp_1e10

jmp_1de0:
  r2 += -0x2
  r5 &= 0x1f
  r4 = r5
  goto jmp_1e28

jmp_1e00:
  r2 += -0x3
  r4 &= 0xf

jmp_1e10:
  r5 &= 0x3f
  r4 <<= 0x6
  r4 |= r5

jmp_1e28:
  r3 &= 0x3f
  r4 <<= 0x6
  r4 |= r3
  r2 -= r7
  if r4 == 0x30 goto jmp_1d20

jmp_1e50:
  if r8 > 0xf goto jmp_2ed8
  r3 = 0x0

jmp_1e60:
  r2 = r7
  r2 += r3
  w4 = *(u8 *)(r2 + 0x0)
  r2 = 0x1
  if r4 == 0x2e goto jmp_1e90
  r2 = 0x0

jmp_1e90:
  if r4 == 0x2e goto jmp_2f20
  r3 += 0x1
  if r3 < r8 goto jmp_1e60
  goto jmp_2f20

jmp_1eb0:
  r0 = 0x0
  r1 = 0xa
  w4 = *(u8 *)(r3 + 0xc5)
  if r4 == 0x1 goto jmp_4ee0
  r1 = 0x3
  r4 = *(u64 *)(r3 + 0x58)
  r7 = *(u64 *)(r6 + 0x8)
  r5 = *(u64 *)(r7 + 0x8)
  if r5 != r4 goto jmp_4ee0
  r4 = *(u64 *)(r3 + 0x60)
  r5 = *(u64 *)(r7 + 0x10)
  if r5 != r4 goto jmp_4ee0
  r4 = *(u64 *)(r3 + 0x68)
  r5 = *(u64 *)(r7 + 0x18)
  if r5 != r4 goto jmp_4ee0
  r4 = *(u64 *)(r3 + 0x70)
  r5 = *(u64 *)(r7 + 0x20)
  if r5 != r4 goto jmp_4ee0
  r1 = *(u64 *)(r7 + 0x50)
  if r1 != 0x52 goto jmp_6ad0
  w1 = *(u8 *)(r7 + 0x85)
  r4 = 0x3 ll
  if r1 == 0x1 goto jmp_4790
  r4 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_47a0

jmp_1f88:
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_47c0
  goto jmp_56f8

jmp_1fa8:
  r0 = 0x0
  r1 = 0x11
  goto jmp_4ee0

jmp_1fc0:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_05c8

jmp_1fd0:
  r0 = r7
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6390

jmp_1ff0:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_76a0
  w1 = *(u8 *)(r3 + 0x8)
  r0 = 0x0
  w5 = *(u8 *)(r5 + 0x84)
  if r1 != r5 goto jmp_5740
  r1 = 0x4
  r7 = *(u64 *)(r4 + 0x78)
  r5 = *(u64 *)(r6 + 0x18)
  r8 = *(u64 *)(r5 + 0x8)
  if r7 != r8 goto jmp_4ee0
  r7 = *(u64 *)(r5 + 0x10)
  r8 = *(u64 *)(r4 + 0x80)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r5 + 0x18)
  r8 = *(u64 *)(r4 + 0x88)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r5 + 0x20)
  r8 = *(u64 *)(r4 + 0x90)
  if r8 != r7 goto jmp_4ee0
  r1 = *(u64 *)(r3 + 0x0)
  r3 = *(u64 *)(r5 + 0x50)
  if r3 != 0x163 goto jmp_3d48
  r3 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r3 == r0 goto jmp_3ce8
  r0 = -0x6c5e9a281e0922fa ll
  if r3 != r0 goto jmp_3d48
  r3 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r3 != r0 goto jmp_3d48
  r3 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r3 != r0 goto jmp_3d48
  r3 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r3 != r0 goto jmp_3d48
  goto jmp_5808

jmp_2150:
  r7 = 0x1
  *(u64 *)(r10 - 0xfe8) = 0x1
  *(u8 *)(r10 - 0xfe0) = 0x30
  if r0 != 0x0 goto jmp_2970
  goto jmp_2cd8

jmp_2178:
  *(u64 *)(r10 - 0xec0) = r2
  *(u64 *)(r10 - 0xed8) = r6
  r1 = r3
  call fn_1b938
  r1 = r7
  r2 = r0
  call fn_1bbf0
  r6 = r0
  r1 = r6
  call fn_1bb38
  r7 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0xeb8) = r1
  r1 = r6
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_2218
  *(u64 *)(r10 - 0xeb8) = r7

jmp_2218:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r3 = -0x1
  if r0 s> 0x0 goto jmp_2260
  r3 = *(u64 *)(r10 - 0xeb8)

jmp_2260:
  r6 = *(u64 *)(r10 - 0xed8)
  r2 = *(u64 *)(r10 - 0xec0)

jmp_2270:
  r0 = 0x3
  if r9 != 0x163 goto jmp_2868
  w4 = *(u8 *)(r8 + 0x5a)
  if r4 == 0x1 goto jmp_2ec0
  if r4 != 0x0 goto jmp_4ee0
  r0 = 0x0
  r1 = *(u64 *)(r10 - 0xed0)
  if r1 < r3 goto jmp_2868
  r9 = r6
  r7 = r2
  r6 = r2
  r6 += -0x2
  r1 = *(u64 *)(r10 - 0xec8)
  *(u8 *)(r8 + 0x58) = w1
  *(u8 *)(r8 + 0x59) = w6
  r1 = r6
  call fn_16b28
  r1 = 0x7
  if r0 == 0x0 goto jmp_3428
  w1 = *(u8 *)(r8 + 0x58)
  call fn_16b28
  r2 = r0
  r1 = 0x8
  r3 = r9
  r0 = 0x0
  r4 = r7
  if r2 == 0x0 goto jmp_4ee0
  if r6 == 0x0 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x10)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x73) = r1
  *(u64 *)(r8 + 0x6b) = r0
  *(u64 *)(r8 + 0x63) = r5
  *(u64 *)(r8 + 0x5b) = r2
  if r6 == 0x1 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x18)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x93) = r1
  *(u64 *)(r8 + 0x8b) = r0
  *(u64 *)(r8 + 0x83) = r5
  *(u64 *)(r8 + 0x7b) = r2
  if r4 < 0x5 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x20)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xb3) = r1
  *(u64 *)(r8 + 0xab) = r0
  *(u64 *)(r8 + 0xa3) = r5
  *(u64 *)(r8 + 0x9b) = r2
  if r6 == 0x3 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x28)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xd3) = r1
  *(u64 *)(r8 + 0xcb) = r0
  *(u64 *)(r8 + 0xc3) = r5
  *(u64 *)(r8 + 0xbb) = r2
  if r4 < 0x7 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x30)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xf3) = r1
  *(u64 *)(r8 + 0xeb) = r0
  *(u64 *)(r8 + 0xe3) = r5
  *(u64 *)(r8 + 0xdb) = r2
  if r6 == 0x5 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x38)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x113) = r1
  *(u64 *)(r8 + 0x10b) = r0
  *(u64 *)(r8 + 0x103) = r5
  *(u64 *)(r8 + 0xfb) = r2
  if r4 < 0x9 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x40)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x133) = r1
  *(u64 *)(r8 + 0x12b) = r0
  *(u64 *)(r8 + 0x123) = r5
  *(u64 *)(r8 + 0x11b) = r2
  if r6 == 0x7 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x48)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x153) = r1
  *(u64 *)(r8 + 0x14b) = r0
  *(u64 *)(r8 + 0x143) = r5
  *(u64 *)(r8 + 0x13b) = r2
  if r4 < 0xb goto jmp_3410
  r1 = *(u64 *)(r3 + 0x50)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x173) = r1
  *(u64 *)(r8 + 0x16b) = r0
  *(u64 *)(r8 + 0x163) = r5
  *(u64 *)(r8 + 0x15b) = r2
  if r6 == 0x9 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x58)
  r2 = *(u64 *)(r1 + 0x8)
  r5 = *(u64 *)(r1 + 0x10)
  r0 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x193) = r1
  *(u64 *)(r8 + 0x18b) = r0
  *(u64 *)(r8 + 0x183) = r5
  *(u64 *)(r8 + 0x17b) = r2
  if r4 < 0xd goto jmp_3410
  r1 = *(u64 *)(r3 + 0x60)
  goto jmp_33c8

jmp_2680:
  r2 = 0x0
  if r1 != 0x0 goto jmp_2f20

jmp_2690:
  r0 = 0x1
  goto jmp_4ee0

jmp_26a0:
  r0 = 0x0
  r1 = 0x13
  goto jmp_4ee0

jmp_26b8:
  r1 = *(u64 *)(r5 + 0x0)
  goto jmp_36f0

jmp_26c8:
  r3 = r8
  if r8 < 0x101 goto jmp_26e0
  r3 = 0x101

jmp_26e0:
  r1 = r6
  call fn_16b00
  if r8 > 0x101 goto jmp_28f8
  r7 = *(u64 *)(r10 - 0xfe8)
  r7 -= r9
  *(u64 *)(r10 - 0xfe8) = r7
  if r7 < 0x102 goto jmp_2cd8
  r7 = 0x101
  *(u8 *)(r10 - 0xee0) = 0x40
  *(u64 *)(r10 - 0xfe8) = 0x101
  goto jmp_2cd8

jmp_2738:
  r1 = r2
  call fn_1b938
  r1 = r6
  r2 = r0
  call fn_1bbf0
  r6 = r0
  r1 = r6
  call fn_1bb38
  *(u64 *)(r10 - 0xec0) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r6
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_27d0
  r1 = *(u64 *)(r10 - 0xec0)
  *(u64 *)(r10 - 0xec8) = r1

jmp_27d0:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r2 = -0x1
  if r0 s> 0x0 goto jmp_2818
  r2 = *(u64 *)(r10 - 0xec8)

jmp_2818:
  r6 = r9
  r0 = 0x3
  r1 = *(u64 *)(r8 + 0x50)
  if r1 != 0x163 goto jmp_2868
  w3 = *(u8 *)(r8 + 0x5a)
  if r3 == 0x1 goto jmp_2ec0
  if r3 != 0x0 goto jmp_4ee0
  r0 = 0x0
  r1 = *(u64 *)(r10 - 0xed0)
  if r1 >= r2 goto jmp_3028

jmp_2868:
  r1 = 0x0
  goto jmp_4ee0

jmp_2878:
  *(u64 *)(r10 - 0xec8) = r5
  r7 = r2
  r9 = r0
  r9 -= r4
  *(u16 *)(r10 - 0xfe0) = 0x2e30
  r1 = r10
  r1 += -0xfde
  r2 = 0x30
  r3 = r9
  r8 = r4
  call fn_16b10
  r1 = r8
  if r9 != 0xff goto jmp_3668

jmp_28e0:
  r1 = *(u64 *)(r10 - 0xed0)
  r2 = r1
  if r1 <= 0x101 goto jmp_2908

jmp_28f8:
  r2 = 0x101
  *(u8 *)(r10 - 0xee0) = 0x40

jmp_2908:
  r7 = *(u64 *)(r10 - 0xfe8)
  r7 += r2
  *(u64 *)(r10 - 0xfe8) = r7
  if r7 <= 0x101 goto jmp_2958
  r7 = 0x101
  *(u8 *)(r10 - 0xee0) = 0x40
  *(u64 *)(r10 - 0xfe8) = 0x101
  r1 = *(u64 *)(r10 - 0xed8)
  if r1 != 0x0 goto jmp_29d8
  goto jmp_2cd8

jmp_2958:
  r1 = *(u64 *)(r10 - 0xed8)
  if r1 == 0x0 goto jmp_2cd8
  if r7 > 0xf goto jmp_29d8

jmp_2970:
  if r7 == 0x0 goto jmp_2cd0
  r1 = 0x8

jmp_2980:
  r2 = r10
  r2 += -0xfe8
  r2 += r1
  w2 = *(u8 *)(r2 + 0x0)
  if r2 == 0x2e goto jmp_29c8
  r3 = r1
  r3 += -0x7
  r1 += 0x1
  if r3 < r7 goto jmp_2980

jmp_29c8:
  if r2 == 0x2e goto jmp_2a28
  goto jmp_2cd8

jmp_29d8:
  r1 = 0x2e
  r2 = r6
  r3 = r7
  call fn_198f0
  if r0 == 0x1 goto jmp_2a28
  goto jmp_2cd8

jmp_2a08:
  r7 += -0x1
  r3 = r2
  r7 -= r6
  if r3 != 0x30 goto jmp_2b90

jmp_2a28:
  r1 = r7
  if r1 == 0x0 goto jmp_2b90
  r7 = r6
  r7 += r1
  w2 = *(u8 *)(r7 - 0x1)
  r2 <<= 0x38
  r2 s>>= 0x38
  if r2 s> -0x1 goto jmp_2a08
  w4 = *(u8 *)(r7 - 0x2)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s>= -0x40 goto jmp_2ae8
  w3 = *(u8 *)(r7 - 0x3)
  r3 <<= 0x38
  r3 s>>= 0x38
  if r3 s>= -0x40 goto jmp_2b08
  r5 = r3
  r5 &= 0x3f
  w3 = *(u8 *)(r7 - 0x4)
  r3 &= 0x7
  r3 <<= 0x6
  r3 |= r5
  r7 += -0x4
  goto jmp_2b18

jmp_2ae8:
  r7 += -0x2
  r4 &= 0x1f
  r3 = r4
  goto jmp_2b30

jmp_2b08:
  r7 += -0x3
  r3 &= 0xf

jmp_2b18:
  r4 &= 0x3f
  r3 <<= 0x6
  r3 |= r4

jmp_2b30:
  r2 &= 0x3f
  r3 <<= 0x6
  r3 |= r2
  r7 -= r6
  if r3 == 0x30 goto jmp_2a28
  goto jmp_2b90

jmp_2b60:
  r2 += -0x1
  r4 = r3
  r2 -= r6
  r7 = r1
  r1 = r2
  if r4 != 0x2e goto jmp_2cd8

jmp_2b90:
  if r1 == 0x0 goto jmp_2cd0
  r2 = r6
  r2 += r1
  w3 = *(u8 *)(r2 - 0x1)
  r3 <<= 0x38
  r3 s>>= 0x38
  if r3 s> -0x1 goto jmp_2b60
  w5 = *(u8 *)(r2 - 0x2)
  r5 <<= 0x38
  r5 s>>= 0x38
  if r5 s>= -0x40 goto jmp_2c48
  w4 = *(u8 *)(r2 - 0x3)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s>= -0x40 goto jmp_2c68
  r0 = r4
  r0 &= 0x3f
  w4 = *(u8 *)(r2 - 0x4)
  r4 &= 0x7
  r4 <<= 0x6
  r4 |= r0
  r2 += -0x4
  goto jmp_2c78

jmp_2c48:
  r2 += -0x2
  r5 &= 0x1f
  r4 = r5
  goto jmp_2c90

jmp_2c68:
  r2 += -0x3
  r4 &= 0xf

jmp_2c78:
  r5 &= 0x3f
  r4 <<= 0x6
  r4 |= r5

jmp_2c90:
  r3 &= 0x3f
  r4 <<= 0x6
  r4 |= r3
  r2 -= r6
  r7 = r1
  r1 = r2
  if r4 == 0x2e goto jmp_2b90
  goto jmp_2cd8

jmp_2cd0:
  r7 = 0x0

jmp_2cd8:
  r1 = r6
  r2 = r7

jmp_2ce8:
  call sol_set_return_data
  r0 = 0x1a
  goto jmp_4ee0

jmp_2d00:
  *(u64 *)(r10 - 0xed0) = r3
  *(u64 *)(r10 - 0xed8) = r6
  r1 = r2
  call fn_1b938
  r1 = r7
  r2 = r0
  call fn_1bbf0
  r6 = r0
  r1 = r6
  call fn_1bb38
  r7 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r6
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_2da0
  *(u64 *)(r10 - 0xec8) = r7

jmp_2da0:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r2 = -0x1
  if r0 s> 0x0 goto jmp_2de8
  r2 = *(u64 *)(r10 - 0xec8)

jmp_2de8:
  r6 = *(u64 *)(r10 - 0xed8)
  r1 = 0x0
  r3 = *(u64 *)(r10 - 0xed0)

jmp_2e00:
  r4 = *(u64 *)(r6 + 0x8)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = -0x7b7e5401a87764fa ll
  if r5 != r0 goto jmp_2e90
  r5 = *(u64 *)(r4 + 0x10)
  r0 = 0x35c01846637f68fb ll
  if r5 != r0 goto jmp_2e90
  r5 = *(u64 *)(r4 + 0x18)
  r0 = 0x553beb1adc39c4da ll
  if r5 != r0 goto jmp_2e90
  r7 = 0x1
  r5 = *(u64 *)(r4 + 0x20)
  r0 = 0x100000000f0a098 ll
  if r5 == r0 goto jmp_2e98

jmp_2e90:
  r7 = 0x0

jmp_2e98:
  r0 = 0x3
  if r9 != 0xa5 goto jmp_4ee0
  w5 = *(u8 *)(r8 + 0xc4)
  if r5 > 0x2 goto jmp_4ee0
  if r5 == 0x0 goto jmp_5710

jmp_2ec0:
  r0 = 0x0
  r1 = 0x6
  goto jmp_4ee0

jmp_2ed8:
  r9 = r1
  r1 = 0x2e
  r2 = r7
  r3 = r8
  call fn_198f0
  r2 = 0x1
  if r0 == 0x1 goto jmp_2f18
  r2 = 0x0

jmp_2f18:
  r1 = r9

jmp_2f20:
  r0 = 0x1
  r3 = *(u64 *)(r10 - 0xed8)
  if r8 > r3 goto jmp_3fb0
  r2 &= 0x1
  if r2 != 0x0 goto jmp_3fb0
  r9 = r1
  r9 += r3
  if r9 > 0x101 goto jmp_3fb0
  r2 = r10
  r2 += -0xfe8
  *(u64 *)(r10 - 0xed8) = r2
  *(u64 *)(r10 - 0xed0) = r1
  r1 = r2
  r2 = 0x30
  r3 = 0x101
  call fn_1aee0
  r1 = *(u64 *)(r10 - 0xed8)
  r2 = r6
  r6 = *(u64 *)(r10 - 0xed0)
  r3 = r6
  call sol_memcpy_
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r6
  r2 = r7
  r3 = r8
  call sol_memcpy_
  r0 = 0x1
  if r9 == 0x0 goto jmp_3fb0
  if r9 != 0x1 goto jmp_3b50
  w1 = *(u8 *)(r10 - 0xfe8)
  if r1 == 0x2b goto jmp_3fb0
  if r1 == 0x2d goto jmp_3fb0
  goto jmp_3b58

jmp_3028:
  r6 += -0x1
  *(u8 *)(r8 + 0x58) = w7
  *(u8 *)(r8 + 0x59) = w6
  r1 = r6
  call fn_16b28
  r1 = 0x7
  if r0 == 0x0 goto jmp_3428
  w1 = *(u8 *)(r8 + 0x58)
  call fn_16b28
  r2 = r0
  r1 = 0x8
  r3 = *(u64 *)(r10 - 0xed8)
  r0 = 0x0
  if r2 == 0x0 goto jmp_4ee0
  if r6 == 0x0 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x8)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x73) = r1
  *(u64 *)(r8 + 0x6b) = r5
  *(u64 *)(r8 + 0x63) = r4
  *(u64 *)(r8 + 0x5b) = r2
  if r6 == 0x1 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x10)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x93) = r1
  *(u64 *)(r8 + 0x8b) = r5
  *(u64 *)(r8 + 0x83) = r4
  *(u64 *)(r8 + 0x7b) = r2
  if r9 < 0x4 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x18)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xb3) = r1
  *(u64 *)(r8 + 0xab) = r5
  *(u64 *)(r8 + 0xa3) = r4
  *(u64 *)(r8 + 0x9b) = r2
  if r6 == 0x3 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x20)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xd3) = r1
  *(u64 *)(r8 + 0xcb) = r5
  *(u64 *)(r8 + 0xc3) = r4
  *(u64 *)(r8 + 0xbb) = r2
  if r9 < 0x6 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x28)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0xf3) = r1
  *(u64 *)(r8 + 0xeb) = r5
  *(u64 *)(r8 + 0xe3) = r4
  *(u64 *)(r8 + 0xdb) = r2
  if r6 == 0x5 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x30)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x113) = r1
  *(u64 *)(r8 + 0x10b) = r5
  *(u64 *)(r8 + 0x103) = r4
  *(u64 *)(r8 + 0xfb) = r2
  if r9 < 0x8 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x38)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x133) = r1
  *(u64 *)(r8 + 0x12b) = r5
  *(u64 *)(r8 + 0x123) = r4
  *(u64 *)(r8 + 0x11b) = r2
  if r6 == 0x7 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x40)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x153) = r1
  *(u64 *)(r8 + 0x14b) = r5
  *(u64 *)(r8 + 0x143) = r4
  *(u64 *)(r8 + 0x13b) = r2
  if r9 < 0xa goto jmp_3410
  r1 = *(u64 *)(r3 + 0x48)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x173) = r1
  *(u64 *)(r8 + 0x16b) = r5
  *(u64 *)(r8 + 0x163) = r4
  *(u64 *)(r8 + 0x15b) = r2
  if r6 == 0x9 goto jmp_3410
  r1 = *(u64 *)(r3 + 0x50)
  r2 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x193) = r1
  *(u64 *)(r8 + 0x18b) = r5
  *(u64 *)(r8 + 0x183) = r4
  *(u64 *)(r8 + 0x17b) = r2
  if r9 < 0xc goto jmp_3410
  r1 = *(u64 *)(r3 + 0x58)

jmp_33c8:
  r2 = *(u64 *)(r1 + 0x8)
  r3 = *(u64 *)(r1 + 0x10)
  r4 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r1 + 0x20)
  *(u64 *)(r8 + 0x1b3) = r1
  *(u64 *)(r8 + 0x1ab) = r4
  *(u64 *)(r8 + 0x1a3) = r3
  *(u64 *)(r8 + 0x19b) = r2
  if r6 != 0xb goto jmp_7fc0

jmp_3410:
  *(u8 *)(r8 + 0x5a) = 0x1

jmp_3418:
  r0 = 0x1a
  goto jmp_4ee0

jmp_3428:
  r0 = 0x0
  goto jmp_4ee0

jmp_3438:
  w1 = *(u8 *)(r4 + 0x85)
  r8 = 0x3 ll
  if r1 == 0x1 goto jmp_3490
  r8 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_34a0

jmp_3470:
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_34c0
  goto jmp_56f8

jmp_3490:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_3470

jmp_34a0:
  r0 = r8
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_56f8

jmp_34c0:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r0 = 0x0
  if r7 == 0x1 goto jmp_3fb8
  r1 = 0xf
  if r7 != 0x0 goto jmp_4ee0
  r1 = 0x5
  w7 = *(u8 *)(r4 + 0x58)
  if r7 != 0x1 goto jmp_4ee0
  r1 = 0x4
  r8 = *(u64 *)(r4 + 0x5c)
  r7 = *(u64 *)(r6 + 0x8)
  r9 = *(u64 *)(r7 + 0x8)
  if r8 != r9 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x10)
  r9 = *(u64 *)(r4 + 0x64)
  if r9 != r8 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r4 + 0x6c)
  if r9 != r8 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x20)
  r9 = *(u64 *)(r4 + 0x74)
  if r9 != r8 goto jmp_4ee0
  r1 = *(u64 *)(r7 + 0x50)
  if r1 != 0x163 goto jmp_4d78
  r1 = *(u64 *)(r7 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_4d18
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_4d78
  r1 = *(u64 *)(r7 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_4d78
  r1 = *(u64 *)(r7 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_4d78
  r1 = *(u64 *)(r7 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 != r0 goto jmp_4d78
  goto jmp_6fe0

jmp_3630:
  r1 = 0xf
  r2 = *(u64 *)(r6 + 0x10)
  if r8 != r2 goto jmp_4ee0
  w1 = *(u8 *)(r2 + 0x1)
  if r1 != 0x0 goto jmp_4220

jmp_3658:
  r0 = 0x7
  goto jmp_4ee0

jmp_3668:
  r3 = r9
  r3 ^= 0xff
  if r3 < r1 goto jmp_3688
  r3 = r1

jmp_3688:
  r1 = r6
  r1 += r9
  r1 += 0x2
  r2 = r7
  call fn_16b00
  r2 = *(u64 *)(r10 - 0xec8)
  r1 = *(u64 *)(r10 - 0xed0)
  if r1 >= 0x102 goto jmp_28f8
  goto jmp_2908

jmp_36d0:
  r1 = 0x0
  *(u64 *)(r10 - 0xed0) = r1
  goto jmp_38b8

jmp_36e8:
  r1 = r7

jmp_36f0:
  r5 = *(u64 *)(r3 + 0x78)
  if r5 != r1 goto jmp_50f0
  r5 = r3
  r5 += 0x78

jmp_3710:
  r1 = 0x4
  r7 = *(u64 *)(r4 + 0x10)
  r8 = *(u64 *)(r5 + 0x8)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x18)
  r8 = *(u64 *)(r5 + 0x10)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r4 + 0x20)
  r5 = *(u64 *)(r5 + 0x18)
  if r5 != r7 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_3870
  r1 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r1 == r5 goto jmp_3810
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_3870
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_3870
  r1 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_3870
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_3870
  goto jmp_5110

jmp_3810:
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r1 != r5 goto jmp_3870
  r1 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r1 != r5 goto jmp_3870
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r1 == r5 goto jmp_5110

jmp_3870:
  w1 = *(u8 *)(r4 + 0x1)
  if r1 == 0x0 goto jmp_6a98

jmp_3880:
  *(u64 *)(r3 + 0xd1) = 0x0
  *(u8 *)(r3 + 0xa0) = 0x0
  r0 = 0x1a
  goto jmp_4ee0

jmp_38a0:
  r4 -= r7
  *(u64 *)(r10 - 0xed0) = r4
  r4 = r7

jmp_38b8:
  r8 = r6
  r8 += 0x18
  r7 = *(u64 *)(r6 + 0x10)
  w1 = *(u8 *)(r3 + 0xa0)
  if r1 != 0x1 goto jmp_3a00
  r9 = *(u64 *)(r7 + 0x8)
  r1 = *(u64 *)(r3 + 0xa4)
  if r1 != r9 goto jmp_3dc8
  r0 = *(u64 *)(r7 + 0x10)
  r9 = *(u64 *)(r3 + 0xac)
  if r9 != r0 goto jmp_3dc0
  r0 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r3 + 0xb4)
  if r9 != r0 goto jmp_3dc0
  r5 = *(u64 *)(r7 + 0x20)
  r0 = *(u64 *)(r3 + 0xbc)
  r9 = r1
  if r0 != r5 goto jmp_3dc8
  r0 = r2
  r1 = *(u64 *)(r7 + 0x50)
  if r1 != 0x163 goto jmp_4f48
  r1 = *(u64 *)(r7 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_4ee8
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_4f48
  r1 = *(u64 *)(r7 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_4f48
  r1 = *(u64 *)(r7 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_4f48
  r1 = *(u64 *)(r7 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_4f48
  goto jmp_7580

jmp_3a00:
  r9 = *(u64 *)(r7 + 0x8)
  goto jmp_3dc8

jmp_3a10:
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r1 != r5 goto jmp_4210

jmp_3a70:
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r4 + 0x5a)
  r5 = 0x3 ll
  if r1 == 0x1 goto jmp_53a0
  r5 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_53b0

jmp_3ab0:
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_53d0
  goto jmp_6368

jmp_3ad0:
  r3 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r3 != r0 goto jmp_3b30
  r3 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r3 != r0 goto jmp_3b30
  r3 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r3 == r0 goto jmp_55d8

jmp_3b30:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_6a98

jmp_3b40:
  r2 = *(u64 *)(r6 + 0x8)
  goto jmp_3d60

jmp_3b50:
  w1 = *(u8 *)(r10 - 0xfe8)

jmp_3b58:
  r2 = r1
  r1 = 0x1
  if r2 == 0x2b goto jmp_3b78
  r1 = 0x0

jmp_3b78:
  r6 = r10
  r6 += -0xfe8
  r6 += r1
  r2 = 0x0
  r9 -= r1
  if r9 >= 0x11 goto jmp_3c18
  if r9 == 0x0 goto jmp_3bf0

jmp_3bb0:
  w1 = *(u8 *)(r6 + 0x0)
  r1 += -0x30
  if r1 > 0x9 goto jmp_3fb0
  r2 *= 0xa
  r2 += r1
  r6 += 0x1
  r9 += -0x1
  if r9 != 0x0 goto jmp_3bb0

jmp_3bf0:
  *(u64 *)(r10 - 0xfe8) = r2
  r1 = r10
  r1 += -0xfe8
  r2 = 0x8
  goto jmp_2ce8

jmp_3c18:
  if r9 == 0x0 goto jmp_3bf0
  r1 = r2
  r2 = 0x0
  r3 = 0xa
  r4 = 0x0
  call fn_1af08
  r2 = r0
  r3 = 0x1
  if r1 != 0x0 goto jmp_3c68
  r3 = 0x0

jmp_3c68:
  r3 &= 0x1
  r0 = 0x1
  if r3 != 0x0 goto jmp_3fb0
  w1 = *(u8 *)(r6 + 0x0)
  r1 += -0x30
  if r1 > 0x9 goto jmp_3fb0
  r3 = r2
  r2 += r1
  r1 = 0x1
  if r2 < r3 goto jmp_3cc0
  r1 = 0x0

jmp_3cc0:
  r6 += 0x1
  r9 += -0x1
  r1 &= 0x1
  if r1 == 0x0 goto jmp_3c18
  goto jmp_3fb0

jmp_3ce8:
  r3 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r3 != r0 goto jmp_3d48
  r3 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r3 != r0 goto jmp_3d48
  r3 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r3 == r0 goto jmp_5808

jmp_3d48:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_3658

jmp_3d58:
  r2 = *(u64 *)(r6 + 0x10)

jmp_3d60:
  *(u8 *)(r4 + 0xa0) = 0x1
  r3 = *(u64 *)(r2 + 0x8)
  r5 = *(u64 *)(r2 + 0x10)
  r0 = *(u64 *)(r2 + 0x18)
  r2 = *(u64 *)(r2 + 0x20)
  *(u64 *)(r4 + 0xbc) = r2
  *(u64 *)(r4 + 0xb4) = r0
  *(u64 *)(r4 + 0xac) = r5
  *(u64 *)(r4 + 0xa4) = r3
  *(u64 *)(r4 + 0xd1) = r1
  r0 = 0x1a
  goto jmp_4ee0

jmp_3dc0:
  r9 = r1

jmp_3dc8:
  r0 = 0x0
  r1 = 0x4
  r5 = *(u64 *)(r3 + 0x78)
  if r5 != r9 goto jmp_4ee0
  r5 = *(u64 *)(r7 + 0x10)
  r9 = *(u64 *)(r3 + 0x80)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r3 + 0x88)
  if r9 != r5 goto jmp_4ee0
  r5 = *(u64 *)(r7 + 0x20)
  r9 = *(u64 *)(r3 + 0x90)
  if r9 != r5 goto jmp_4ee0
  r1 = *(u64 *)(r7 + 0x50)
  if r1 != 0x163 goto jmp_3f40
  r1 = *(u64 *)(r7 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r1 == r5 goto jmp_3ee0
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_3f40
  r1 = *(u64 *)(r7 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_3f40
  r1 = *(u64 *)(r7 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_3f40
  r1 = *(u64 *)(r7 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_3f40
  goto jmp_5ad0

jmp_3ee0:
  r1 = *(u64 *)(r7 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r1 != r5 goto jmp_3f40
  r1 = *(u64 *)(r7 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r1 != r5 goto jmp_3f40
  r1 = *(u64 *)(r7 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r1 == r5 goto jmp_5ad0

jmp_3f40:
  w1 = *(u8 *)(r7 + 0x1)
  if r1 == 0x0 goto jmp_3658

jmp_3f50:
  if r4 == 0x0 goto jmp_5750
  r1 = *(u64 *)(r10 - 0xed0)
  *(u64 *)(r3 + 0x98) = r1
  r0 = 0x1a
  r1 = *(u64 *)(r6 + 0x8)
  if r3 == r1 goto jmp_3fb0
  r2 = *(u64 *)(r3 + 0x48)
  r2 -= r4
  *(u64 *)(r3 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r4
  *(u64 *)(r1 + 0x48) = r2

jmp_3fb0:
  goto jmp_4ee0

jmp_3fb8:
  r1 = 0x10
  w7 = *(u8 *)(r4 + 0x86)
  if r7 != 0x1 goto jmp_4ee0
  r1 = 0x4
  r8 = *(u64 *)(r4 + 0x8a)
  r7 = *(u64 *)(r6 + 0x8)
  r9 = *(u64 *)(r7 + 0x8)
  if r8 != r9 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x10)
  r9 = *(u64 *)(r4 + 0x92)
  if r9 != r8 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r4 + 0x9a)
  if r9 != r8 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x20)
  r9 = *(u64 *)(r4 + 0xa2)
  if r9 != r8 goto jmp_4ee0
  r1 = *(u64 *)(r7 + 0x50)
  if r1 != 0x163 goto jmp_4e20
  r1 = *(u64 *)(r7 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_4dc0
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_4e20
  r1 = *(u64 *)(r7 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_4e20
  r1 = *(u64 *)(r7 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_4e20
  r1 = *(u64 *)(r7 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 != r0 goto jmp_4e20
  goto jmp_7220

jmp_40f0:
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r1 != r5 goto jmp_4210

jmp_4150:
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r4 + 0x5a)
  r5 = 0x3 ll
  if r1 == 0x1 goto jmp_5e70
  r5 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_5e80

jmp_4190:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6368
  goto jmp_5ea0

jmp_41b0:
  r1 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r1 != r5 goto jmp_4210
  r1 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r1 == r5 goto jmp_60a8

jmp_4210:
  w1 = *(u8 *)(r4 + 0x1)
  if r1 == 0x0 goto jmp_3658

jmp_4220:
  r9 = r6
  r1 = r10
  r1 += -0xfe8
  call fn_16b58
  w1 = *(u32 *)(r10 - 0xfe8)
  if r1 == 0x0 goto jmp_4268

jmp_4250:
  w1 = *(u32 *)(r10 - 0xfe0)
  w0 = *(u32 *)(r10 - 0xfe4)
  goto jmp_4ee0

jmp_4268:
  r7 += 0x80
  r2 = *(u64 *)(r10 - 0xfe0)
  r2 *= r7
  r6 = *(u64 *)(r10 - 0xfd8)
  r1 = 0x3ff0000000000000 ll
  if r6 == r1 goto jmp_43a0
  r1 = 0x4000000000000000 ll
  if r6 != r1 goto jmp_42c8
  r2 <<= 0x1
  goto jmp_43a0

jmp_42c8:
  r1 = r2
  call fn_1b938
  r1 = r6
  r2 = r0
  call fn_1bbf0
  r6 = r0
  r1 = r6
  call fn_1bb38
  r7 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0xed8) = r1
  r1 = r6
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_4358
  *(u64 *)(r10 - 0xed8) = r7

jmp_4358:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r2 = -0x1
  if r0 s> 0x0 goto jmp_43a0
  r2 = *(u64 *)(r10 - 0xed8)

jmp_43a0:
  r1 = 0x0
  r3 = *(u64 *)(r8 + 0x48)
  r0 = 0x0
  if r3 < r2 goto jmp_4ee0
  *(u64 *)(r8 + 0x48) = r2
  r3 -= r2
  r1 = *(u64 *)(r9 + 0x8)
  r2 = *(u64 *)(r1 + 0x48)
  r3 += r2
  *(u64 *)(r1 + 0x48) = r3
  r0 = 0x1a
  goto jmp_4ee0

jmp_4400:
  r3 = *(u64 *)(r7 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r3 != r0 goto jmp_4460
  r3 = *(u64 *)(r7 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r3 != r0 goto jmp_4460
  r3 = *(u64 *)(r7 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r3 == r0 goto jmp_6578

jmp_4460:
  w2 = *(u8 *)(r7 + 0x1)
  if r2 == 0x0 goto jmp_3658

jmp_4470:
  if r1 == 0x0 goto jmp_44e8
  r6 = *(u64 *)(r5 + 0x7c)
  r2 = r6
  r2 += r1
  r0 = 0x0
  r3 = 0x1
  if r2 < r6 goto jmp_44b0
  r3 = 0x0

jmp_44b0:
  r3 &= 0x1
  if r3 != 0x0 goto jmp_6850
  *(u64 *)(r5 + 0x7c) = r2
  r2 = *(u64 *)(r4 + 0x98)
  r2 += r1
  *(u64 *)(r4 + 0x98) = r2
  goto jmp_45f0

jmp_44e8:
  r0 = 0x6
  r1 = *(u64 *)(r5 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r5 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r5 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r5 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_4ee0

jmp_45f0:
  r0 = 0x1a
  goto jmp_4ee0

jmp_4600:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_02f8

jmp_4610:
  r0 = r4
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_56f8

jmp_4630:
  r5 = r2
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r0 = 0x0
  r1 = 0x10
  w2 = *(u8 *)(r7 + 0x86)
  if r2 != 0x1 goto jmp_4ee0
  r1 = *(u64 *)(r7 + 0x8a)
  r4 = *(u64 *)(r6 + 0x10)
  r2 = *(u64 *)(r4 + 0x8)
  if r1 != r2 goto jmp_50f0
  r1 = *(u64 *)(r4 + 0x10)
  r2 = *(u64 *)(r7 + 0x92)
  if r2 != r1 goto jmp_50f0
  r1 = *(u64 *)(r4 + 0x18)
  r2 = *(u64 *)(r7 + 0x9a)
  if r2 != r1 goto jmp_50f0
  r2 = *(u64 *)(r4 + 0x20)
  r7 = *(u64 *)(r7 + 0xa2)
  r1 = 0x4
  if r7 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_5010
  r1 = *(u64 *)(r4 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_4fb0
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_5010
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_5010
  r1 = *(u64 *)(r4 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_5010
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_5010
  goto jmp_7938

jmp_4790:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_1f88

jmp_47a0:
  r0 = r4
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_56f8

jmp_47c0:
  r5 = r2
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r0 = 0x0
  r1 = 0x10
  w2 = *(u8 *)(r7 + 0x86)
  if r2 != 0x1 goto jmp_4ee0
  r1 = *(u64 *)(r7 + 0x8a)
  r4 = *(u64 *)(r6 + 0x10)
  r2 = *(u64 *)(r4 + 0x8)
  if r1 != r2 goto jmp_50f0
  r1 = *(u64 *)(r4 + 0x10)
  r2 = *(u64 *)(r7 + 0x92)
  if r2 != r1 goto jmp_50f0
  r1 = *(u64 *)(r4 + 0x18)
  r2 = *(u64 *)(r7 + 0x9a)
  if r2 != r1 goto jmp_50f0
  r2 = *(u64 *)(r4 + 0x20)
  r7 = *(u64 *)(r7 + 0xa2)
  r1 = 0x4
  if r7 != r2 goto jmp_4ee0
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x163 goto jmp_5098
  r1 = *(u64 *)(r4 + 0x28)
  r2 = -0x21708a111e0922fa ll
  if r1 == r2 goto jmp_5038
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_5098
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_5098
  r1 = *(u64 *)(r4 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_5098
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_5098
  goto jmp_7b70

jmp_4920:
  w8 = *(u8 *)(r4 + 0xd9)
  r1 = 0xdd
  if r8 == 0x1 goto jmp_4940
  r1 = 0x78

jmp_4940:
  r9 = r4
  r9 += 0xdd
  *(u64 *)(r10 - 0xec0) = r9
  *(u64 *)(r10 - 0xed8) = r9
  if r8 == 0x1 goto jmp_4980
  r7 = r4
  r7 += 0x78
  *(u64 *)(r10 - 0xed8) = r7

jmp_4980:
  r8 = r4
  r8 += r1
  r1 = 0x4
  r7 = *(u64 *)(r8 + 0x0)
  *(u64 *)(r10 - 0xed0) = r7
  r7 = *(u64 *)(r6 + 0x8)
  r8 = *(u64 *)(r7 + 0x8)
  r9 = *(u64 *)(r10 - 0xed0)
  if r9 != r8 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x10)
  *(u64 *)(r10 - 0xed0) = r8
  r8 = *(u64 *)(r10 - 0xed8)
  r8 = *(u64 *)(r8 + 0x8)
  r9 = *(u64 *)(r10 - 0xed0)
  if r8 != r9 goto jmp_4ee0
  r8 = *(u64 *)(r7 + 0x18)
  *(u64 *)(r10 - 0xed0) = r8
  r8 = *(u64 *)(r10 - 0xed8)
  r8 = *(u64 *)(r8 + 0x10)
  r9 = *(u64 *)(r10 - 0xed0)
  if r8 != r9 goto jmp_4ee0
  *(u64 *)(r10 - 0xec8) = r7
  r7 = *(u64 *)(r7 + 0x20)
  r8 = *(u64 *)(r10 - 0xed8)
  r8 = *(u64 *)(r8 + 0x18)
  if r8 != r7 goto jmp_4ee0
  r7 = *(u64 *)(r10 - 0xec8)
  r1 = *(u64 *)(r7 + 0x50)
  if r1 != 0x163 goto jmp_4c88
  r1 = *(u64 *)(r7 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r1 == r0 goto jmp_4c28
  r0 = -0x6c5e9a281e0922fa ll
  if r1 != r0 goto jmp_4c88
  r1 = *(u64 *)(r7 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r1 != r0 goto jmp_4c88
  r1 = *(u64 *)(r7 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r1 != r0 goto jmp_4c88
  r1 = *(u64 *)(r7 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r1 != r0 goto jmp_4c88
  goto jmp_6db8

jmp_4b08:
  r1 = 0xf
  goto jmp_4ee0

jmp_4b18:
  r0 = 0x6
  goto jmp_4ee0

jmp_4b28:
  r8 = *(u64 *)(r7 + 0x30)
  r9 = -0x2532931b43a2bde8 ll
  if r8 != r9 goto jmp_4b88
  r8 = *(u64 *)(r7 + 0x38)
  r9 = 0x270db9834dfc1ab6 ll
  if r8 != r9 goto jmp_4b88
  r8 = *(u64 *)(r7 + 0x40)
  r9 = -0x3745e27d7064202 ll
  if r8 == r9 goto jmp_6af8

jmp_4b88:
  w2 = *(u8 *)(r7 + 0x1)
  if r2 == 0x0 goto jmp_6a98

jmp_4b98:
  if r3 == 0x0 goto jmp_4ee0
  r1 = r4
  r1 += 0x78
  r2 = *(u64 *)(r3 + 0x0)
  r5 = *(u64 *)(r3 + 0x8)
  r0 = *(u64 *)(r3 + 0x10)
  r3 = *(u64 *)(r3 + 0x18)
  *(u64 *)(r1 + 0x18) = r3
  *(u64 *)(r1 + 0x10) = r0
  *(u64 *)(r1 + 0x8) = r5
  *(u64 *)(r1 + 0x0) = r2
  r0 = 0x1a
  *(u64 *)(r4 + 0xd1) = 0x0
  *(u8 *)(r4 + 0xa0) = 0x0
  w1 = *(u8 *)(r4 + 0xc5)
  if r1 != 0x1 goto jmp_3fb0
  *(u8 *)(r4 + 0xd9) = 0x0
  goto jmp_3fb0

jmp_4c28:
  r1 = *(u64 *)(r7 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_4c88
  r1 = *(u64 *)(r7 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_4c88
  r1 = *(u64 *)(r7 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_6db8

jmp_4c88:
  w1 = *(u8 *)(r7 + 0x1)
  if r1 == 0x0 goto jmp_6a98

jmp_4c98:
  if r3 == 0x0 goto jmp_4d00
  *(u8 *)(r4 + 0xd9) = 0x1
  r1 = *(u64 *)(r3 + 0x0)
  r2 = *(u64 *)(r3 + 0x8)
  r4 = *(u64 *)(r3 + 0x10)
  r3 = *(u64 *)(r3 + 0x18)
  r5 = *(u64 *)(r10 - 0xec0)
  *(u64 *)(r5 + 0x18) = r3
  *(u64 *)(r5 + 0x10) = r4
  *(u64 *)(r5 + 0x8) = r2
  *(u64 *)(r5 + 0x0) = r1
  r0 = 0x1a
  goto jmp_4ee0

jmp_4d00:
  *(u8 *)(r4 + 0xd9) = 0x0
  r0 = 0x1a
  goto jmp_4ee0

jmp_4d18:
  r1 = *(u64 *)(r7 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_4d78
  r1 = *(u64 *)(r7 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_4d78
  r1 = *(u64 *)(r7 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_6fe0

jmp_4d78:
  w1 = *(u8 *)(r7 + 0x1)
  if r1 == 0x0 goto jmp_6a98

jmp_4d88:
  if r3 == 0x0 goto jmp_4da8
  *(u8 *)(r4 + 0x58) = 0x1
  r4 += 0x5c
  goto jmp_4e48

jmp_4da8:
  *(u8 *)(r4 + 0x58) = 0x0
  r0 = 0x1a
  goto jmp_4ee0

jmp_4dc0:
  r1 = *(u64 *)(r7 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r1 != r0 goto jmp_4e20
  r1 = *(u64 *)(r7 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r1 != r0 goto jmp_4e20
  r1 = *(u64 *)(r7 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r1 == r0 goto jmp_7220

jmp_4e20:
  w1 = *(u8 *)(r7 + 0x1)
  if r1 == 0x0 goto jmp_6a98

jmp_4e30:
  if r3 == 0x0 goto jmp_4e98
  *(u8 *)(r4 + 0x86) = 0x1
  r4 += 0x8a

jmp_4e48:
  r1 = *(u64 *)(r3 + 0x0)
  r2 = *(u64 *)(r3 + 0x8)
  r5 = *(u64 *)(r3 + 0x10)
  r3 = *(u64 *)(r3 + 0x18)
  *(u64 *)(r4 + 0x18) = r3
  *(u64 *)(r4 + 0x10) = r5
  *(u64 *)(r4 + 0x8) = r2
  *(u64 *)(r4 + 0x0) = r1
  r0 = 0x1a
  goto jmp_4ee0

jmp_4e98:
  *(u8 *)(r4 + 0x86) = 0x0
  r0 = 0x1a
  goto jmp_4ee0

jmp_4eb0:
  if r5 != 0x1 goto jmp_4ee0
  r4 += -0x9
  if r4 >= -0x8 goto jmp_4ee0
  r7 = *(u64 *)(r3 + 0x1)
  if r2 > 0x2 goto jmp_0728

jmp_4ed8:
  r0 = 0xa

jmp_4ee0:
  exit

jmp_4ee8:
  r1 = *(u64 *)(r7 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_4f48
  r1 = *(u64 *)(r7 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_4f48
  r1 = *(u64 *)(r7 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_7580

jmp_4f48:
  w1 = *(u8 *)(r7 + 0x1)
  if r1 == 0x0 goto jmp_3658

jmp_4f58:
  r1 = *(u64 *)(r3 + 0xd1)
  if r1 < r4 goto jmp_0798
  r2 = r1
  r2 -= r4
  *(u64 *)(r3 + 0xd1) = r2
  if r1 != r4 goto jmp_3f50
  *(u8 *)(r3 + 0xa0) = 0x0
  goto jmp_3f50

jmp_4f98:
  r0 = 0x3
  r1 = 0x0
  goto jmp_4ee0

jmp_4fb0:
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_5010
  r1 = *(u64 *)(r4 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_5010
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_7938

jmp_5010:
  w1 = *(u8 *)(r4 + 0x1)
  if r1 == 0x0 goto jmp_6a98

jmp_5020:
  *(u8 *)(r3 + 0xc4) = 0x2
  r0 = 0x1a
  goto jmp_4ee0

jmp_5038:
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x2532931b43a2bde8 ll
  if r1 != r2 goto jmp_5098
  r1 = *(u64 *)(r4 + 0x38)
  r2 = 0x270db9834dfc1ab6 ll
  if r1 != r2 goto jmp_5098
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x3745e27d7064202 ll
  if r1 == r2 goto jmp_7b70

jmp_5098:
  w1 = *(u8 *)(r4 + 0x1)
  if r1 == 0x0 goto jmp_6a98

jmp_50a8:
  *(u8 *)(r3 + 0xc4) = 0x1
  r0 = 0x1a
  goto jmp_4ee0

jmp_50c0:
  r0 = 0x9
  goto jmp_4ee0

jmp_50d0:
  r1 = 0x11
  goto jmp_4ee0

jmp_50e0:
  r1 = 0xa
  goto jmp_4ee0

jmp_50f0:
  r1 = 0x4
  goto jmp_4ee0

jmp_5100:
  r1 = 0x11
  goto jmp_4ee0

jmp_5110:
  w1 = *(u8 *)(r4 + 0x5a)
  r5 = 0x3 ll
  if r1 == 0x1 goto jmp_5348
  r5 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_5358

jmp_5148:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_5378

jmp_5160:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r1 = 0x0
  *(u64 *)(r10 - 0xed0) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x2 goto jmp_57e0
  w1 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0xec8) = r1
  if r1 > 0xb goto jmp_7f40
  r1 = *(u64 *)(r10 - 0xec8)
  if r1 == 0x0 goto jmp_57e0
  r5 = r6
  r5 += 0x10
  r2 <<= 0x3
  r6 += r2
  *(u64 *)(r10 - 0xed8) = r6
  r1 = *(u64 *)(r10 - 0xec8)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec8) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xed0) = r1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0xec0) = r1
  goto jmp_5248

jmp_5238:
  r2 = *(u64 *)(r10 - 0xed8)
  if r5 == r2 goto jmp_57e0

jmp_5248:
  r7 = r10
  r7 += -0xfe8
  r8 = *(u64 *)(r5 + 0x0)
  r5 += 0x8
  r9 = *(u64 *)(r8 + 0x8)
  r6 = *(u64 *)(r10 - 0xec0)
  r2 = *(u64 *)(r10 - 0xec8)
  goto jmp_52c8

jmp_5288:
  *(u8 *)(r7 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xed0)
  r1 += 0x1
  *(u64 *)(r10 - 0xed0) = r1

jmp_52a8:
  r6 += 0x20
  r7 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_5238

jmp_52c8:
  r0 = *(u64 *)(r6 - 0x18)
  if r0 != r9 goto jmp_52a8
  r0 = *(u64 *)(r8 + 0x10)
  r1 = *(u64 *)(r6 - 0x10)
  if r1 != r0 goto jmp_52a8
  r1 = *(u64 *)(r8 + 0x18)
  r0 = *(u64 *)(r6 - 0x8)
  if r0 != r1 goto jmp_52a8
  r1 = *(u64 *)(r8 + 0x20)
  r0 = *(u64 *)(r6 + 0x0)
  if r0 != r1 goto jmp_52a8
  w1 = *(u8 *)(r7 + 0x0)
  if r1 != 0x0 goto jmp_52a8
  w1 = *(u8 *)(r8 + 0x1)
  if r1 != 0x0 goto jmp_5288
  goto jmp_6a98

jmp_5348:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_5148

jmp_5358:
  r0 = r5
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_5160

jmp_5378:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 == 0x1a goto jmp_3880
  goto jmp_56f8

jmp_53a0:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_3ab0

jmp_53b0:
  r0 = r5
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6368

jmp_53d0:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7f80
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x3 goto jmp_6308
  w1 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0xec0) = r1
  if r1 > 0xb goto jmp_7ee0
  r1 = *(u64 *)(r10 - 0xec0)
  if r1 == 0x0 goto jmp_6308
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xeb0) = r1
  r1 = *(u64 *)(r10 - 0xec0)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec0) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0xeb8) = r1
  goto jmp_54b0

jmp_54a0:
  r1 = *(u64 *)(r10 - 0xeb0)
  if r3 == r1 goto jmp_6308

jmp_54b0:
  r9 = r10
  r9 += -0xfe8
  r1 = *(u64 *)(r3 + 0x0)
  r3 += 0x8
  *(u64 *)(r10 - 0xed0) = r1
  r6 = *(u64 *)(r1 + 0x8)
  r2 = *(u64 *)(r10 - 0xec0)
  r0 = *(u64 *)(r10 - 0xeb8)
  goto jmp_5538

jmp_54f8:
  *(u8 *)(r9 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xec8)
  r1 += 0x1
  *(u64 *)(r10 - 0xec8) = r1

jmp_5518:
  r0 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_54a0

jmp_5538:
  r1 = *(u64 *)(r0 - 0x18)
  if r1 != r6 goto jmp_5518
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r0 - 0x10)
  if r5 != r1 goto jmp_5518
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x18)
  r5 = *(u64 *)(r0 - 0x8)
  if r5 != r1 goto jmp_5518
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x20)
  r5 = *(u64 *)(r0 + 0x0)
  if r5 != r1 goto jmp_5518
  w1 = *(u8 *)(r9 + 0x0)
  if r1 != 0x0 goto jmp_5518
  r1 = *(u64 *)(r10 - 0xed0)
  w1 = *(u8 *)(r1 + 0x1)
  if r1 != 0x0 goto jmp_54f8
  goto jmp_6a98

jmp_55d8:
  *(u64 *)(r10 - 0xed8) = r6
  w3 = *(u8 *)(r5 + 0x5a)
  r6 = 0x3 ll
  if r3 == 0x1 goto jmp_56a0
  r6 = 0x3
  r0 = 0x1a
  if r3 != 0x0 goto jmp_56b0

jmp_5618:
  r3 = r0
  r3 &= 0x1b
  if r3 != 0x1a goto jmp_56d0

jmp_5630:
  r3 = data_0000 ll
  if r0 < r3 goto jmp_7c98
  r3 = 0x0
  *(u64 *)(r10 - 0xec8) = r3
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 != 0x3 goto jmp_63a8

jmp_5670:
  w2 = *(u8 *)(r5 + 0x58)
  r3 = *(u64 *)(r10 - 0xec8)
  r3 &= 0xff
  if r3 < r2 goto jmp_6a98
  r6 = *(u64 *)(r10 - 0xed8)
  goto jmp_3b40

jmp_56a0:
  r0 = 0x1a
  if r3 == 0x0 goto jmp_5618

jmp_56b0:
  r0 = r6
  r3 = r0
  r3 &= 0x1b
  if r3 == 0x1a goto jmp_5630

jmp_56d0:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  r6 = *(u64 *)(r10 - 0xed8)
  if r2 == 0x1a goto jmp_3b40

jmp_56f8:
  r1 = r0
  r1 >>= 0x20
  goto jmp_4ee0

jmp_5710:
  r5 = r3
  r1 = *(u64 *)(r8 + 0x48)
  if r1 >= r2 goto jmp_5d90
  r1 = 0x0
  r0 = 0x0
  goto jmp_4ee0

jmp_5740:
  r1 = 0x12
  goto jmp_4ee0

jmp_5750:
  r1 = *(u64 *)(r3 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_57d0
  r1 = *(u64 *)(r3 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_57d0
  r1 = *(u64 *)(r3 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_57d0
  r1 = *(u64 *)(r3 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_3418

jmp_57d0:
  r0 = 0x6
  goto jmp_4ee0

jmp_57e0:
  w2 = *(u8 *)(r4 + 0x58)
  r1 = *(u64 *)(r10 - 0xed0)
  r1 &= 0xff
  if r1 >= r2 goto jmp_3880
  goto jmp_6a98

jmp_5808:
  *(u64 *)(r10 - 0xed8) = r6
  w3 = *(u8 *)(r5 + 0x5a)
  r6 = 0x3 ll
  if r3 == 0x1 goto jmp_5a70
  r6 = 0x3
  r0 = 0x1a
  if r3 != 0x0 goto jmp_5a80

jmp_5848:
  r3 = r0
  r3 &= 0x1b
  if r3 != 0x1a goto jmp_5aa0

jmp_5860:
  r3 = data_0000 ll
  if r0 < r3 goto jmp_76a0
  r3 = 0x0
  *(u64 *)(r10 - 0xec8) = r3
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x4 goto jmp_6860
  w3 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0xec0) = r3
  if r3 > 0xb goto jmp_7ee0
  r3 = *(u64 *)(r10 - 0xec0)
  if r3 == 0x0 goto jmp_6860
  r3 = *(u64 *)(r10 - 0xed8)
  r0 = r3
  r0 += 0x20
  *(u64 *)(r10 - 0xed0) = r0
  r2 <<= 0x3
  r3 += r2
  *(u64 *)(r10 - 0xeb0) = r3
  r2 = *(u64 *)(r10 - 0xec0)
  r2 <<= 0x5
  *(u64 *)(r10 - 0xec0) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0xec8) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0xeb8) = r2
  goto jmp_5960

jmp_5948:
  r2 = *(u64 *)(r10 - 0xed0)
  r3 = *(u64 *)(r10 - 0xeb0)
  if r2 == r3 goto jmp_6860

jmp_5960:
  r9 = r10
  r9 += -0xfe8
  r2 = *(u64 *)(r10 - 0xed0)
  r7 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0xed0) = r2
  r6 = *(u64 *)(r7 + 0x8)
  r8 = *(u64 *)(r10 - 0xeb8)
  r2 = *(u64 *)(r10 - 0xec0)
  goto jmp_59d0

jmp_59b0:
  r8 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_5948

jmp_59d0:
  r3 = *(u64 *)(r8 - 0x18)
  if r3 != r6 goto jmp_59b0
  r3 = *(u64 *)(r7 + 0x10)
  r0 = *(u64 *)(r8 - 0x10)
  if r0 != r3 goto jmp_59b0
  r3 = *(u64 *)(r7 + 0x18)
  r0 = *(u64 *)(r8 - 0x8)
  if r0 != r3 goto jmp_59b0
  r3 = *(u64 *)(r7 + 0x20)
  r0 = *(u64 *)(r8 + 0x0)
  if r0 != r3 goto jmp_59b0
  w3 = *(u8 *)(r9 + 0x0)
  if r3 != 0x0 goto jmp_59b0
  w3 = *(u8 *)(r7 + 0x1)
  if r3 == 0x0 goto jmp_3658
  *(u8 *)(r9 + 0x0) = 0x1
  r3 = *(u64 *)(r10 - 0xec8)
  r3 += 0x1
  *(u64 *)(r10 - 0xec8) = r3
  goto jmp_59b0

jmp_5a70:
  r0 = 0x1a
  if r3 == 0x0 goto jmp_5848

jmp_5a80:
  r0 = r6
  r3 = r0
  r3 &= 0x1b
  if r3 == 0x1a goto jmp_5860

jmp_5aa0:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  r6 = *(u64 *)(r10 - 0xed8)
  if r2 == 0x1a goto jmp_3d58
  goto jmp_6390

jmp_5ad0:
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r7 + 0x5a)
  r6 = 0x3 ll
  if r1 == 0x1 goto jmp_5d30
  r6 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_5d40

jmp_5b10:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_5d60

jmp_5b28:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_76a0
  r1 = 0x0
  *(u64 *)(r10 - 0xec0) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x3 goto jmp_6a78
  w1 = *(u8 *)(r7 + 0x59)
  *(u64 *)(r10 - 0xeb8) = r1
  if r1 > 0xb goto jmp_7f90
  r1 = *(u64 *)(r10 - 0xeb8)
  if r1 == 0x0 goto jmp_6a78
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xea8) = r1
  r1 = *(u64 *)(r10 - 0xeb8)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xeb8) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec0) = r1
  r1 = r7
  r1 += 0x73
  *(u64 *)(r10 - 0xeb0) = r1
  goto jmp_5c08

jmp_5bf8:
  r1 = *(u64 *)(r10 - 0xea8)
  if r8 == r1 goto jmp_6a78

jmp_5c08:
  r0 = r10
  r0 += -0xfe8
  r1 = *(u64 *)(r8 + 0x0)
  r8 += 0x8
  *(u64 *)(r10 - 0xec8) = r1
  r9 = *(u64 *)(r1 + 0x8)
  r2 = *(u64 *)(r10 - 0xeb8)
  r1 = *(u64 *)(r10 - 0xeb0)
  goto jmp_5c70

jmp_5c50:
  r1 += 0x20
  r0 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_5bf8

jmp_5c70:
  r5 = *(u64 *)(r1 - 0x18)
  if r5 != r9 goto jmp_5c50
  r5 = *(u64 *)(r10 - 0xec8)
  r5 = *(u64 *)(r5 + 0x10)
  r6 = *(u64 *)(r1 - 0x10)
  if r6 != r5 goto jmp_5c50
  r5 = *(u64 *)(r10 - 0xec8)
  r5 = *(u64 *)(r5 + 0x18)
  r6 = *(u64 *)(r1 - 0x8)
  if r6 != r5 goto jmp_5c50
  r5 = *(u64 *)(r10 - 0xec8)
  r5 = *(u64 *)(r5 + 0x20)
  r6 = *(u64 *)(r1 + 0x0)
  if r6 != r5 goto jmp_5c50
  w5 = *(u8 *)(r0 + 0x0)
  if r5 != 0x0 goto jmp_5c50
  r5 = *(u64 *)(r10 - 0xec8)
  w5 = *(u8 *)(r5 + 0x1)
  if r5 == 0x0 goto jmp_6a98
  *(u8 *)(r0 + 0x0) = 0x1
  r5 = *(u64 *)(r10 - 0xec0)
  r5 += 0x1
  *(u64 *)(r10 - 0xec0) = r5
  goto jmp_5c50

jmp_5d30:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_5b10

jmp_5d40:
  r0 = r6
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_5b28

jmp_5d60:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  r6 = *(u64 *)(r10 - 0xed8)
  if r1 == 0x1a goto jmp_3f50
  goto jmp_6390

jmp_5d90:
  r6 = r4
  r6 += 0x8
  r3 = r8
  r3 += 0x58
  if r7 == 0x0 goto jmp_6890
  *(u8 *)(r8 + 0xc4) = 0x1
  r4 = *(u64 *)(r6 + 0x0)
  r0 = *(u64 *)(r6 + 0x8)
  r7 = *(u64 *)(r6 + 0x10)
  r6 = *(u64 *)(r6 + 0x18)
  *(u64 *)(r3 + 0x18) = r6
  *(u64 *)(r3 + 0x10) = r7
  *(u64 *)(r3 + 0x8) = r0
  *(u64 *)(r3 + 0x0) = r4
  r3 = *(u64 *)(r5 + 0x18)
  *(u64 *)(r8 + 0x90) = r3
  r3 = *(u64 *)(r5 + 0x10)
  *(u64 *)(r8 + 0x88) = r3
  r3 = *(u64 *)(r5 + 0x8)
  *(u64 *)(r8 + 0x80) = r3
  r3 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r8 + 0x78) = r3
  *(u64 *)(r8 + 0xc9) = r2
  r1 -= r2
  *(u64 *)(r8 + 0x98) = r1
  *(u8 *)(r8 + 0xc5) = 0x1
  r0 = 0x1a
  goto jmp_4ee0

jmp_5e70:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_4190

jmp_5e80:
  r0 = r5
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6368

jmp_5ea0:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_76a0
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x3 goto jmp_6308
  w1 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0xec0) = r1
  if r1 > 0xb goto jmp_7ee0
  r1 = *(u64 *)(r10 - 0xec0)
  if r1 == 0x0 goto jmp_6308
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xeb0) = r1
  r1 = *(u64 *)(r10 - 0xec0)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec0) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0xeb8) = r1
  goto jmp_5f80

jmp_5f70:
  r1 = *(u64 *)(r10 - 0xeb0)
  if r3 == r1 goto jmp_6308

jmp_5f80:
  r9 = r10
  r9 += -0xfe8
  r1 = *(u64 *)(r3 + 0x0)
  r3 += 0x8
  *(u64 *)(r10 - 0xed0) = r1
  r6 = *(u64 *)(r1 + 0x8)
  r2 = *(u64 *)(r10 - 0xec0)
  r0 = *(u64 *)(r10 - 0xeb8)
  goto jmp_5fe8

jmp_5fc8:
  r0 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_5f70

jmp_5fe8:
  r1 = *(u64 *)(r0 - 0x18)
  if r1 != r6 goto jmp_5fc8
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r0 - 0x10)
  if r5 != r1 goto jmp_5fc8
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x18)
  r5 = *(u64 *)(r0 - 0x8)
  if r5 != r1 goto jmp_5fc8
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x20)
  r5 = *(u64 *)(r0 + 0x0)
  if r5 != r1 goto jmp_5fc8
  w1 = *(u8 *)(r9 + 0x0)
  if r1 != 0x0 goto jmp_5fc8
  r1 = *(u64 *)(r10 - 0xed0)
  w1 = *(u8 *)(r1 + 0x1)
  if r1 == 0x0 goto jmp_6a98
  *(u8 *)(r9 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xec8)
  r1 += 0x1
  *(u64 *)(r10 - 0xec8) = r1
  goto jmp_5fc8

jmp_60a8:
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r4 + 0x5a)
  r5 = 0x3 ll
  if r1 == 0x1 goto jmp_6338
  r5 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_6348

jmp_60e8:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6368

jmp_6100:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_76a0
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x3 goto jmp_6308
  w1 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0xec0) = r1
  if r1 > 0xb goto jmp_7ee0
  r1 = *(u64 *)(r10 - 0xec0)
  if r1 == 0x0 goto jmp_6308
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xeb0) = r1
  r1 = *(u64 *)(r10 - 0xec0)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec0) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0xeb8) = r1
  goto jmp_61e0

jmp_61d0:
  r1 = *(u64 *)(r10 - 0xeb0)
  if r3 == r1 goto jmp_6308

jmp_61e0:
  r9 = r10
  r9 += -0xfe8
  r1 = *(u64 *)(r3 + 0x0)
  r3 += 0x8
  *(u64 *)(r10 - 0xed0) = r1
  r6 = *(u64 *)(r1 + 0x8)
  r2 = *(u64 *)(r10 - 0xec0)
  r0 = *(u64 *)(r10 - 0xeb8)
  goto jmp_6248

jmp_6228:
  r0 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_61d0

jmp_6248:
  r1 = *(u64 *)(r0 - 0x18)
  if r1 != r6 goto jmp_6228
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r0 - 0x10)
  if r5 != r1 goto jmp_6228
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x18)
  r5 = *(u64 *)(r0 - 0x8)
  if r5 != r1 goto jmp_6228
  r1 = *(u64 *)(r10 - 0xed0)
  r1 = *(u64 *)(r1 + 0x20)
  r5 = *(u64 *)(r0 + 0x0)
  if r5 != r1 goto jmp_6228
  w1 = *(u8 *)(r9 + 0x0)
  if r1 != 0x0 goto jmp_6228
  r1 = *(u64 *)(r10 - 0xed0)
  w1 = *(u8 *)(r1 + 0x1)
  if r1 == 0x0 goto jmp_6a98
  *(u8 *)(r9 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xec8)
  r1 += 0x1
  *(u64 *)(r10 - 0xec8) = r1
  goto jmp_6228

jmp_6308:
  w2 = *(u8 *)(r4 + 0x58)
  r1 = *(u64 *)(r10 - 0xec8)
  r1 &= 0xff
  if r1 < r2 goto jmp_6a98
  r6 = *(u64 *)(r10 - 0xed8)
  goto jmp_4220

jmp_6338:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_60e8

jmp_6348:
  r0 = r5
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_6100

jmp_6368:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  r6 = *(u64 *)(r10 - 0xed8)
  if r1 == 0x1a goto jmp_4220

jmp_6390:
  r1 = r0
  r1 >>= 0x20
  goto jmp_4ee0

jmp_63a8:
  w3 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0xec0) = r3
  if r3 > 0xb goto jmp_7ee0
  r3 = *(u64 *)(r10 - 0xed8)
  r0 = r3
  r0 += 0x18
  *(u64 *)(r10 - 0xed0) = r0
  r2 <<= 0x3
  r3 += r2
  *(u64 *)(r10 - 0xeb8) = r3
  r2 = *(u64 *)(r10 - 0xec0)
  r2 <<= 0x5
  *(u64 *)(r10 - 0xeb0) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0xec8) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0xea8) = r2
  goto jmp_6468

jmp_6440:
  r2 = *(u64 *)(r10 - 0xed0)
  r2 += 0x8
  *(u64 *)(r10 - 0xed0) = r2
  r3 = *(u64 *)(r10 - 0xeb8)
  if r2 == r3 goto jmp_5670

jmp_6468:
  r2 = *(u64 *)(r10 - 0xec0)
  if r2 == 0x0 goto jmp_6440
  r8 = r10
  r8 += -0xfe8
  r2 = *(u64 *)(r10 - 0xed0)
  r6 = *(u64 *)(r2 + 0x0)
  r9 = *(u64 *)(r6 + 0x8)
  r7 = *(u64 *)(r10 - 0xea8)
  r2 = *(u64 *)(r10 - 0xeb0)
  goto jmp_64d8

jmp_64b8:
  r7 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_6440

jmp_64d8:
  r3 = *(u64 *)(r7 - 0x18)
  if r3 != r9 goto jmp_64b8
  r3 = *(u64 *)(r6 + 0x10)
  r0 = *(u64 *)(r7 - 0x10)
  if r0 != r3 goto jmp_64b8
  r3 = *(u64 *)(r6 + 0x18)
  r0 = *(u64 *)(r7 - 0x8)
  if r0 != r3 goto jmp_64b8
  r3 = *(u64 *)(r6 + 0x20)
  r0 = *(u64 *)(r7 + 0x0)
  if r0 != r3 goto jmp_64b8
  w3 = *(u8 *)(r8 + 0x0)
  if r3 != 0x0 goto jmp_64b8
  w3 = *(u8 *)(r6 + 0x1)
  if r3 == 0x0 goto jmp_6a98
  *(u8 *)(r8 + 0x0) = 0x1
  r3 = *(u64 *)(r10 - 0xec8)
  r3 += 0x1
  *(u64 *)(r10 - 0xec8) = r3
  goto jmp_64b8

jmp_6578:
  w3 = *(u8 *)(r7 + 0x5a)
  r8 = 0x3 ll
  if r3 == 0x1 goto jmp_67f8
  r8 = 0x3
  r0 = 0x1a
  if r3 != 0x0 goto jmp_6808

jmp_65b0:
  r3 = r0
  r3 &= 0x1b
  if r3 != 0x1a goto jmp_6828

jmp_65c8:
  r3 = data_0000 ll
  if r0 < r3 goto jmp_76a0
  r3 = 0x0
  *(u64 *)(r10 - 0xec0) = r3
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x3 goto jmp_6aa8
  w3 = *(u8 *)(r7 + 0x59)
  *(u64 *)(r10 - 0xeb8) = r3
  if r3 > 0xb goto jmp_7f90
  r3 = *(u64 *)(r10 - 0xeb8)
  if r3 == 0x0 goto jmp_6aa8
  r3 = r6
  r3 += 0x18
  *(u64 *)(r10 - 0xec8) = r3
  r2 <<= 0x3
  r6 += r2
  *(u64 *)(r10 - 0xed8) = r6
  r2 = *(u64 *)(r10 - 0xeb8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0xeb8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0xec0) = r2
  r2 = r7
  r2 += 0x73
  *(u64 *)(r10 - 0xeb0) = r2
  goto jmp_66c0

jmp_66a8:
  r2 = *(u64 *)(r10 - 0xed8)
  r3 = *(u64 *)(r10 - 0xec8)
  if r3 == r2 goto jmp_6aa8

jmp_66c0:
  r9 = r10
  r9 += -0xfe8
  r2 = *(u64 *)(r10 - 0xec8)
  r3 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0xec8) = r2
  *(u64 *)(r10 - 0xed0) = r3
  r8 = *(u64 *)(r3 + 0x8)
  r2 = *(u64 *)(r10 - 0xeb0)
  r3 = *(u64 *)(r10 - 0xeb8)
  goto jmp_6738

jmp_6718:
  r2 += 0x20
  r9 += 0x1
  r3 += -0x20
  if r3 == 0x0 goto jmp_66a8

jmp_6738:
  r0 = *(u64 *)(r2 - 0x18)
  if r0 != r8 goto jmp_6718
  r0 = *(u64 *)(r10 - 0xed0)
  r0 = *(u64 *)(r0 + 0x10)
  r6 = *(u64 *)(r2 - 0x10)
  if r6 != r0 goto jmp_6718
  r0 = *(u64 *)(r10 - 0xed0)
  r0 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r2 - 0x8)
  if r6 != r0 goto jmp_6718
  r0 = *(u64 *)(r10 - 0xed0)
  r0 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r2 + 0x0)
  if r6 != r0 goto jmp_6718
  w0 = *(u8 *)(r9 + 0x0)
  if r0 != 0x0 goto jmp_6718
  r0 = *(u64 *)(r10 - 0xed0)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 == 0x0 goto jmp_3658
  *(u8 *)(r9 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0xec0)
  r0 += 0x1
  *(u64 *)(r10 - 0xec0) = r0
  goto jmp_6718

jmp_67f8:
  r0 = 0x1a
  if r3 == 0x0 goto jmp_65b0

jmp_6808:
  r0 = r8
  r3 = r0
  r3 &= 0x1b
  if r3 == 0x1a goto jmp_65c8

jmp_6828:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_4470
  goto jmp_6390

jmp_6850:
  r1 = 0xe
  goto jmp_4ee0

jmp_6860:
  w2 = *(u8 *)(r5 + 0x58)
  r3 = *(u64 *)(r10 - 0xec8)
  r3 &= 0xff
  if r3 < r2 goto jmp_3658
  r6 = *(u64 *)(r10 - 0xed8)
  goto jmp_3d58

jmp_6890:
  r1 = *(u64 *)(r4 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_7f70
  r1 = *(u64 *)(r4 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_7f70
  r1 = *(u64 *)(r4 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_7f70
  r1 = *(u64 *)(r4 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_7f70
  r1 = *(u64 *)(r4 + 0x50)
  if r1 != 0x52 goto jmp_6a60
  w1 = *(u8 *)(r4 + 0x85)
  r4 = 0x3 ll
  if r1 == 0x1 goto jmp_6a30
  r4 = 0x3
  r2 = 0x1a
  if r1 != 0x0 goto jmp_6a40

jmp_6958:
  r1 = r2
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6a60

jmp_6970:
  r4 = data_0000 ll
  r0 = 0x0
  r1 = 0x2
  if r2 < r4 goto jmp_4ee0
  *(u8 *)(r8 + 0xc4) = 0x1
  r1 = *(u64 *)(r6 + 0x0)
  r2 = *(u64 *)(r6 + 0x8)
  r4 = *(u64 *)(r6 + 0x10)
  r0 = *(u64 *)(r6 + 0x18)
  *(u64 *)(r3 + 0x18) = r0
  *(u64 *)(r3 + 0x10) = r4
  *(u64 *)(r3 + 0x8) = r2
  *(u64 *)(r3 + 0x0) = r1
  r1 = *(u64 *)(r5 + 0x18)
  *(u64 *)(r8 + 0x90) = r1
  r1 = *(u64 *)(r5 + 0x10)
  *(u64 *)(r8 + 0x88) = r1
  r1 = *(u64 *)(r5 + 0x8)
  *(u64 *)(r8 + 0x80) = r1
  r1 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r8 + 0x78) = r1
  r0 = 0x1a
  goto jmp_4ee0

jmp_6a30:
  r2 = 0x1a
  if r1 == 0x0 goto jmp_6958

jmp_6a40:
  r2 = r4
  r1 = r2
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_6970

jmp_6a60:
  r0 = 0x0
  r1 = 0x2
  goto jmp_4ee0

jmp_6a78:
  w1 = *(u8 *)(r7 + 0x58)
  r2 = *(u64 *)(r10 - 0xec0)
  r2 &= 0xff
  if r2 >= r1 goto jmp_6ae8

jmp_6a98:
  r0 = 0x7
  goto jmp_4ee0

jmp_6aa8:
  w2 = *(u8 *)(r7 + 0x58)
  r3 = *(u64 *)(r10 - 0xec0)
  r3 &= 0xff
  if r3 < r2 goto jmp_3658
  goto jmp_4470

jmp_6ad0:
  r0 = 0x3
  r1 = 0x0
  goto jmp_4ee0

jmp_6ae8:
  r6 = *(u64 *)(r10 - 0xed8)
  goto jmp_3f50

jmp_6af8:
  *(u64 *)(r10 - 0xed0) = r3
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r7 + 0x5a)
  r3 = 0x3 ll
  if r1 == 0x1 goto jmp_6d38
  r3 = 0x3
  r6 = 0x1a
  if r1 != 0x0 goto jmp_6d48

jmp_6b40:
  r1 = r6
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_6d68

jmp_6b58:
  r1 = data_0000 ll
  if r6 < r1 goto jmp_7c98
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x2 goto jmp_7868
  w1 = *(u8 *)(r7 + 0x59)
  *(u64 *)(r10 - 0xec0) = r1
  if r1 > 0xb goto jmp_7ee0
  r1 = *(u64 *)(r10 - 0xec0)
  if r1 == 0x0 goto jmp_7868
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xed8) = r1
  r1 = *(u64 *)(r10 - 0xec0)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec0) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r7
  r1 += 0x73
  *(u64 *)(r10 - 0xeb8) = r1
  goto jmp_6c38

jmp_6c28:
  r2 = *(u64 *)(r10 - 0xed8)
  if r5 == r2 goto jmp_7868

jmp_6c38:
  r8 = r10
  r8 += -0xfe8
  r9 = *(u64 *)(r5 + 0x0)
  r5 += 0x8
  r0 = *(u64 *)(r9 + 0x8)
  r3 = *(u64 *)(r10 - 0xeb8)
  r2 = *(u64 *)(r10 - 0xec0)
  goto jmp_6c98

jmp_6c78:
  r3 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_6c28

jmp_6c98:
  r6 = *(u64 *)(r3 - 0x18)
  if r6 != r0 goto jmp_6c78
  r6 = *(u64 *)(r9 + 0x10)
  r1 = *(u64 *)(r3 - 0x10)
  if r1 != r6 goto jmp_6c78
  r1 = *(u64 *)(r9 + 0x18)
  r6 = *(u64 *)(r3 - 0x8)
  if r6 != r1 goto jmp_6c78
  r1 = *(u64 *)(r9 + 0x20)
  r6 = *(u64 *)(r3 + 0x0)
  if r6 != r1 goto jmp_6c78
  w1 = *(u8 *)(r8 + 0x0)
  if r1 != 0x0 goto jmp_6c78
  w1 = *(u8 *)(r9 + 0x1)
  if r1 == 0x0 goto jmp_6a98
  *(u8 *)(r8 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xec8)
  r1 += 0x1
  *(u64 *)(r10 - 0xec8) = r1
  goto jmp_6c78

jmp_6d38:
  r6 = 0x1a
  if r1 == 0x0 goto jmp_6b40

jmp_6d48:
  r6 = r3
  r1 = r6
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_6b58

jmp_6d68:
  r2 = r6
  r2 <<= 0x20
  r2 >>= 0x20
  r1 = 0xc
  r3 = *(u64 *)(r10 - 0xed0)
  if r2 == 0x1a goto jmp_4b98
  r1 = r6
  r1 >>= 0x20
  r0 = r6
  goto jmp_4ee0

jmp_6db8:
  *(u64 *)(r10 - 0xed0) = r3
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r7 + 0x5a)
  r3 = 0x3 ll
  if r1 == 0x1 goto jmp_7460
  r3 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_7470

jmp_6e00:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_7490

jmp_6e18:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r1 = 0x0
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x2 goto jmp_78a8
  r3 = *(u64 *)(r10 - 0xec8)
  w3 = *(u8 *)(r3 + 0x59)
  *(u64 *)(r10 - 0xeb8) = r3
  if r3 > 0xb goto jmp_7f98
  r3 = *(u64 *)(r10 - 0xeb8)
  if r3 == 0x0 goto jmp_78a8
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xed8) = r1
  r1 = *(u64 *)(r10 - 0xeb8)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xeb8) = r1
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0xec8)
  r2 += 0x73
  *(u64 *)(r10 - 0xeb0) = r2
  goto jmp_6ef0

jmp_6ee0:
  r2 = *(u64 *)(r10 - 0xed8)
  if r5 == r2 goto jmp_78a8

jmp_6ef0:
  r9 = r10
  r9 += -0xfe8
  r0 = *(u64 *)(r5 + 0x0)
  r5 += 0x8
  r3 = *(u64 *)(r0 + 0x8)
  r6 = *(u64 *)(r10 - 0xeb0)
  r2 = *(u64 *)(r10 - 0xeb8)
  goto jmp_6f60

jmp_6f30:
  *(u8 *)(r9 + 0x0) = 0x1
  r1 += 0x1

jmp_6f40:
  r6 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_6ee0

jmp_6f60:
  r7 = *(u64 *)(r6 - 0x18)
  if r7 != r3 goto jmp_6f40
  r7 = *(u64 *)(r0 + 0x10)
  r8 = *(u64 *)(r6 - 0x10)
  if r8 != r7 goto jmp_6f40
  r7 = *(u64 *)(r0 + 0x18)
  r8 = *(u64 *)(r6 - 0x8)
  if r8 != r7 goto jmp_6f40
  r7 = *(u64 *)(r0 + 0x20)
  r8 = *(u64 *)(r6 + 0x0)
  if r8 != r7 goto jmp_6f40
  w7 = *(u8 *)(r9 + 0x0)
  if r7 != 0x0 goto jmp_6f40
  w7 = *(u8 *)(r0 + 0x1)
  if r7 != 0x0 goto jmp_6f30
  goto jmp_6a98

jmp_6fe0:
  *(u64 *)(r10 - 0xed0) = r3
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r7 + 0x5a)
  r3 = 0x3 ll
  if r1 == 0x1 goto jmp_74c0
  r3 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_74d0

jmp_7028:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_74f0

jmp_7040:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x2 goto jmp_78d8
  w1 = *(u8 *)(r7 + 0x59)
  *(u64 *)(r10 - 0xec0) = r1
  if r1 > 0xb goto jmp_7ee0
  r1 = *(u64 *)(r10 - 0xec0)
  if r1 == 0x0 goto jmp_78d8
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xed8) = r1
  r1 = *(u64 *)(r10 - 0xec0)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec0) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r7
  r1 += 0x73
  *(u64 *)(r10 - 0xeb8) = r1
  goto jmp_7120

jmp_7110:
  r2 = *(u64 *)(r10 - 0xed8)
  if r5 == r2 goto jmp_78d8

jmp_7120:
  r8 = r10
  r8 += -0xfe8
  r9 = *(u64 *)(r5 + 0x0)
  r5 += 0x8
  r0 = *(u64 *)(r9 + 0x8)
  r3 = *(u64 *)(r10 - 0xeb8)
  r2 = *(u64 *)(r10 - 0xec0)
  goto jmp_71a0

jmp_7160:
  *(u8 *)(r8 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xec8)
  r1 += 0x1
  *(u64 *)(r10 - 0xec8) = r1

jmp_7180:
  r3 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7110

jmp_71a0:
  r6 = *(u64 *)(r3 - 0x18)
  if r6 != r0 goto jmp_7180
  r6 = *(u64 *)(r9 + 0x10)
  r1 = *(u64 *)(r3 - 0x10)
  if r1 != r6 goto jmp_7180
  r1 = *(u64 *)(r9 + 0x18)
  r6 = *(u64 *)(r3 - 0x8)
  if r6 != r1 goto jmp_7180
  r1 = *(u64 *)(r9 + 0x20)
  r6 = *(u64 *)(r3 + 0x0)
  if r6 != r1 goto jmp_7180
  w1 = *(u8 *)(r8 + 0x0)
  if r1 != 0x0 goto jmp_7180
  w1 = *(u8 *)(r9 + 0x1)
  if r1 != 0x0 goto jmp_7160
  goto jmp_6a98

jmp_7220:
  *(u64 *)(r10 - 0xed0) = r3
  *(u64 *)(r10 - 0xed8) = r6
  w1 = *(u8 *)(r7 + 0x5a)
  r3 = 0x3 ll
  if r1 == 0x1 goto jmp_7520
  r3 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_7530

jmp_7268:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_7550

jmp_7280:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r2 == 0x2 goto jmp_7908
  w1 = *(u8 *)(r7 + 0x59)
  *(u64 *)(r10 - 0xec0) = r1
  if r1 > 0xb goto jmp_7ee0
  r1 = *(u64 *)(r10 - 0xec0)
  if r1 == 0x0 goto jmp_7908
  r2 <<= 0x3
  r1 = *(u64 *)(r10 - 0xed8)
  r1 += r2
  *(u64 *)(r10 - 0xed8) = r1
  r1 = *(u64 *)(r10 - 0xec0)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec0) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec8) = r1
  r1 = r7
  r1 += 0x73
  *(u64 *)(r10 - 0xeb8) = r1
  goto jmp_7360

jmp_7350:
  r2 = *(u64 *)(r10 - 0xed8)
  if r5 == r2 goto jmp_7908

jmp_7360:
  r8 = r10
  r8 += -0xfe8
  r9 = *(u64 *)(r5 + 0x0)
  r5 += 0x8
  r0 = *(u64 *)(r9 + 0x8)
  r3 = *(u64 *)(r10 - 0xeb8)
  r2 = *(u64 *)(r10 - 0xec0)
  goto jmp_73c0

jmp_73a0:
  r3 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7350

jmp_73c0:
  r6 = *(u64 *)(r3 - 0x18)
  if r6 != r0 goto jmp_73a0
  r6 = *(u64 *)(r9 + 0x10)
  r1 = *(u64 *)(r3 - 0x10)
  if r1 != r6 goto jmp_73a0
  r1 = *(u64 *)(r9 + 0x18)
  r6 = *(u64 *)(r3 - 0x8)
  if r6 != r1 goto jmp_73a0
  r1 = *(u64 *)(r9 + 0x20)
  r6 = *(u64 *)(r3 + 0x0)
  if r6 != r1 goto jmp_73a0
  w1 = *(u8 *)(r8 + 0x0)
  if r1 != 0x0 goto jmp_73a0
  w1 = *(u8 *)(r9 + 0x1)
  if r1 == 0x0 goto jmp_6a98
  *(u8 *)(r8 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xec8)
  r1 += 0x1
  *(u64 *)(r10 - 0xec8) = r1
  goto jmp_73a0

jmp_7460:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_6e00

jmp_7470:
  r0 = r3
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_6e18

jmp_7490:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  r3 = *(u64 *)(r10 - 0xed0)
  if r1 == 0x1a goto jmp_4c98
  goto jmp_56f8

jmp_74c0:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_7028

jmp_74d0:
  r0 = r3
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_7040

jmp_74f0:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  r3 = *(u64 *)(r10 - 0xed0)
  if r1 == 0x1a goto jmp_4d88
  goto jmp_56f8

jmp_7520:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_7268

jmp_7530:
  r0 = r3
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_7280

jmp_7550:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  r3 = *(u64 *)(r10 - 0xed0)
  if r1 == 0x1a goto jmp_4e30
  goto jmp_56f8

jmp_7580:
  w1 = *(u8 *)(r7 + 0x5a)
  r9 = 0x3 ll
  if r1 == 0x1 goto jmp_77f8
  r9 = 0x3
  r2 = 0x1a
  if r1 != 0x0 goto jmp_7808

jmp_75b8:
  r1 = r2
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_7828

jmp_75d0:
  r1 = data_0000 ll
  if r2 < r1 goto jmp_76a0
  r1 = 0x0
  *(u64 *)(r10 - 0xec0) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r0 == 0x3 goto jmp_7e68
  w1 = *(u8 *)(r7 + 0x59)
  *(u64 *)(r10 - 0xeb8) = r1
  if r1 > 0xb goto jmp_7f90
  r1 = *(u64 *)(r10 - 0xeb8)
  if r1 == 0x0 goto jmp_7e68
  r0 <<= 0x3
  r1 = r6
  r1 += r0
  *(u64 *)(r10 - 0xea8) = r1
  r1 = *(u64 *)(r10 - 0xeb8)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xeb8) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xec0) = r1
  r1 = r7
  r1 += 0x73
  *(u64 *)(r10 - 0xeb0) = r1
  goto jmp_76c0

jmp_76a0:
  r0 = 0x9
  goto jmp_4ee0

jmp_76b0:
  r1 = *(u64 *)(r10 - 0xea8)
  if r8 == r1 goto jmp_7e68

jmp_76c0:
  r0 = r10
  r0 += -0xfe8
  r1 = *(u64 *)(r8 + 0x0)
  r8 += 0x8
  *(u64 *)(r10 - 0xec8) = r1
  r1 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0xed8) = r1
  r2 = *(u64 *)(r10 - 0xeb8)
  r9 = *(u64 *)(r10 - 0xeb0)
  goto jmp_7750

jmp_7710:
  *(u8 *)(r0 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xec0)
  r1 += 0x1
  *(u64 *)(r10 - 0xec0) = r1

jmp_7730:
  r9 += 0x20
  r0 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_76b0

jmp_7750:
  r5 = *(u64 *)(r9 - 0x18)
  r1 = *(u64 *)(r10 - 0xed8)
  if r5 != r1 goto jmp_7730
  r1 = *(u64 *)(r10 - 0xec8)
  r5 = *(u64 *)(r1 + 0x10)
  r1 = *(u64 *)(r9 - 0x10)
  if r1 != r5 goto jmp_7730
  r1 = *(u64 *)(r10 - 0xec8)
  r1 = *(u64 *)(r1 + 0x18)
  r5 = *(u64 *)(r9 - 0x8)
  if r5 != r1 goto jmp_7730
  r1 = *(u64 *)(r10 - 0xec8)
  r1 = *(u64 *)(r1 + 0x20)
  r5 = *(u64 *)(r9 + 0x0)
  if r5 != r1 goto jmp_7730
  w1 = *(u8 *)(r0 + 0x0)
  if r1 != 0x0 goto jmp_7730
  r1 = *(u64 *)(r10 - 0xec8)
  w1 = *(u8 *)(r1 + 0x1)
  if r1 != 0x0 goto jmp_7710
  goto jmp_6a98

jmp_77f8:
  r2 = 0x1a
  if r1 == 0x0 goto jmp_75b8

jmp_7808:
  r2 = r9
  r1 = r2
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_75d0

jmp_7828:
  r1 = r2
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 == 0x1a goto jmp_4f58
  r1 = r2
  r1 >>= 0x20
  r0 = r2
  goto jmp_4ee0

jmp_7868:
  w2 = *(u8 *)(r7 + 0x58)
  r1 = *(u64 *)(r10 - 0xec8)
  r1 &= 0xff
  if r1 < r2 goto jmp_6a98
  r0 = 0x0
  r1 = 0xc
  r3 = *(u64 *)(r10 - 0xed0)
  goto jmp_4b98

jmp_78a8:
  r2 = *(u64 *)(r10 - 0xec8)
  w2 = *(u8 *)(r2 + 0x58)
  r1 &= 0xff
  if r1 < r2 goto jmp_6a98
  r3 = *(u64 *)(r10 - 0xed0)
  goto jmp_4c98

jmp_78d8:
  w2 = *(u8 *)(r7 + 0x58)
  r1 = *(u64 *)(r10 - 0xec8)
  r1 &= 0xff
  if r1 < r2 goto jmp_6a98
  r3 = *(u64 *)(r10 - 0xed0)
  goto jmp_4d88

jmp_7908:
  w2 = *(u8 *)(r7 + 0x58)
  r1 = *(u64 *)(r10 - 0xec8)
  r1 &= 0xff
  if r1 < r2 goto jmp_6a98
  r3 = *(u64 *)(r10 - 0xed0)
  goto jmp_4e30

jmp_7938:
  w1 = *(u8 *)(r4 + 0x5a)
  r2 = 0x3 ll
  if r1 == 0x1 goto jmp_7db8
  r2 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_7dc8

jmp_7970:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_7de8

jmp_7988:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r1 = 0x0
  *(u64 *)(r10 - 0xed0) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r5 == 0x3 goto jmp_7e90
  w1 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0xec8) = r1
  if r1 > 0xb goto jmp_7f40
  r1 = *(u64 *)(r10 - 0xec8)
  if r1 == 0x0 goto jmp_7e90
  r0 = r6
  r0 += 0x18
  r5 <<= 0x3
  r6 += r5
  *(u64 *)(r10 - 0xed8) = r6
  r1 = *(u64 *)(r10 - 0xec8)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec8) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xed0) = r1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0xec0) = r1
  goto jmp_7a70

jmp_7a60:
  r2 = *(u64 *)(r10 - 0xed8)
  if r0 == r2 goto jmp_7e90

jmp_7a70:
  r7 = r10
  r7 += -0xfe8
  r8 = *(u64 *)(r0 + 0x0)
  r0 += 0x8
  r9 = *(u64 *)(r8 + 0x8)
  r6 = *(u64 *)(r10 - 0xec0)
  r2 = *(u64 *)(r10 - 0xec8)
  goto jmp_7af0

jmp_7ab0:
  *(u8 *)(r7 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xed0)
  r1 += 0x1
  *(u64 *)(r10 - 0xed0) = r1

jmp_7ad0:
  r6 += 0x20
  r7 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7a60

jmp_7af0:
  r5 = *(u64 *)(r6 - 0x18)
  if r5 != r9 goto jmp_7ad0
  r5 = *(u64 *)(r8 + 0x10)
  r1 = *(u64 *)(r6 - 0x10)
  if r1 != r5 goto jmp_7ad0
  r1 = *(u64 *)(r8 + 0x18)
  r5 = *(u64 *)(r6 - 0x8)
  if r5 != r1 goto jmp_7ad0
  r1 = *(u64 *)(r8 + 0x20)
  r5 = *(u64 *)(r6 + 0x0)
  if r5 != r1 goto jmp_7ad0
  w1 = *(u8 *)(r7 + 0x0)
  if r1 != 0x0 goto jmp_7ad0
  w1 = *(u8 *)(r8 + 0x1)
  if r1 != 0x0 goto jmp_7ab0
  goto jmp_6a98

jmp_7b70:
  w1 = *(u8 *)(r4 + 0x5a)
  r2 = 0x3 ll
  if r1 == 0x1 goto jmp_7e10
  r2 = 0x3
  r0 = 0x1a
  if r1 != 0x0 goto jmp_7e20

jmp_7ba8:
  r1 = r0
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_7e40

jmp_7bc0:
  r1 = data_0000 ll
  if r0 < r1 goto jmp_7c98
  r1 = 0x0
  *(u64 *)(r10 - 0xed0) = r1
  *(u32 *)(r10 - 0xfe1) = 0x0
  *(u64 *)(r10 - 0xfe8) = 0x0
  if r5 == 0x3 goto jmp_7eb8
  w1 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0xec8) = r1
  if r1 > 0xb goto jmp_7f40
  r1 = *(u64 *)(r10 - 0xec8)
  if r1 == 0x0 goto jmp_7eb8
  r0 = r6
  r0 += 0x18
  r5 <<= 0x3
  r6 += r5
  *(u64 *)(r10 - 0xed8) = r6
  r1 = *(u64 *)(r10 - 0xec8)
  r1 <<= 0x5
  *(u64 *)(r10 - 0xec8) = r1
  r1 = 0x0
  *(u64 *)(r10 - 0xed0) = r1
  r1 = r4
  r1 += 0x73
  *(u64 *)(r10 - 0xec0) = r1
  goto jmp_7cb8

jmp_7c98:
  r0 = 0x9
  goto jmp_4ee0

jmp_7ca8:
  r2 = *(u64 *)(r10 - 0xed8)
  if r0 == r2 goto jmp_7eb8

jmp_7cb8:
  r7 = r10
  r7 += -0xfe8
  r8 = *(u64 *)(r0 + 0x0)
  r0 += 0x8
  r9 = *(u64 *)(r8 + 0x8)
  r6 = *(u64 *)(r10 - 0xec0)
  r2 = *(u64 *)(r10 - 0xec8)
  goto jmp_7d18

jmp_7cf8:
  r6 += 0x20
  r7 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_7ca8

jmp_7d18:
  r5 = *(u64 *)(r6 - 0x18)
  if r5 != r9 goto jmp_7cf8
  r5 = *(u64 *)(r8 + 0x10)
  r1 = *(u64 *)(r6 - 0x10)
  if r1 != r5 goto jmp_7cf8
  r1 = *(u64 *)(r8 + 0x18)
  r5 = *(u64 *)(r6 - 0x8)
  if r5 != r1 goto jmp_7cf8
  r1 = *(u64 *)(r8 + 0x20)
  r5 = *(u64 *)(r6 + 0x0)
  if r5 != r1 goto jmp_7cf8
  w1 = *(u8 *)(r7 + 0x0)
  if r1 != 0x0 goto jmp_7cf8
  w1 = *(u8 *)(r8 + 0x1)
  if r1 == 0x0 goto jmp_6a98
  *(u8 *)(r7 + 0x0) = 0x1
  r1 = *(u64 *)(r10 - 0xed0)
  r1 += 0x1
  *(u64 *)(r10 - 0xed0) = r1
  goto jmp_7cf8

jmp_7db8:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_7970

jmp_7dc8:
  r0 = r2
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_7988

jmp_7de8:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 == 0x1a goto jmp_5020
  goto jmp_56f8

jmp_7e10:
  r0 = 0x1a
  if r1 == 0x0 goto jmp_7ba8

jmp_7e20:
  r0 = r2
  r1 = r0
  r1 &= 0x1b
  if r1 == 0x1a goto jmp_7bc0

jmp_7e40:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 == 0x1a goto jmp_50a8
  goto jmp_56f8

jmp_7e68:
  w1 = *(u8 *)(r7 + 0x58)
  r2 = *(u64 *)(r10 - 0xec0)
  r2 &= 0xff
  if r2 >= r1 goto jmp_4f58
  goto jmp_6a98

jmp_7e90:
  w2 = *(u8 *)(r4 + 0x58)
  r1 = *(u64 *)(r10 - 0xed0)
  r1 &= 0xff
  if r1 >= r2 goto jmp_5020
  goto jmp_6a98

jmp_7eb8:
  w2 = *(u8 *)(r4 + 0x58)
  r1 = *(u64 *)(r10 - 0xed0)
  r1 &= 0xff
  if r1 >= r2 goto jmp_50a8
  goto jmp_6a98

jmp_7ee0:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0xec0)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_7f10:
  r1 = r6
  r2 = r8
  r4 = r8
  r5 = data_15a0 ll
  call fn_18058

jmp_7f40:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0xec8)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_7f70:
  r0 = 0x6
  goto jmp_4ee0

jmp_7f80:
  r0 = 0x9
  goto jmp_4ee0

jmp_7f90:
  r1 = 0x0

jmp_7f98:
  r2 = *(u64 *)(r10 - 0xeb8)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_7fc0:
  r1 = 0xb
  r2 = 0xb
  r3 = data_15b8 ll
  call fn_18b10

fn_7fe8:
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 s> 0xc goto jmp_8040
  if r1 s<= 0x5 goto jmp_8080
  if r1 s<= 0x8 goto jmp_80f0
  if r1 s> 0xa goto jmp_81b0
  if r1 != 0x9 goto jmp_8310
  r1 = data_0148 ll
  r2 = 0x1b
  goto jmp_84a0

jmp_8040:
  if r1 s<= 0x12 goto jmp_80b8
  if r1 s<= 0x15 goto jmp_8120
  if r1 s> 0x17 goto jmp_81d8
  if r1 != 0x16 goto jmp_8330
  r1 = data_02e8 ll
  r2 = 0x1a
  goto jmp_84a0

jmp_8080:
  if r1 s> 0x2 goto jmp_8150
  if r1 == 0x0 goto jmp_8240
  if r1 != 0x1 goto jmp_8390
  r1 = data_0018 ll
  r2 = 0x16
  goto jmp_84a0

jmp_80b8:
  if r1 s> 0xf goto jmp_8180
  if r1 == 0xd goto jmp_8270
  if r1 != 0xe goto jmp_83b0
  r1 = data_01e0 ll
  r2 = 0x13
  goto jmp_84a0

jmp_80f0:
  if r1 == 0x6 goto jmp_8200
  if r1 != 0x7 goto jmp_82d0
  r1 = data_00c8 ll
  r2 = 0x1f
  goto jmp_84a0

jmp_8120:
  if r1 == 0x13 goto jmp_8220
  if r1 != 0x14 goto jmp_82f0
  r1 = str_0290 ll
  r2 = 0x28
  goto jmp_84a0

jmp_8150:
  if r1 == 0x3 goto jmp_8290
  if r1 != 0x4 goto jmp_83d0
  r1 = data_0070 ll
  r2 = 0x1a
  goto jmp_84a0

jmp_8180:
  if r1 == 0x10 goto jmp_82b0
  if r1 != 0x11 goto jmp_83f0
  r1 = data_0230 ll
  r2 = 0x13
  goto jmp_84a0

jmp_81b0:
  if r1 != 0xb goto jmp_8350
  r1 = data_0188 ll
  r2 = 0x1a
  goto jmp_84a0

jmp_81d8:
  if r1 != 0x18 goto jmp_8370
  r1 = str_0338 ll
  r2 = 0x10
  goto jmp_84a0

jmp_8200:
  r1 = data_00a8 ll
  r2 = 0x19
  goto jmp_84a0

jmp_8220:
  r1 = data_0278 ll
  r2 = 0x15
  goto jmp_84a0

jmp_8240:
  r2 <<= 0x20
  r1 = r2
  r1 >>= 0x20
  if r1 < 0x14 goto jmp_8410
  r2 = 0x1
  goto jmp_8418

jmp_8270:
  r1 = data_01c8 ll
  r2 = 0x13
  goto jmp_84a0

jmp_8290:
  r1 = data_0050 ll
  r2 = 0x19
  goto jmp_84a0

jmp_82b0:
  r1 = str_0218 ll
  r2 = 0x18
  goto jmp_84a0

jmp_82d0:
  r1 = str_0108 ll
  r2 = 0x20
  goto jmp_84a0

jmp_82f0:
  r1 = data_02b8 ll
  r2 = 0x2d
  goto jmp_84a0

jmp_8310:
  r1 = data_0168 ll
  r2 = 0x1b
  goto jmp_84a0

jmp_8330:
  r1 = data_0308 ll
  r2 = 0x19
  goto jmp_84a0

jmp_8350:
  r1 = data_01a8 ll
  r2 = 0x1c
  goto jmp_84a0

jmp_8370:
  r1 = data_0358 ll
  r2 = 0x19
  goto jmp_84a0

jmp_8390:
  r1 = data_0030 ll
  r2 = 0x1d
  goto jmp_84a0

jmp_83b0:
  r1 = data_01f8 ll
  r2 = 0x1b
  goto jmp_84a0

jmp_83d0:
  r1 = str_0090 ll
  r2 = 0x18
  goto jmp_84a0

jmp_83f0:
  r1 = data_0248 ll
  r2 = 0x29
  goto jmp_84a0

jmp_8410:
  r2 |= 0x1a

jmp_8418:
  r1 = r2
  r1 &= 0x1b
  if r1 != 0x1a goto jmp_8488
  r2 >>= 0x1d
  r2 &= 0x7f8
  r3 = data_0988 ll
  r3 += r2
  r1 = data_15d0 ll
  r1 += r2
  r1 = *(u64 *)(r1 + 0x0)
  r2 = *(u64 *)(r3 + 0x0)
  goto jmp_84a0

jmp_8488:
  r1 = data_0008 ll
  r2 = 0xe

jmp_84a0:
  call sol_log_
  exit

fn_84b0:
  r0 = r2
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 s> 0xc goto jmp_8508
  if r1 s<= 0x5 goto jmp_8540
  if r1 s<= 0x8 goto jmp_85b0
  if r1 s> 0xa goto jmp_8650
  if r1 != 0x9 goto jmp_8768
  r0 = 0xa00000000 ll
  goto jmp_8808

jmp_8508:
  if r1 s<= 0x12 goto jmp_8580
  if r1 s<= 0x15 goto jmp_85d8
  if r1 s> 0x17 goto jmp_8670
  if r1 != 0x16 goto jmp_8780
  r0 = 0x1700000000 ll
  goto jmp_8808

jmp_8540:
  if r1 s> 0x2 goto jmp_8600
  if r1 == 0x0 goto jmp_86c0
  r0 = 0x200000000 ll
  if r1 == 0x1 goto jmp_8808
  r0 = 0x300000000 ll
  goto jmp_8808

jmp_8580:
  if r1 s> 0xf goto jmp_8628
  if r1 == 0xd goto jmp_86f0
  if r1 != 0xe goto jmp_87c8
  r0 = 0xf00000000 ll
  goto jmp_8808

jmp_85b0:
  if r1 == 0x6 goto jmp_8690
  if r1 != 0x7 goto jmp_8738
  r0 = 0x800000000 ll
  goto jmp_8808

jmp_85d8:
  if r1 == 0x13 goto jmp_86a8
  if r1 != 0x14 goto jmp_8750
  r0 = 0x1500000000 ll
  goto jmp_8808

jmp_8600:
  if r1 == 0x3 goto jmp_8708
  if r1 != 0x4 goto jmp_87e0
  r0 = 0x500000000 ll
  goto jmp_8808

jmp_8628:
  if r1 == 0x10 goto jmp_8720
  if r1 != 0x11 goto jmp_87f8
  r0 = 0x1200000000 ll
  goto jmp_8808

jmp_8650:
  if r1 != 0xb goto jmp_8798
  r0 = 0xc00000000 ll
  goto jmp_8808

jmp_8670:
  if r1 != 0x18 goto jmp_87b0
  r0 = 0x1900000000 ll
  goto jmp_8808

jmp_8690:
  r0 = 0x700000000 ll
  goto jmp_8808

jmp_86a8:
  r0 = 0x1400000000 ll
  goto jmp_8808

jmp_86c0:
  r0 <<= 0x20
  r0 >>= 0x20
  if r0 != 0x0 goto jmp_8808
  r0 = data_0000 ll
  goto jmp_8808

jmp_86f0:
  r0 = 0xe00000000 ll
  goto jmp_8808

jmp_8708:
  r0 = 0x400000000 ll
  goto jmp_8808

jmp_8720:
  r0 = 0x1100000000 ll
  goto jmp_8808

jmp_8738:
  r0 = 0x900000000 ll
  goto jmp_8808

jmp_8750:
  r0 = 0x1600000000 ll
  goto jmp_8808

jmp_8768:
  r0 = 0xb00000000 ll
  goto jmp_8808

jmp_8780:
  r0 = 0x1800000000 ll
  goto jmp_8808

jmp_8798:
  r0 = 0xd00000000 ll
  goto jmp_8808

jmp_87b0:
  r0 = 0x1a00000000 ll
  goto jmp_8808

jmp_87c8:
  r0 = 0x1000000000 ll
  goto jmp_8808

jmp_87e0:
  r0 = 0x600000000 ll
  goto jmp_8808

jmp_87f8:
  r0 = 0x1300000000 ll

jmp_8808:
  exit

entrypoint:
  w2 = *(u8 *)(r1 + 0x0)
  if r2 == 0x3 goto jmp_8bd8
  if r2 != 0x4 goto jmp_8c18
  r2 = *(u64 *)(r1 + 0x58)
  if r2 != 0xa5 goto jmp_8c18
  w2 = *(u8 *)(r1 + 0x2910)
  if r2 != 0xff goto jmp_8c18
  r2 = *(u64 *)(r1 + 0x2960)
  if r2 != 0x52 goto jmp_8c18
  w2 = *(u8 *)(r1 + 0x51c8)
  if r2 != 0xff goto jmp_8c18
  r2 = *(u64 *)(r1 + 0x5218)
  if r2 != 0xa5 goto jmp_8c18
  w2 = *(u8 *)(r1 + 0x7ad0)
  if r2 != 0xff goto jmp_8c18
  r4 = *(u64 *)(r1 + 0x7b20)
  r2 = r4
  r2 += 0x7
  r2 &= -0x8
  r5 = r1
  r5 += r2
  r2 = r5
  r2 += 0xa330
  r2 = *(u64 *)(r2 + 0x0)
  if r2 < 0xa goto jmp_8c18
  r2 = r5
  r2 += 0xa338
  w2 = *(u8 *)(r2 + 0x0)
  if r2 != 0xc goto jmp_8c18
  r7 = 0x0
  r6 = 0x3
  w2 = *(u8 *)(r1 + 0xcc)
  if r2 > 0x2 goto jmp_11090
  if r2 == 0x0 goto jmp_16350
  w3 = *(u8 *)(r1 + 0x528c)
  if r3 > 0x2 goto jmp_11090
  if r3 == 0x0 goto jmp_16350
  r7 = 0x11
  r6 = 0x0
  if r2 == 0x2 goto jmp_11090
  if r3 == 0x2 goto jmp_11090
  r2 = r5
  r2 += 0xa339
  r3 = *(u64 *)(r2 + 0x0)
  r7 = 0x1
  r2 = *(u64 *)(r1 + 0xa0)
  *(u64 *)(r10 - 0x7e8) = r2
  if r2 < r3 goto jmp_11090
  r0 = *(u64 *)(r1 + 0x60)
  r2 = *(u64 *)(r1 + 0x5220)
  if r0 != r2 goto jmp_11088
  r8 = *(u64 *)(r1 + 0x68)
  r2 = *(u64 *)(r1 + 0x5228)
  if r8 != r2 goto jmp_11088
  r9 = *(u64 *)(r1 + 0x70)
  r2 = *(u64 *)(r1 + 0x5230)
  if r9 != r2 goto jmp_11088
  r2 = *(u64 *)(r1 + 0x78)
  r6 = *(u64 *)(r1 + 0x5238)
  if r2 != r6 goto jmp_12698
  r6 = *(u64 *)(r1 + 0x2918)
  if r6 != r0 goto jmp_12698
  r0 = *(u64 *)(r1 + 0x2920)
  if r0 != r8 goto jmp_12698
  r0 = *(u64 *)(r1 + 0x2928)
  if r0 != r9 goto jmp_12698
  r0 = *(u64 *)(r1 + 0x2930)
  if r0 != r2 goto jmp_12698
  w2 = *(u8 *)(r1 + 0x2995)
  r8 = 0x3 ll
  if r2 == 0x1 goto jmp_12240
  r8 = 0x3
  r6 = 0x1a
  if r2 != 0x0 goto jmp_12250

jmp_8a68:
  r2 = r6
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_12270

jmp_8a80:
  r2 = data_0000 ll
  if r6 < r2 goto jmp_15f38
  r5 += 0xa341
  w2 = *(u8 *)(r5 + 0x0)
  w5 = *(u8 *)(r1 + 0x2994)
  if r2 != r5 goto jmp_12e90
  w2 = *(u8 *)(r1 + 0xa8)
  if r2 != 0x1 goto jmp_126b0
  r5 = *(u64 *)(r1 + 0x7ad8)
  r0 = *(u64 *)(r1 + 0xac)
  if r0 != r5 goto jmp_12718
  r2 = *(u64 *)(r1 + 0x7ae0)
  r5 = *(u64 *)(r1 + 0xb4)
  if r5 != r2 goto jmp_12710
  r2 = *(u64 *)(r1 + 0x7ae8)
  r5 = *(u64 *)(r1 + 0xbc)
  if r5 != r2 goto jmp_12710
  r2 = *(u64 *)(r1 + 0x7af0)
  r6 = *(u64 *)(r1 + 0xc4)
  r5 = r0
  if r6 != r2 goto jmp_12718
  if r4 != 0x163 goto jmp_137d8
  r2 = *(u64 *)(r1 + 0x7af8)
  r4 = -0x21708a111e0922fa ll
  if r2 == r4 goto jmp_13778
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_137d8
  r2 = *(u64 *)(r1 + 0x7b00)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_137d8
  r2 = *(u64 *)(r1 + 0x7b08)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_137d8
  r2 = *(u64 *)(r1 + 0x7b10)
  r4 = -0x56ff00817a0a73c6 ll
  if r2 != r4 goto jmp_137d8
  goto jmp_15eb8

jmp_8bd8:
  r2 = *(u64 *)(r1 + 0x58)
  if r2 != 0xa5 goto jmp_8c18
  w2 = *(u8 *)(r1 + 0x2910)
  if r2 != 0xff goto jmp_8c18
  r2 = *(u64 *)(r1 + 0x2960)
  if r2 != 0xa5 goto jmp_8c18
  w2 = *(u8 *)(r1 + 0x5218)
  if r2 == 0xff goto jmp_10320

jmp_8c18:
  r6 = r1
  r6 += 0x8
  r7 = *(u64 *)(r1 + 0x0)
  if r7 == 0x0 goto jmp_8f80
  *(u64 *)(r10 - 0xfe0) = r6
  r2 = *(u64 *)(r1 + 0x58)
  r1 += r2
  r1 += 0x286f
  r1 &= -0x8
  if r7 == 0x1 goto jmp_8ca8
  if r7 != 0x2 goto jmp_8fe0
  w2 = *(u8 *)(r1 + 0x0)
  if r2 != 0xff goto jmp_126c0
  *(u64 *)(r10 - 0xfd8) = r1

jmp_8c88:
  r2 = *(u64 *)(r1 + 0x50)
  r1 += r2
  r1 += 0x2867
  r1 &= -0x8

jmp_8ca8:
  r8 = r6
  r6 = r1
  r9 = *(u64 *)(r6 + 0x0)
  if r9 == 0x0 goto jmp_8f90

jmp_8cc8:
  w5 = *(u8 *)(r6 + 0x8)
  if r5 == 0xff goto jmp_8fc0
  r3 = r6
  r3 += 0x9
  if r5 s> 0xb goto jmp_9368
  if r5 s> 0x6 goto jmp_f980
  if r5 == 0x0 goto jmp_fbf8
  if r5 == 0x1 goto jmp_ffd0
  if r5 != 0x3 goto jmp_10248
  if r9 s< 0x9 goto jmp_8fc8
  if r7 <= 0x2 goto jmp_10300
  r9 = 0x0
  r1 = *(u64 *)(r8 + 0x50)
  if r1 != 0xa5 goto jmp_10288
  w2 = *(u8 *)(r8 + 0xc4)
  if r2 > 0x2 goto jmp_10288
  if r2 == 0x0 goto jmp_12700
  r3 = *(u64 *)(r3 + 0x0)
  r1 = *(u64 *)(r10 - 0xfd8)
  if r8 == r1 goto jmp_133b0
  r4 = *(u64 *)(r1 + 0x50)
  if r4 != 0xa5 goto jmp_10288
  w4 = *(u8 *)(r1 + 0xc4)
  if r4 > 0x2 goto jmp_10288
  if r4 == 0x0 goto jmp_12700
  r0 = 0x0
  r9 = 0x11
  if r2 == 0x2 goto jmp_14c00
  if r4 == 0x2 goto jmp_14c00
  r9 = 0x1
  r4 = *(u64 *)(r8 + 0x98)
  if r4 < r3 goto jmp_14c00
  r9 = 0x3
  r2 = *(u64 *)(r1 + 0x58)
  r5 = *(u64 *)(r8 + 0x58)
  if r5 != r2 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x60)
  r5 = *(u64 *)(r8 + 0x60)
  if r5 != r2 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x68)
  r5 = *(u64 *)(r8 + 0x68)
  if r5 != r2 goto jmp_14c00
  r6 = r7
  r2 = *(u64 *)(r1 + 0x70)
  r5 = *(u64 *)(r8 + 0x70)
  if r5 != r2 goto jmp_14c00

jmp_8e38:
  r2 = r10
  r2 += -0xfc8
  *(u64 *)(r10 - 0x7e8) = r2
  r5 = *(u64 *)(r10 - 0xfd0)
  w2 = *(u8 *)(r8 + 0xa0)
  if r2 != 0x1 goto jmp_12b18
  r2 = *(u64 *)(r5 + 0x8)
  r0 = *(u64 *)(r8 + 0xa4)
  if r0 != r2 goto jmp_12ef0
  r2 = *(u64 *)(r5 + 0x10)
  r7 = *(u64 *)(r8 + 0xac)
  if r7 != r2 goto jmp_12ee8
  r2 = *(u64 *)(r5 + 0x18)
  r7 = *(u64 *)(r8 + 0xb4)
  if r7 != r2 goto jmp_12ee8
  r7 = *(u64 *)(r5 + 0x20)
  r9 = *(u64 *)(r8 + 0xbc)
  r2 = r0
  if r9 != r7 goto jmp_12ef0
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_14a80
  r2 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_14a20
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_14a80
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_14a80
  r2 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_14a80
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_14a80
  goto jmp_16058

jmp_8f80:
  r9 = *(u64 *)(r6 + 0x0)
  if r9 != 0x0 goto jmp_8cc8

jmp_8f90:
  r1 = 0x0
  r9 = 0xc

jmp_8fa0:
  r2 = r9

jmp_8fa8:
  call fn_84b0
  r2 = r0
  goto jmp_14c28

jmp_8fc0:
  if r9 s>= 0x3 goto jmp_9578

jmp_8fc8:
  r0 = 0x0
  r9 = 0xc
  goto jmp_14c00

jmp_8fe0:
  r2 = r10
  r2 += -0xfe0
  r3 = r7
  if r7 < 0x6 goto jmp_92c0
  r2 = r10
  r2 += -0xfe0
  r3 = r7

jmp_9018:
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_9150
  *(u64 *)(r2 + 0x8) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_9198

jmp_9060:
  *(u64 *)(r2 + 0x10) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_91e0

jmp_9098:
  *(u64 *)(r2 + 0x18) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_9228

jmp_90d0:
  *(u64 *)(r2 + 0x20) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8
  r2 += 0x28
  w4 = *(u8 *)(r1 + 0x0)
  if r4 != 0xff goto jmp_9278

jmp_9110:
  *(u64 *)(r2 + 0x0) = r1
  r4 = *(u64 *)(r1 + 0x50)
  r1 += r4
  r1 += 0x2867
  r1 &= -0x8
  r3 += -0x5
  if r3 > 0x5 goto jmp_9018
  goto jmp_92c0

jmp_9150:
  r4 <<= 0x3
  r5 = r10
  r5 += -0xfe0
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x8) = r4
  r1 += 0x8
  w4 = *(u8 *)(r1 + 0x0)
  if r4 == 0xff goto jmp_9060

jmp_9198:
  r4 <<= 0x3
  r5 = r10
  r5 += -0xfe0
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x10) = r4
  r1 += 0x8
  w4 = *(u8 *)(r1 + 0x0)
  if r4 == 0xff goto jmp_9098

jmp_91e0:
  r4 <<= 0x3
  r5 = r10
  r5 += -0xfe0
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x18) = r4
  r1 += 0x8
  w4 = *(u8 *)(r1 + 0x0)
  if r4 == 0xff goto jmp_90d0

jmp_9228:
  r4 <<= 0x3
  r5 = r10
  r5 += -0xfe0
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x20) = r4
  r1 += 0x8
  r2 += 0x28
  w4 = *(u8 *)(r1 + 0x0)
  if r4 == 0xff goto jmp_9110

jmp_9278:
  r4 <<= 0x3
  r5 = r10
  r5 += -0xfe0
  r5 += r4
  r4 = *(u64 *)(r5 + 0x0)
  *(u64 *)(r2 + 0x0) = r4
  r1 += 0x8
  r3 += -0x5
  if r3 > 0x5 goto jmp_9018

jmp_92c0:
  if r3 s<= 0x2 goto jmp_fa90
  if r3 == 0x3 goto jmp_fad8
  if r3 != 0x4 goto jmp_fb30
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12c18
  *(u64 *)(r2 + 0x8) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12c60

jmp_9320:
  *(u64 *)(r2 + 0x10) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12ca8

jmp_9358:
  *(u64 *)(r2 + 0x18) = r1
  goto jmp_8c88

jmp_9368:
  if r5 s> 0x11 goto jmp_fa20
  if r5 == 0xc goto jmp_fc38
  if r5 == 0xf goto jmp_fff8
  if r5 != 0x11 goto jmp_10248
  if r7 == 0x0 goto jmp_100b0
  r1 = *(u64 *)(r8 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_14e88
  r1 = *(u64 *)(r8 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_14e88
  r1 = *(u64 *)(r8 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_14e88
  r1 = *(u64 *)(r8 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_14e88
  if r7 != 0x1 goto jmp_10580
  r1 = r10
  r1 += -0x1000
  call fn_16b58
  w1 = *(u32 *)(r10 - 0x1000)
  if r1 != 0x0 goto jmp_ffb8
  r6 = *(u64 *)(r10 - 0xff0)
  r2 = *(u64 *)(r10 - 0xff8)
  r9 = *(u64 *)(r8 + 0x50)
  r1 = r9
  r1 += 0x80
  r1 *= r2
  r2 = 0x3ff0000000000000 ll
  if r6 == r2 goto jmp_10670
  r2 = 0x4000000000000000 ll
  if r6 == r2 goto jmp_10668

jmp_94a0:
  call fn_1b938
  r1 = r6
  r2 = r0
  call fn_1bbf0
  r6 = r0
  r1 = r6
  call fn_1bb38
  r7 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x7e8) = r1
  r1 = r6
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_9528
  *(u64 *)(r10 - 0x7e8) = r7

jmp_9528:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_10670
  r1 = *(u64 *)(r10 - 0x7e8)
  goto jmp_10670

jmp_9578:
  r3 = r10
  r3 += -0xfe0
  r6 += 0x9
  r9 += -0x1

jmp_9598:
  w4 = *(u8 *)(r6 + 0x1)
  if r4 == 0x0 goto jmp_10298
  r2 = r4
  r2 += 0x2
  if r9 < r2 goto jmp_10298
  w8 = *(u8 *)(r6 + 0x0)
  if r7 < r8 goto jmp_102b8
  *(u64 *)(r10 - 0x7d0) = r9
  w5 = *(u8 *)(r6 + 0x2)
  *(u64 *)(r10 - 0x7e8) = r3
  *(u64 *)(r10 - 0x7e0) = r8
  *(u64 *)(r10 - 0x7d8) = r7
  *(u64 *)(r10 - 0x7c8) = r2
  if r5 > 0xf goto jmp_a090
  r1 = 0x1
  r1 <<= r5
  r1 &= 0xc188
  if r1 == 0x0 goto jmp_9bb0
  if r8 <= 0x1 goto jmp_102b8
  r0 = 0x6
  r1 = *(u64 *)(r3 + 0x0)
  r2 = *(u64 *)(r1 + 0x28)
  r8 = -0x6c5e9a281e0922fa ll
  if r2 != r8 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x30)
  r8 = -0x53861431b91e3427 ll
  if r2 != r8 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x38)
  r8 = -0x6ec8a4a0127a4be4 ll
  if r2 != r8 goto jmp_113b0
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_113b0
  r1 = *(u64 *)(r3 + 0x8)
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_113b0

jmp_9728:
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_110e0

jmp_9748:
  r8 = r6
  r8 += 0x3
  if r5 s> 0xb goto jmp_9a28
  if r5 s> 0x6 goto jmp_9f50
  if r5 == 0x0 goto jmp_a180
  if r5 == 0x1 goto jmp_a3f8
  if r5 != 0x3 goto jmp_a878
  if r4 < 0x9 goto jmp_10298
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 <= 0x2 goto jmp_110e0
  r1 = *(u64 *)(r10 - 0x7e8)
  r3 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  r9 = *(u64 *)(r10 - 0x798)
  if r1 != 0xa5 goto jmp_121a8
  w2 = *(u8 *)(r3 + 0xc4)
  if r2 > 0x2 goto jmp_121a8
  if r2 == 0x0 goto jmp_132f0
  r4 = *(u64 *)(r8 + 0x0)
  r8 = r3
  r8 += 0x58
  r7 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r7 + 0x8)
  if r3 == r1 goto jmp_cc28
  r5 = *(u64 *)(r1 + 0x50)
  if r5 != 0xa5 goto jmp_119b0
  w5 = *(u8 *)(r1 + 0xc4)
  if r5 > 0x2 goto jmp_119b0
  if r5 == 0x0 goto jmp_12700
  if r2 == 0x2 goto jmp_122c0
  if r5 == 0x2 goto jmp_122c0
  r5 = *(u64 *)(r3 + 0x98)
  if r5 < r4 goto jmp_12300
  r2 = r1
  r2 += 0x58
  *(u64 *)(r10 - 0x798) = r2
  r2 = *(u64 *)(r2 + 0x0)
  r0 = *(u64 *)(r8 + 0x0)
  if r0 != r2 goto jmp_11300
  r2 = *(u64 *)(r1 + 0x60)
  r0 = *(u64 *)(r3 + 0x60)
  if r0 != r2 goto jmp_11300
  r2 = *(u64 *)(r1 + 0x68)
  r0 = *(u64 *)(r3 + 0x68)
  if r0 != r2 goto jmp_11300
  r2 = *(u64 *)(r1 + 0x70)
  r0 = *(u64 *)(r3 + 0x70)
  if r0 != r2 goto jmp_11300

jmp_98d0:
  *(u64 *)(r10 - 0x760) = r8
  r9 = r7
  r9 += 0x18
  r8 = *(u64 *)(r7 + 0x10)
  w2 = *(u8 *)(r3 + 0xa0)
  if r2 != 0x1 goto jmp_af10
  r2 = *(u64 *)(r8 + 0x8)
  r0 = *(u64 *)(r3 + 0xa4)
  if r0 != r2 goto jmp_c178
  r2 = *(u64 *)(r8 + 0x10)
  r7 = *(u64 *)(r3 + 0xac)
  if r7 != r2 goto jmp_c170
  r2 = *(u64 *)(r8 + 0x18)
  r7 = *(u64 *)(r3 + 0xb4)
  if r7 != r2 goto jmp_c170
  r2 = *(u64 *)(r8 + 0x20)
  *(u64 *)(r10 - 0x7a8) = r2
  r7 = *(u64 *)(r3 + 0xbc)
  r2 = r0
  r0 = *(u64 *)(r10 - 0x7a8)
  if r7 != r0 goto jmp_c178
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x163 goto jmp_c9d0
  r2 = *(u64 *)(r8 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_c970
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_c9d0
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_c9d0
  r2 = *(u64 *)(r8 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_c9d0
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_c9d0
  goto jmp_e4e0

jmp_9a28:
  if r5 s> 0x11 goto jmp_a020
  if r5 == 0xc goto jmp_9ce8
  if r5 == 0xf goto jmp_a540
  if r5 != 0x11 goto jmp_a878
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 == 0x0 goto jmp_110e0
  r0 = 0x6
  r1 = *(u64 *)(r10 - 0x7e8)
  r9 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r9 + 0x28)
  r2 = -0x6c5e9a281e0922fa ll
  if r1 != r2 goto jmp_113b0
  r1 = *(u64 *)(r9 + 0x30)
  r2 = -0x53861431b91e3427 ll
  if r1 != r2 goto jmp_113b0
  r1 = *(u64 *)(r9 + 0x38)
  r2 = -0x6ec8a4a0127a4be4 ll
  if r1 != r2 goto jmp_113b0
  r1 = *(u64 *)(r9 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_110e0
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 != 0x1 goto jmp_acd0
  r1 = r10
  r1 += -0x1000
  call fn_16b58
  w1 = *(u32 *)(r10 - 0x1000)
  if r1 != 0x0 goto jmp_114d0
  r8 = *(u64 *)(r10 - 0xff0)
  r2 = *(u64 *)(r10 - 0xff8)
  r4 = *(u64 *)(r9 + 0x50)
  r1 = r4
  r1 += 0x80
  r1 *= r2
  r2 = 0x3ff0000000000000 ll
  if r8 == r2 goto jmp_9b98
  r2 = 0x4000000000000000 ll
  if r8 != r2 goto jmp_bd38
  r1 <<= 0x1

jmp_9b98:
  r3 = *(u64 *)(r10 - 0x790)
  r7 = *(u64 *)(r10 - 0x778)
  goto jmp_be20

jmp_9bb0:
  if r5 != 0xc goto jmp_a090
  r0 = 0xa
  if r8 <= 0x2 goto jmp_110e0
  r0 = 0x6
  r3 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r3 + 0x0)
  r2 = *(u64 *)(r1 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_113b0
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_113b0
  r1 = *(u64 *)(r3 + 0x10)
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_113b0
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_110e0

jmp_9ce8:
  if r4 < 0xa goto jmp_cbf0
  r0 = 0xa
  r7 = *(u64 *)(r10 - 0x7e8)
  r8 = *(u64 *)(r10 - 0x7c0)
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 < 0x4 goto jmp_a178
  r3 = *(u64 *)(r7 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  if r1 != 0xa5 goto jmp_cc08
  w5 = *(u8 *)(r3 + 0xc4)
  r2 = *(u64 *)(r10 - 0x7b8)
  if r5 > 0x2 goto jmp_aa60
  if r5 == 0x0 goto jmp_cc50
  w2 = *(u8 *)(r6 + 0xb)
  r4 = *(u64 *)(r6 + 0x3)
  r1 = r3
  r1 += 0x58
  *(u64 *)(r10 - 0x7b8) = r1
  r1 = *(u64 *)(r7 + 0x10)
  if r3 == r1 goto jmp_cc60
  r0 = *(u64 *)(r1 + 0x50)
  if r0 != 0xa5 goto jmp_ae50
  w7 = *(u8 *)(r1 + 0xc4)
  if r7 > 0x2 goto jmp_ae50
  if r7 == 0x0 goto jmp_d548
  r8 = r1
  r8 += 0x58
  r0 = 0x0
  r9 = 0x11
  if r5 == 0x2 goto jmp_ae78
  if r7 == 0x2 goto jmp_ae78
  r9 = 0x1
  r5 = *(u64 *)(r3 + 0x98)
  if r5 < r4 goto jmp_ae78
  r9 = 0x3
  r7 = r8
  r8 = *(u64 *)(r10 - 0x7b8)
  r8 = *(u64 *)(r8 + 0x0)
  *(u64 *)(r10 - 0x7c0) = r7
  r7 = *(u64 *)(r7 + 0x0)
  if r8 != r7 goto jmp_f408
  r7 = *(u64 *)(r1 + 0x60)
  r9 = *(u64 *)(r3 + 0x60)
  if r9 != r7 goto jmp_c5f0
  r7 = *(u64 *)(r1 + 0x68)
  r9 = *(u64 *)(r3 + 0x68)
  if r9 != r7 goto jmp_c5f0
  r7 = *(u64 *)(r1 + 0x70)
  r9 = *(u64 *)(r3 + 0x70)
  if r9 != r7 goto jmp_c5f0

jmp_9e78:
  r0 = 0x0
  r7 = *(u64 *)(r10 - 0x7e8)
  r7 = *(u64 *)(r7 + 0x8)
  r9 = *(u64 *)(r7 + 0x8)
  if r9 != r8 goto jmp_c5f0
  r8 = *(u64 *)(r3 + 0x60)
  r9 = *(u64 *)(r7 + 0x10)
  if r9 != r8 goto jmp_c5f0
  r8 = *(u64 *)(r3 + 0x68)
  r9 = *(u64 *)(r7 + 0x18)
  if r9 != r8 goto jmp_c5f0
  r8 = *(u64 *)(r3 + 0x70)
  r9 = *(u64 *)(r7 + 0x20)
  if r9 != r8 goto jmp_c5f0
  r0 = *(u64 *)(r7 + 0x50)
  if r0 != 0x52 goto jmp_f088
  w8 = *(u8 *)(r7 + 0x85)
  r9 = 0x3 ll
  if r8 == 0x1 goto jmp_cc88
  r9 = 0x3
  r0 = 0x1a
  if r8 != 0x0 goto jmp_cc98

jmp_9f30:
  r8 = r0
  r8 &= 0x1b
  if r8 == 0x1a goto jmp_ccb8
  goto jmp_f3f8

jmp_9f50:
  if r5 == 0x7 goto jmp_a1c8
  if r5 == 0x8 goto jmp_a620
  if r5 != 0x9 goto jmp_a878
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 < 0x3 goto jmp_110e0
  r0 = 0x3
  r7 = *(u64 *)(r10 - 0x7e8)
  r3 = *(u64 *)(r7 + 0x8)
  r1 = *(u64 *)(r7 + 0x0)
  if r1 == r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_132b0
  w2 = *(u8 *)(r1 + 0xc4)
  r9 = *(u64 *)(r10 - 0x7a0)
  if r2 > 0x2 goto jmp_122a0
  if r2 == 0x0 goto jmp_12700
  w2 = *(u8 *)(r1 + 0xc5)
  if r2 == 0x1 goto jmp_9ff8
  r2 = *(u64 *)(r1 + 0x98)
  if r2 != 0x0 goto jmp_12678

jmp_9ff8:
  w2 = *(u8 *)(r1 + 0xd9)
  if r2 == 0x1 goto jmp_ade0
  r2 = r1
  r2 += 0x78
  goto jmp_adf0

jmp_a020:
  if r5 == 0x12 goto jmp_a330
  if r5 == 0x14 goto jmp_a830
  if r5 != 0x16 goto jmp_a878
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 == 0x0 goto jmp_12168
  r0 = 0x3
  r1 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r1 + 0x0)
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_12b00
  w1 = *(u8 *)(r1 + 0xc4)
  if r1 > 0x2 goto jmp_110e0
  if r1 != 0x0 goto jmp_fab8
  goto jmp_aea8

jmp_a090:
  r1 = r5
  r1 += -0x4
  r1 &= 0xff
  if r1 < 0xa goto jmp_a0e8
  if r5 > 0x2d goto jmp_9748
  r1 = 0x1
  r1 <<= r5
  r2 = 0x204000400000 ll
  r1 &= r2
  if r1 == 0x0 goto jmp_9748

jmp_a0e8:
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 == 0x0 goto jmp_102b8
  r0 = 0x6
  r1 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r1 + 0x0)
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 == r3 goto jmp_9728
  goto jmp_113b0

jmp_a178:
  goto jmp_ae78

jmp_a180:
  if r4 < 0x23 goto jmp_10298
  w3 = *(u8 *)(r6 + 0x3)
  w1 = *(u8 *)(r6 + 0x24)
  *(u64 *)(r10 - 0x7a8) = r3
  if r1 != 0x0 goto jmp_aa98
  r1 = 0x0
  *(u64 *)(r10 - 0x788) = r1
  r2 = *(u64 *)(r10 - 0x7e0)
  goto jmp_aac8

jmp_a1c8:
  if r4 < 0x9 goto jmp_10298
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 < 0x3 goto jmp_110e0
  r1 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r1 + 0x8)
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_13290
  w2 = *(u8 *)(r1 + 0xc4)
  r9 = *(u64 *)(r10 - 0x7b0)
  if r2 > 0x2 goto jmp_119b0
  if r2 == 0x0 goto jmp_12700
  if r2 == 0x2 goto jmp_122c0
  w2 = *(u8 *)(r1 + 0xc5)
  if r2 == 0x1 goto jmp_13308
  r5 = r1
  r5 += 0x58
  r2 = *(u64 *)(r5 + 0x0)
  r3 = *(u64 *)(r10 - 0x7e8)
  r3 = *(u64 *)(r3 + 0x0)
  r4 = *(u64 *)(r3 + 0x8)
  if r4 != r2 goto jmp_11300
  r2 = *(u64 *)(r1 + 0x60)
  r4 = *(u64 *)(r3 + 0x10)
  if r4 != r2 goto jmp_11300
  r2 = *(u64 *)(r1 + 0x68)
  r4 = *(u64 *)(r3 + 0x18)
  if r4 != r2 goto jmp_11300
  r2 = *(u64 *)(r1 + 0x70)
  r4 = *(u64 *)(r3 + 0x20)
  if r4 != r2 goto jmp_11300
  r2 = *(u64 *)(r3 + 0x50)
  if r2 != 0x52 goto jmp_12e40
  w2 = *(u8 *)(r3 + 0x85)
  r4 = 0x3 ll
  if r2 == 0x1 goto jmp_a8b0
  r4 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_a8c0

jmp_a308:
  r2 = r0
  r2 &= 0x1b
  *(u64 *)(r10 - 0x7b0) = r5
  if r2 == 0x1a goto jmp_a8e8
  goto jmp_aa48

jmp_a330:
  if r4 < 0x21 goto jmp_10298
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 < 0x2 goto jmp_110e0
  r1 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r10 - 0x7a8) = r1
  r7 = *(u64 *)(r1 + 0x50)
  r1 = r10
  r1 += -0x1000
  call fn_16b58
  w1 = *(u32 *)(r10 - 0x1000)
  if r1 == 0x1 goto jmp_114d0
  r7 += 0x80
  r1 = *(u64 *)(r10 - 0xff8)
  r1 *= r7
  r9 = *(u64 *)(r10 - 0xff0)
  r2 = 0x3ff0000000000000 ll
  if r9 == r2 goto jmp_b4d8
  r2 = 0x4000000000000000 ll
  if r9 != r2 goto jmp_b410
  r1 <<= 0x1
  goto jmp_b4d8

jmp_a3f8:
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 < 0x3 goto jmp_102b8
  r7 = 0x0
  if r1 == 0x3 goto jmp_121d8
  r2 = *(u64 *)(r10 - 0x7e8)
  r9 = *(u64 *)(r2 + 0x18)
  r1 = *(u64 *)(r9 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_12b28
  r1 = *(u64 *)(r9 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_12b28
  r1 = *(u64 *)(r9 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_12b28
  r1 = *(u64 *)(r9 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 != r3 goto jmp_12b28
  r5 = *(u64 *)(r2 + 0x0)
  r4 = *(u64 *)(r5 + 0x50)
  r3 = *(u64 *)(r2 + 0x10)
  r2 = r4
  r2 += 0x80
  r1 = *(u64 *)(r9 + 0x58)
  r1 *= r2
  r8 = *(u64 *)(r9 + 0x60)
  r2 = 0x3ff0000000000000 ll
  *(u64 *)(r10 - 0x788) = r3
  *(u64 *)(r10 - 0x7a8) = r4
  if r8 == r2 goto jmp_a530
  r2 = 0x4000000000000000 ll
  if r8 != r2 goto jmp_af20
  r1 <<= 0x1

jmp_a530:
  r2 = *(u64 *)(r10 - 0x7e8)
  goto jmp_b010

jmp_a540:
  if r4 < 0xa goto jmp_cbf0
  r0 = 0xa
  r8 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 < 0x3 goto jmp_c968
  r3 = *(u64 *)(r8 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  if r1 != 0xa5 goto jmp_ba80
  w2 = *(u8 *)(r3 + 0xc4)
  if r2 > 0x2 goto jmp_ba80
  if r2 == 0x0 goto jmp_d7a0
  r1 = r3
  r1 += 0x58
  *(u64 *)(r10 - 0x768) = r1
  r1 = *(u64 *)(r8 + 0x8)
  r4 = *(u64 *)(r1 + 0x50)
  if r4 != 0x52 goto jmp_d7b8
  w4 = *(u8 *)(r1 + 0x85)
  r5 = 0x3 ll
  if r4 == 0x1 goto jmp_bac8
  r5 = 0x3
  r0 = 0x1a
  if r4 != 0x0 goto jmp_bad8

jmp_a600:
  r4 = r0
  r4 &= 0x1b
  if r4 == 0x1a goto jmp_baf8
  goto jmp_e2b0

jmp_a620:
  if r4 < 0x9 goto jmp_10298
  r0 = 0xa
  r1 = *(u64 *)(r10 - 0x7e0)
  if r1 < 0x3 goto jmp_110e0
  r1 = *(u64 *)(r10 - 0x7e8)
  r3 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r3 + 0x50)
  if r1 != 0xa5 goto jmp_12188
  w2 = *(u8 *)(r3 + 0xc4)
  if r2 > 0x2 goto jmp_12188
  if r2 == 0x0 goto jmp_132d8
  r1 = *(u64 *)(r10 - 0x7e8)
  r1 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x50)
  if r4 != 0x52 goto jmp_12e40
  w4 = *(u8 *)(r1 + 0x85)
  r5 = 0x3 ll
  if r4 == 0x1 goto jmp_a6c0
  r5 = 0x3

jmp_a6c0:
  r0 = 0x1a
  if r4 == 0x0 goto jmp_a6d8
  r0 = r5

jmp_a6d8:
  r4 = r3
  r4 += 0x58
  *(u64 *)(r10 - 0x780) = r4
  r4 = r0
  r4 &= 0x1b
  if r4 != 0x1a goto jmp_aa48
  r4 = data_0000 ll
  if r0 < r4 goto jmp_13328
  r0 = 0x0
  if r2 == 0x2 goto jmp_13380
  w2 = *(u8 *)(r3 + 0xc5)
  if r2 == 0x1 goto jmp_13398
  r4 = *(u64 *)(r8 + 0x0)
  r8 = *(u64 *)(r3 + 0x98)
  if r8 < r4 goto jmp_12648
  r2 = *(u64 *)(r10 - 0x780)
  r2 = *(u64 *)(r2 + 0x0)
  r7 = *(u64 *)(r1 + 0x8)
  if r7 != r2 goto jmp_12ed0
  r2 = *(u64 *)(r3 + 0x60)
  r7 = *(u64 *)(r1 + 0x10)
  r5 = *(u64 *)(r10 - 0x7e8)
  if r7 != r2 goto jmp_12ed0
  r2 = *(u64 *)(r3 + 0x68)
  r7 = *(u64 *)(r1 + 0x18)
  if r7 != r2 goto jmp_12ed0
  r2 = *(u64 *)(r3 + 0x70)
  r7 = *(u64 *)(r1 + 0x20)
  if r7 != r2 goto jmp_12ed0
  *(u64 *)(r10 - 0x788) = r8
  r2 = *(u64 *)(r3 + 0x78)
  r7 = 0x6011348d72903300 ll
  if r2 == r7 goto jmp_bea0
  if r2 != 0x0 goto jmp_bf00
  r7 = *(u64 *)(r3 + 0x80)
  if r7 != 0x0 goto jmp_bf00
  r7 = *(u64 *)(r3 + 0x88)
  if r7 != 0x0 goto jmp_bf00
  r7 = *(u64 *)(r3 + 0x90)
  if r7 != 0x0 goto jmp_bf00
  goto jmp_c5b0

jmp_a830:
  if r4 < 0x23 goto jmp_10298
  w3 = *(u8 *)(r6 + 0x3)
  w1 = *(u8 *)(r6 + 0x24)
  *(u64 *)(r10 - 0x7a8) = r3
  if r1 != 0x0 goto jmp_abe8
  r1 = 0x0
  *(u64 *)(r10 - 0x788) = r1
  r2 = *(u64 *)(r10 - 0x7e0)
  goto jmp_ac18

jmp_a878:
  r4 += -0x1
  r1 = *(u64 *)(r10 - 0x7e8)
  r2 = *(u64 *)(r10 - 0x7e0)
  r3 = r8
  call fn_0030
  r7 = r1
  goto jmp_ae88

jmp_a8b0:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_a308

jmp_a8c0:
  r0 = r4
  r2 = r0
  r2 &= 0x1b
  *(u64 *)(r10 - 0x7b0) = r5
  if r2 != 0x1a goto jmp_aa48

jmp_a8e8:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_13328
  r0 = 0x0
  w2 = *(u8 *)(r3 + 0x58)
  if r2 != 0x1 goto jmp_12660
  r2 = *(u64 *)(r3 + 0x5c)
  r4 = *(u64 *)(r10 - 0x7e8)
  r5 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r5 + 0x8)
  if r2 != r4 goto jmp_12e78
  r2 = *(u64 *)(r5 + 0x10)
  r4 = *(u64 *)(r3 + 0x64)
  if r4 != r2 goto jmp_12e78
  r7 = 0x4
  r2 = *(u64 *)(r5 + 0x18)
  r4 = *(u64 *)(r3 + 0x6c)
  if r4 != r2 goto jmp_110e0
  r2 = *(u64 *)(r5 + 0x20)
  r4 = *(u64 *)(r3 + 0x74)
  if r4 != r2 goto jmp_110e0
  r4 = *(u64 *)(r8 + 0x0)
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_c4b8
  r2 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_c458
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_c4b8
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_c4b8
  r2 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_c4b8
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_c4b8
  goto jmp_d560

jmp_aa48:
  r7 = r0
  r7 >>= 0x20
  goto jmp_ae88

jmp_aa60:
  r1 = -0x100000000 ll

jmp_aa70:
  r2 &= r1
  r0 = 0x3

jmp_aa80:
  *(u64 *)(r10 - 0x7b8) = r2
  r9 = r2
  goto jmp_ae78

jmp_aa98:
  r2 = *(u64 *)(r10 - 0x7e0)
  if r1 != 0x1 goto jmp_10298
  if r4 < 0x43 goto jmp_121f0
  r1 = r6
  r1 += 0x25
  *(u64 *)(r10 - 0x788) = r1

jmp_aac8:
  r0 = 0xa
  if r2 <= 0x1 goto jmp_110e0
  r2 = *(u64 *)(r10 - 0x7e8)
  r9 = *(u64 *)(r2 + 0x8)
  r1 = *(u64 *)(r9 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_12b40
  r1 = *(u64 *)(r9 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_12b40
  r1 = *(u64 *)(r9 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_12b40
  r1 = *(u64 *)(r9 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 != r3 goto jmp_12b40
  r7 = *(u64 *)(r2 + 0x0)
  r3 = *(u64 *)(r7 + 0x50)
  r2 = r3
  r2 += 0x80
  r1 = *(u64 *)(r9 + 0x58)
  r1 *= r2
  r4 = *(u64 *)(r7 + 0x48)
  r8 = *(u64 *)(r9 + 0x60)
  r2 = 0x3ff0000000000000 ll
  if r8 == r2 goto jmp_b308
  r2 = 0x4000000000000000 ll
  if r8 != r2 goto jmp_b210
  r1 <<= 0x1
  goto jmp_b308

jmp_abe8:
  r2 = *(u64 *)(r10 - 0x7e0)
  if r1 != 0x1 goto jmp_10298
  if r4 < 0x43 goto jmp_121f0
  r1 = r6
  r1 += 0x25
  *(u64 *)(r10 - 0x788) = r1

jmp_ac18:
  r0 = 0xa
  if r2 == 0x0 goto jmp_110e0
  r1 = *(u64 *)(r10 - 0x7e8)
  r9 = *(u64 *)(r1 + 0x0)
  r7 = *(u64 *)(r9 + 0x50)
  r1 = r10
  r1 += -0x1000
  call fn_16b58
  w1 = *(u32 *)(r10 - 0x1000)
  if r1 == 0x1 goto jmp_114d0
  r7 += 0x80
  r1 = *(u64 *)(r10 - 0xff8)
  r1 *= r7
  r8 = *(u64 *)(r10 - 0xff0)
  r7 = *(u64 *)(r9 + 0x48)
  r2 = 0x3ff0000000000000 ll
  if r8 == r2 goto jmp_b780
  r2 = 0x4000000000000000 ll
  if r8 != r2 goto jmp_b6a8
  r1 <<= 0x1
  goto jmp_b780

jmp_acd0:
  r1 = *(u64 *)(r10 - 0x7e8)
  r7 = *(u64 *)(r1 + 0x8)
  r1 = *(u64 *)(r7 + 0x8)
  r2 = 0x515c2c1917d5a706 ll
  if r1 != r2 goto jmp_12eb8
  r1 = *(u64 *)(r7 + 0x10)
  r2 = 0x7ff14a3d4cc98c21 ll
  if r1 != r2 goto jmp_12eb8
  r1 = *(u64 *)(r7 + 0x18)
  r2 = 0x44fda19b08eeda58 ll
  if r1 != r2 goto jmp_12eb8
  r1 = *(u64 *)(r7 + 0x20)
  r2 = 0x8ad9dbe3 ll
  if r1 != r2 goto jmp_12eb8
  r4 = *(u64 *)(r9 + 0x50)
  r1 = *(u64 *)(r7 + 0x58)
  r2 = r4
  r2 += 0x80
  r1 *= r2
  r8 = *(u64 *)(r7 + 0x60)
  r7 += 0x58
  r2 = 0x3ff0000000000000 ll
  if r8 == r2 goto jmp_bc38
  r2 = 0x4000000000000000 ll
  if r8 != r2 goto jmp_bc48
  r1 <<= 0x1
  r3 = *(u64 *)(r10 - 0x790)
  goto jmp_be20

jmp_ade0:
  r2 = r1
  r2 += 0xdd

jmp_adf0:
  r4 = *(u64 *)(r1 + 0x78)
  r5 = 0x6011348d72903300 ll
  if r4 == r5 goto jmp_b880
  if r4 != 0x0 goto jmp_b968
  r4 = *(u64 *)(r1 + 0x80)
  if r4 != 0x0 goto jmp_b968
  r4 = *(u64 *)(r1 + 0x88)
  if r4 != 0x0 goto jmp_b968
  r4 = *(u64 *)(r1 + 0x90)
  if r4 != 0x0 goto jmp_b968
  goto jmp_b8e0

jmp_ae50:
  r1 = -0x100000000 ll
  r8 &= r1
  r0 = 0x3
  r9 = r8

jmp_ae78:
  *(u64 *)(r10 - 0x7c0) = r8

jmp_ae80:
  r7 = r9

jmp_ae88:
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 != 0x1a goto jmp_110e0

jmp_aea8:
  r9 = *(u64 *)(r10 - 0x7d0)
  r1 = *(u64 *)(r10 - 0x7c8)
  if r9 == r1 goto jmp_10d88
  r7 = *(u64 *)(r10 - 0x7d8)
  r2 = *(u64 *)(r10 - 0x7e0)
  r7 -= r2
  r2 <<= 0x3
  r3 = *(u64 *)(r10 - 0x7e8)
  r3 += r2
  r6 += r1
  r9 -= r1
  if r9 >= 0x2 goto jmp_9598
  goto jmp_10298

jmp_af10:
  r2 = *(u64 *)(r8 + 0x8)
  goto jmp_c178

jmp_af20:
  *(u64 *)(r10 - 0x758) = r5
  call fn_1b938
  r1 = r8
  r2 = r0
  call fn_1bbf0
  r8 = r0
  r1 = r8
  call fn_1bb38
  *(u64 *)(r10 - 0x748) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x750) = r1
  r1 = r8
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_afb8
  r1 = *(u64 *)(r10 - 0x748)
  *(u64 *)(r10 - 0x750) = r1

jmp_afb8:
  r1 = r8
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_b000
  r1 = *(u64 *)(r10 - 0x750)

jmp_b000:
  r2 = *(u64 *)(r10 - 0x7e8)
  r5 = *(u64 *)(r10 - 0x758)

jmp_b010:
  r2 = *(u64 *)(r2 + 0x8)
  r3 = *(u64 *)(r2 + 0x8)
  r4 = -0x7b7e5401a87764fa ll
  if r3 != r4 goto jmp_b0a0
  r3 = *(u64 *)(r2 + 0x10)
  r4 = 0x35c01846637f68fb ll
  if r3 != r4 goto jmp_b0a0
  r3 = *(u64 *)(r2 + 0x18)
  r4 = 0x553beb1adc39c4da ll
  if r3 != r4 goto jmp_b0a0
  r8 = 0x1
  r3 = *(u64 *)(r2 + 0x20)
  r4 = 0x100000000f0a098 ll
  if r3 == r4 goto jmp_b0a8

jmp_b0a0:
  r8 = 0x0

jmp_b0a8:
  r0 = 0x3
  r3 = *(u64 *)(r10 - 0x7a8)
  if r3 != 0xa5 goto jmp_110e0
  r4 = r5
  w3 = *(u8 *)(r5 + 0xc4)
  if r3 > 0x2 goto jmp_110e0
  if r3 != 0x0 goto jmp_fab8
  r5 = *(u64 *)(r4 + 0x48)
  if r5 < r1 goto jmp_11bd8
  r3 = *(u64 *)(r10 - 0x788)
  r3 += 0x8
  *(u64 *)(r10 - 0x788) = r3
  r9 += 0x58
  r3 = r2
  r3 += 0x8
  r0 = r4
  r0 += 0x58
  *(u64 *)(r10 - 0x7a8) = r0
  if r8 == 0x0 goto jmp_d138
  r8 = r4
  *(u8 *)(r8 + 0xc4) = 0x1
  r2 = *(u64 *)(r3 + 0x0)
  r0 = *(u64 *)(r3 + 0x8)
  r7 = *(u64 *)(r3 + 0x10)
  r4 = *(u64 *)(r3 + 0x18)
  r3 = *(u64 *)(r10 - 0x7a8)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r7
  *(u64 *)(r3 + 0x8) = r0
  *(u64 *)(r3 + 0x0) = r2
  r0 = *(u64 *)(r10 - 0x788)
  r2 = *(u64 *)(r0 + 0x0)
  r3 = *(u64 *)(r0 + 0x8)
  r4 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r0 + 0x18)
  *(u64 *)(r8 + 0x90) = r0
  *(u64 *)(r8 + 0x88) = r4
  *(u64 *)(r8 + 0x80) = r3
  *(u64 *)(r8 + 0x78) = r2
  *(u64 *)(r8 + 0xc9) = r1
  r5 -= r1
  *(u64 *)(r8 + 0x98) = r5
  *(u8 *)(r8 + 0xc5) = 0x1
  *(u64 *)(r10 - 0x740) = r9
  goto jmp_aea8

jmp_b210:
  *(u64 *)(r10 - 0x758) = r4
  *(u64 *)(r10 - 0x770) = r3
  call fn_1b938
  r1 = r8
  r2 = r0
  call fn_1bbf0
  r8 = r0
  r1 = r8
  call fn_1bb38
  *(u64 *)(r10 - 0x748) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x750) = r1
  r1 = r8
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_b2b0
  r1 = *(u64 *)(r10 - 0x748)
  *(u64 *)(r10 - 0x750) = r1

jmp_b2b0:
  r1 = r8
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_b2f8
  r1 = *(u64 *)(r10 - 0x750)

jmp_b2f8:
  r3 = *(u64 *)(r10 - 0x770)
  r4 = *(u64 *)(r10 - 0x758)

jmp_b308:
  r0 = 0x3
  if r3 != 0x52 goto jmp_12b00
  w2 = *(u8 *)(r7 + 0x85)
  if r2 != 0x0 goto jmp_110c0
  if r4 < r1 goto jmp_11bd8
  r1 = r6
  r1 += 0x4
  r9 += 0x58
  *(u8 *)(r7 + 0x58) = 0x1
  *(u8 *)(r7 + 0x85) = 0x1
  r2 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r7 + 0x5c) = r2
  r2 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r7 + 0x64) = r2
  r2 = *(u64 *)(r1 + 0x10)
  *(u64 *)(r7 + 0x6c) = r2
  r1 = *(u64 *)(r1 + 0x18)
  *(u64 *)(r7 + 0x74) = r1
  r1 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r7 + 0x84) = w1
  r4 = *(u64 *)(r10 - 0x788)
  if r4 == 0x0 goto jmp_b400
  *(u8 *)(r7 + 0x86) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r7 + 0xa2) = r4
  *(u64 *)(r7 + 0x9a) = r3
  *(u64 *)(r7 + 0x92) = r2
  *(u64 *)(r7 + 0x8a) = r1

jmp_b400:
  *(u64 *)(r10 - 0x770) = r9
  goto jmp_aea8

jmp_b410:
  call fn_1b938
  r1 = r9
  r2 = r0
  call fn_1bbf0
  r9 = r0
  r1 = r9
  call fn_1bb38
  *(u64 *)(r10 - 0x788) = r0
  r7 = 0x0
  r1 = r9
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_b490
  r7 = *(u64 *)(r10 - 0x788)

jmp_b490:
  r1 = r9
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_b4d8
  r1 = r7

jmp_b4d8:
  r2 = *(u64 *)(r10 - 0x7e8)
  r3 = *(u64 *)(r2 + 0x8)
  r2 = *(u64 *)(r3 + 0x8)
  r4 = -0x7b7e5401a87764fa ll
  if r2 != r4 goto jmp_b570
  r2 = *(u64 *)(r3 + 0x10)
  r4 = 0x35c01846637f68fb ll
  if r2 != r4 goto jmp_b570
  r2 = *(u64 *)(r3 + 0x18)
  r4 = 0x553beb1adc39c4da ll
  if r2 != r4 goto jmp_b570
  r9 = 0x1
  r2 = *(u64 *)(r3 + 0x20)
  r4 = 0x100000000f0a098 ll
  if r2 == r4 goto jmp_b578

jmp_b570:
  r9 = 0x0

jmp_b578:
  r0 = 0x3
  r4 = *(u64 *)(r10 - 0x7a8)
  r2 = *(u64 *)(r4 + 0x50)
  if r2 != 0xa5 goto jmp_12b00
  w2 = *(u8 *)(r4 + 0xc4)
  if r2 > 0x2 goto jmp_110e0
  if r2 != 0x0 goto jmp_fab8
  r2 = *(u64 *)(r10 - 0x7a8)
  r5 = *(u64 *)(r2 + 0x48)
  if r5 < r1 goto jmp_11bd8
  r4 = r3
  r4 += 0x8
  r2 = *(u64 *)(r10 - 0x7a8)
  r2 += 0x58
  if r9 == 0x0 goto jmp_d338
  r9 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r9 + 0xc4) = 0x1
  r3 = *(u64 *)(r4 + 0x0)
  r0 = *(u64 *)(r4 + 0x8)
  r7 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r2 + 0x18) = r4
  *(u64 *)(r2 + 0x10) = r7
  *(u64 *)(r2 + 0x8) = r0
  *(u64 *)(r2 + 0x0) = r3
  r2 = *(u64 *)(r8 + 0x18)
  *(u64 *)(r9 + 0x90) = r2
  r2 = *(u64 *)(r8 + 0x10)
  *(u64 *)(r9 + 0x88) = r2
  r2 = *(u64 *)(r8 + 0x8)
  *(u64 *)(r9 + 0x80) = r2
  r2 = *(u64 *)(r8 + 0x0)
  *(u64 *)(r9 + 0x78) = r2
  *(u64 *)(r9 + 0xc9) = r1
  r5 -= r1
  *(u64 *)(r9 + 0x98) = r5
  *(u8 *)(r9 + 0xc5) = 0x1
  goto jmp_aea8

jmp_b6a8:
  call fn_1b938
  r1 = r8
  r2 = r0
  call fn_1bbf0
  r8 = r0
  r1 = r8
  call fn_1bb38
  *(u64 *)(r10 - 0x750) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x758) = r1
  r1 = r8
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_b738
  r1 = *(u64 *)(r10 - 0x750)
  *(u64 *)(r10 - 0x758) = r1

jmp_b738:
  r1 = r8
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_b780
  r1 = *(u64 *)(r10 - 0x758)

jmp_b780:
  r0 = 0x3
  r2 = *(u64 *)(r9 + 0x50)
  if r2 != 0x52 goto jmp_12b00
  w2 = *(u8 *)(r9 + 0x85)
  if r2 != 0x0 goto jmp_110c0
  if r7 < r1 goto jmp_11bd8
  r1 = r6
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
  r1 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r9 + 0x84) = w1
  r4 = *(u64 *)(r10 - 0x788)
  if r4 == 0x0 goto jmp_aea8
  *(u8 *)(r9 + 0x86) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r9 + 0xa2) = r4
  *(u64 *)(r9 + 0x9a) = r3
  *(u64 *)(r9 + 0x92) = r2
  *(u64 *)(r9 + 0x8a) = r1
  goto jmp_aea8

jmp_b880:
  r4 = *(u64 *)(r1 + 0x80)
  r5 = -0x24ff0040ee364287 ll
  if r4 != r5 goto jmp_b968
  r4 = *(u64 *)(r1 + 0x88)
  r5 = -0x5963083332d1b22c ll
  if r4 != r5 goto jmp_b968
  r4 = *(u64 *)(r1 + 0x90)
  r5 = 0xe13800e1 ll
  if r4 != r5 goto jmp_b968

jmp_b8e0:
  r2 = *(u64 *)(r3 + 0x8)
  r4 = 0x6011348d72903300 ll
  if r2 != r4 goto jmp_113b0
  r2 = *(u64 *)(r3 + 0x10)
  r4 = -0x24ff0040ee364287 ll
  if r2 != r4 goto jmp_113b0
  r2 = *(u64 *)(r3 + 0x18)
  r4 = -0x5963083332d1b22c ll
  if r2 != r4 goto jmp_113b0
  r2 = *(u64 *)(r3 + 0x20)
  r4 = 0xe13800e1 ll
  if r2 == r4 goto jmp_c2f8
  goto jmp_110e0

jmp_b968:
  r5 = *(u64 *)(r2 + 0x0)
  r4 = *(u64 *)(r7 + 0x10)
  r0 = *(u64 *)(r4 + 0x8)
  if r5 != r0 goto jmp_12b58
  r5 = *(u64 *)(r4 + 0x10)
  r0 = *(u64 *)(r2 + 0x8)
  if r0 != r5 goto jmp_12b58
  r5 = *(u64 *)(r4 + 0x18)
  r0 = *(u64 *)(r2 + 0x10)
  if r0 != r5 goto jmp_12b58
  r5 = *(u64 *)(r4 + 0x20)
  r2 = *(u64 *)(r2 + 0x18)
  if r2 != r5 goto jmp_12b58
  r2 = *(u64 *)(r4 + 0x50)
  if r2 != 0x163 goto jmp_c2e8
  r2 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_c288
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_c2e8
  r2 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_c2e8
  r2 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_c2e8
  r2 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 != r5 goto jmp_c2e8
  goto jmp_cf08

jmp_ba80:
  r1 = -0x100000000 ll
  r2 = *(u64 *)(r10 - 0x768)
  r2 &= r1
  r1 = r2
  r0 = 0x3

jmp_bab0:
  *(u64 *)(r10 - 0x768) = r1
  r9 = r1
  goto jmp_ae80

jmp_bac8:
  r0 = 0x1a
  if r4 == 0x0 goto jmp_a600

jmp_bad8:
  r0 = r5
  r4 = r0
  r4 &= 0x1b
  if r4 != 0x1a goto jmp_e2b0

jmp_baf8:
  r4 = data_0000 ll
  if r0 < r4 goto jmp_ee28
  r0 = 0x0
  if r2 == 0x2 goto jmp_da30
  w2 = *(u8 *)(r3 + 0xc5)
  if r2 == 0x1 goto jmp_da40
  r2 = *(u64 *)(r6 + 0x3)
  r9 = 0x1
  r5 = *(u64 *)(r3 + 0x98)
  if r5 < r2 goto jmp_ae80
  *(u64 *)(r10 - 0x7a8) = r2
  r2 = *(u64 *)(r10 - 0x768)
  r2 = *(u64 *)(r2 + 0x0)
  r7 = *(u64 *)(r1 + 0x8)
  if r7 != r2 goto jmp_d808
  r2 = *(u64 *)(r3 + 0x60)
  r7 = *(u64 *)(r1 + 0x10)
  if r7 != r2 goto jmp_d808
  r2 = *(u64 *)(r3 + 0x68)
  r7 = *(u64 *)(r1 + 0x18)
  if r7 != r2 goto jmp_d808
  r2 = *(u64 *)(r3 + 0x70)
  r7 = *(u64 *)(r1 + 0x20)
  if r7 != r2 goto jmp_d808
  w2 = *(u8 *)(r6 + 0xb)
  w7 = *(u8 *)(r1 + 0x84)
  if r2 != r7 goto jmp_e070
  r2 = *(u64 *)(r3 + 0x78)
  r4 = 0x6011348d72903300 ll
  if r2 == r4 goto jmp_c608
  if r2 != 0x0 goto jmp_c668
  r7 = *(u64 *)(r3 + 0x80)
  if r7 != 0x0 goto jmp_c668
  r7 = *(u64 *)(r3 + 0x88)
  if r7 != 0x0 goto jmp_c668
  r7 = *(u64 *)(r3 + 0x90)
  if r7 != 0x0 goto jmp_c668
  goto jmp_c928

jmp_bc38:
  r3 = *(u64 *)(r10 - 0x790)
  goto jmp_be20

jmp_bc48:
  *(u64 *)(r10 - 0x7a8) = r4
  call fn_1b938
  r1 = r8
  r2 = r0
  call fn_1bbf0
  r8 = r0
  r1 = r8
  call fn_1bb38
  *(u64 *)(r10 - 0x778) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x788) = r1
  r1 = r8
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_bce0
  r1 = *(u64 *)(r10 - 0x778)
  *(u64 *)(r10 - 0x788) = r1

jmp_bce0:
  r1 = r8
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_bd28
  r1 = *(u64 *)(r10 - 0x788)

jmp_bd28:
  r3 = *(u64 *)(r10 - 0x790)
  goto jmp_be18

jmp_bd38:
  *(u64 *)(r10 - 0x7a8) = r4
  call fn_1b938
  r1 = r8
  r2 = r0
  call fn_1bbf0
  r8 = r0
  r1 = r8
  call fn_1bb38
  *(u64 *)(r10 - 0x788) = r0
  r7 = 0x0
  r1 = r8
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_bdc0
  r7 = *(u64 *)(r10 - 0x788)

jmp_bdc0:
  r1 = r8
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_be08
  r1 = r7

jmp_be08:
  r3 = *(u64 *)(r10 - 0x790)
  r7 = *(u64 *)(r10 - 0x778)

jmp_be18:
  r4 = *(u64 *)(r10 - 0x7a8)

jmp_be20:
  if r4 != 0xa5 goto jmp_12210
  w2 = *(u8 *)(r9 + 0xc4)
  if r2 > 0x2 goto jmp_12210
  if r2 == 0x0 goto jmp_13340
  w2 = *(u8 *)(r9 + 0xc5)
  if r2 != 0x1 goto jmp_122e0
  r2 = *(u64 *)(r9 + 0x48)
  if r2 < r1 goto jmp_12320
  *(u64 *)(r10 - 0x778) = r7
  r3 = r9
  r3 += 0x58
  *(u64 *)(r10 - 0x790) = r3
  *(u64 *)(r9 + 0xc9) = r1
  r2 -= r1
  *(u64 *)(r9 + 0x98) = r2
  goto jmp_aea8

jmp_bea0:
  r7 = *(u64 *)(r3 + 0x80)
  r8 = -0x24ff0040ee364287 ll
  if r7 != r8 goto jmp_bf00
  r7 = *(u64 *)(r3 + 0x88)
  r8 = -0x5963083332d1b22c ll
  if r7 != r8 goto jmp_bf00
  r7 = *(u64 *)(r3 + 0x90)
  r8 = 0xe13800e1 ll
  if r7 == r8 goto jmp_c5b0

jmp_bf00:
  *(u64 *)(r10 - 0x7a8) = r4
  r4 = r5
  r4 += 0x18
  *(u64 *)(r10 - 0x758) = r4
  r8 = *(u64 *)(r5 + 0x10)
  w7 = *(u8 *)(r3 + 0xa0)
  if r7 != 0x1 goto jmp_c058
  r7 = 0x1
  r4 = *(u64 *)(r8 + 0x8)
  r9 = *(u64 *)(r3 + 0xa4)
  if r4 != r9 goto jmp_c060
  r9 = *(u64 *)(r3 + 0xac)
  r5 = *(u64 *)(r8 + 0x10)
  if r5 != r9 goto jmp_c060
  r5 = *(u64 *)(r3 + 0xb4)
  r9 = *(u64 *)(r8 + 0x18)
  if r9 != r5 goto jmp_c060
  r5 = *(u64 *)(r3 + 0xbc)
  r9 = *(u64 *)(r8 + 0x20)
  if r9 != r5 goto jmp_c060
  r2 = *(u64 *)(r8 + 0x50)
  r4 = *(u64 *)(r10 - 0x7a8)
  if r2 != 0x163 goto jmp_cb98
  r2 = *(u64 *)(r8 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_cb38
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_cb98
  r2 = *(u64 *)(r8 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_cb98
  r2 = *(u64 *)(r8 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_cb98
  r2 = *(u64 *)(r8 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 != r5 goto jmp_cb98
  goto jmp_e7f0

jmp_c058:
  r4 = *(u64 *)(r8 + 0x8)

jmp_c060:
  if r2 != r4 goto jmp_12e78
  r2 = *(u64 *)(r8 + 0x10)
  r5 = *(u64 *)(r3 + 0x80)
  if r5 != r2 goto jmp_12e78
  r7 = 0x4
  r2 = *(u64 *)(r8 + 0x18)
  r5 = *(u64 *)(r3 + 0x88)
  if r5 != r2 goto jmp_110e0
  r2 = *(u64 *)(r8 + 0x20)
  r5 = *(u64 *)(r3 + 0x90)
  if r5 != r2 goto jmp_110e0
  r2 = *(u64 *)(r8 + 0x50)
  r4 = *(u64 *)(r10 - 0x7a8)
  if r2 != 0x163 goto jmp_c5a0
  r2 = *(u64 *)(r8 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_c540
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_c5a0
  r2 = *(u64 *)(r8 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_c5a0
  r2 = *(u64 *)(r8 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_c5a0
  r2 = *(u64 *)(r8 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 != r5 goto jmp_c5a0
  goto jmp_d678

jmp_c170:
  r2 = r0

jmp_c178:
  r7 = 0x4
  r0 = *(u64 *)(r3 + 0x78)
  if r0 != r2 goto jmp_12e60
  r2 = *(u64 *)(r8 + 0x10)
  r0 = *(u64 *)(r3 + 0x80)
  if r0 != r2 goto jmp_12e60
  r2 = *(u64 *)(r8 + 0x18)
  r0 = *(u64 *)(r3 + 0x88)
  if r0 != r2 goto jmp_12e60
  r2 = *(u64 *)(r8 + 0x20)
  r0 = *(u64 *)(r3 + 0x90)
  if r0 != r2 goto jmp_12e60
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x163 goto jmp_c3b8
  r2 = *(u64 *)(r8 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_c358
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_c3b8
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_c3b8
  r2 = *(u64 *)(r8 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_c3b8
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_c3b8
  goto jmp_d020

jmp_c288:
  r2 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_c2e8
  r2 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_c2e8
  r2 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_cf08

jmp_c2e8:
  w2 = *(u8 *)(r4 + 0x1)
  if r2 == 0x0 goto jmp_12b78

jmp_c2f8:
  r2 = r1
  r2 += 0x58
  *(u64 *)(r10 - 0x7a0) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r4 = *(u64 *)(r3 + 0x48)
  r4 += r2
  *(u64 *)(r3 + 0x48) = r4
  r1 += 0x28
  r2 = 0x0
  r3 = 0x30
  call sol_memset_
  goto jmp_aea8

jmp_c358:
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_c3b8
  r2 = *(u64 *)(r8 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_c3b8
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_d020

jmp_c3b8:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_12b78

jmp_c3c8:
  if r4 == 0x0 goto jmp_ca28
  if r3 == r1 goto jmp_ca28

jmp_c3d8:
  r5 -= r4
  *(u64 *)(r3 + 0x98) = r5
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_12e40
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r4
  *(u64 *)(r1 + 0x98) = r2
  w2 = *(u8 *)(r3 + 0xc5)
  if r2 != 0x1 goto jmp_aea8
  r2 = *(u64 *)(r3 + 0x48)
  r2 -= r4
  *(u64 *)(r3 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r4
  *(u64 *)(r1 + 0x48) = r2
  goto jmp_aea8

jmp_c458:
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_c4b8
  r2 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_c4b8
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_d560

jmp_c4b8:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_12b78

jmp_c4c8:
  if r4 == 0x0 goto jmp_ca28
  r7 = *(u64 *)(r3 + 0x7c)
  r2 = r7
  r2 += r4
  r0 = 0x0
  r5 = 0x1
  if r2 < r7 goto jmp_c508
  r5 = 0x0

jmp_c508:
  r5 &= 0x1
  if r5 != 0x0 goto jmp_135e8
  *(u64 *)(r3 + 0x7c) = r2
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r4
  *(u64 *)(r1 + 0x98) = r2
  goto jmp_aea8

jmp_c540:
  r2 = *(u64 *)(r8 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_c5a0
  r2 = *(u64 *)(r8 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_c5a0
  r2 = *(u64 *)(r8 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_d678

jmp_c5a0:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_12b78

jmp_c5b0:
  if r4 == 0x0 goto jmp_ca28
  r2 = *(u64 *)(r10 - 0x788)
  r2 -= r4
  *(u64 *)(r3 + 0x98) = r2
  r2 = *(u64 *)(r1 + 0x7c)
  r2 -= r4
  *(u64 *)(r1 + 0x7c) = r2
  goto jmp_aea8

jmp_c5f0:
  r8 = *(u64 *)(r10 - 0x7c0)
  r9 = 0x3
  goto jmp_ae78

jmp_c608:
  r7 = *(u64 *)(r3 + 0x80)
  r4 = -0x24ff0040ee364287 ll
  if r7 != r4 goto jmp_c668
  r7 = *(u64 *)(r3 + 0x88)
  r4 = -0x5963083332d1b22c ll
  if r7 != r4 goto jmp_c668
  r7 = *(u64 *)(r3 + 0x90)
  r4 = 0xe13800e1 ll
  if r7 == r4 goto jmp_c928

jmp_c668:
  r4 = r8
  r4 += 0x18
  *(u64 *)(r10 - 0x788) = r4
  r8 = *(u64 *)(r8 + 0x10)
  w7 = *(u8 *)(r3 + 0xa0)
  if r7 != 0x1 goto jmp_c7a8
  r7 = *(u64 *)(r8 + 0x8)
  r9 = *(u64 *)(r3 + 0xa4)
  if r7 != r9 goto jmp_c7b0
  r9 = *(u64 *)(r3 + 0xac)
  r4 = *(u64 *)(r8 + 0x10)
  if r4 != r9 goto jmp_c7b0
  r4 = *(u64 *)(r3 + 0xb4)
  r9 = *(u64 *)(r8 + 0x18)
  if r9 != r4 goto jmp_c7b0
  r4 = *(u64 *)(r3 + 0xbc)
  r9 = *(u64 *)(r8 + 0x20)
  if r9 != r4 goto jmp_c7b0
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x163 goto jmp_ce98
  r2 = *(u64 *)(r8 + 0x28)
  r4 = -0x21708a111e0922fa ll
  if r2 == r4 goto jmp_ce38
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_ce98
  r2 = *(u64 *)(r8 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_ce98
  r2 = *(u64 *)(r8 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_ce98
  r2 = *(u64 *)(r8 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r2 != r4 goto jmp_ce98
  goto jmp_ed68

jmp_c7a8:
  r7 = *(u64 *)(r8 + 0x8)

jmp_c7b0:
  r9 = 0x4
  if r2 != r7 goto jmp_ae80
  r2 = *(u64 *)(r8 + 0x10)
  r4 = *(u64 *)(r3 + 0x80)
  if r4 != r2 goto jmp_ae80
  r2 = *(u64 *)(r8 + 0x18)
  r4 = *(u64 *)(r3 + 0x88)
  if r4 != r2 goto jmp_ae80
  r2 = *(u64 *)(r8 + 0x20)
  r4 = *(u64 *)(r3 + 0x90)
  if r4 != r2 goto jmp_ae80
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x163 goto jmp_c918
  r2 = *(u64 *)(r8 + 0x28)
  r4 = -0x21708a111e0922fa ll
  if r2 == r4 goto jmp_c8b8
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_c918
  r2 = *(u64 *)(r8 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_c918
  r2 = *(u64 *)(r8 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_c918
  r2 = *(u64 *)(r8 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r2 != r4 goto jmp_c918
  goto jmp_e198

jmp_c8b8:
  r2 = *(u64 *)(r8 + 0x30)
  r4 = -0x2532931b43a2bde8 ll
  if r2 != r4 goto jmp_c918
  r2 = *(u64 *)(r8 + 0x38)
  r4 = 0x270db9834dfc1ab6 ll
  if r2 != r4 goto jmp_c918
  r2 = *(u64 *)(r8 + 0x40)
  r4 = -0x3745e27d7064202 ll
  if r2 == r4 goto jmp_e198

jmp_c918:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_e250

jmp_c928:
  r4 = *(u64 *)(r10 - 0x7a8)
  if r4 == 0x0 goto jmp_e080
  r5 -= r4
  *(u64 *)(r3 + 0x98) = r5
  r2 = *(u64 *)(r1 + 0x7c)
  r2 -= r4
  *(u64 *)(r1 + 0x7c) = r2
  r0 = 0x1a

jmp_c968:
  goto jmp_ae80

jmp_c970:
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_c9d0
  r2 = *(u64 *)(r8 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_c9d0
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_e4e0

jmp_c9d0:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_12b78

jmp_c9e0:
  r2 = *(u64 *)(r3 + 0xd1)
  if r2 < r4 goto jmp_12300
  if r3 == r1 goto jmp_ca28
  r0 = r2
  r0 -= r4
  *(u64 *)(r3 + 0xd1) = r0
  if r2 != r4 goto jmp_ca20
  *(u8 *)(r3 + 0xa0) = 0x0

jmp_ca20:
  if r4 != 0x0 goto jmp_c3d8

jmp_ca28:
  r0 = 0x6
  r2 = *(u64 *)(r3 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_113b0
  r2 = *(u64 *)(r3 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_113b0
  r2 = *(u64 *)(r3 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_113b0
  r2 = *(u64 *)(r3 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_113b0
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_113b0
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_aea8
  goto jmp_110e0

jmp_cb38:
  r2 = *(u64 *)(r8 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_cb98
  r2 = *(u64 *)(r8 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_cb98
  r2 = *(u64 *)(r8 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_e7f0

jmp_cb98:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_12b78

jmp_cba8:
  r2 = *(u64 *)(r3 + 0xd1)
  if r2 < r4 goto jmp_110e0
  r5 = r2
  r4 = *(u64 *)(r10 - 0x7a8)
  r5 -= r4
  *(u64 *)(r3 + 0xd1) = r5
  if r2 != r4 goto jmp_c5b0
  *(u8 *)(r3 + 0xa0) = 0x0
  goto jmp_c5b0

jmp_cbf0:
  r9 = 0xc
  r0 = 0x0
  goto jmp_ae80

jmp_cc08:
  r1 = -0x100000000 ll
  r2 = *(u64 *)(r10 - 0x7b8)
  goto jmp_aa70

jmp_cc28:
  if r2 == 0x2 goto jmp_122c0
  r5 = *(u64 *)(r3 + 0x98)
  r7 = *(u64 *)(r10 - 0x7e8)
  if r5 >= r4 goto jmp_98d0
  goto jmp_12300

jmp_cc50:
  r0 = 0x9
  goto jmp_aa80

jmp_cc60:
  r0 = 0x0
  if r5 != 0x2 goto jmp_d520
  r8 = *(u64 *)(r10 - 0x7c0)
  r9 = 0x11
  goto jmp_ae78

jmp_cc88:
  r0 = 0x1a
  if r8 == 0x0 goto jmp_9f30

jmp_cc98:
  r0 = r9
  r8 = r0
  r8 &= 0x1b
  if r8 != 0x1a goto jmp_f3f8

jmp_ccb8:
  r8 = data_0000 ll
  if r0 < r8 goto jmp_f6f8
  w0 = *(u8 *)(r7 + 0x84)
  if r2 != r0 goto jmp_d7e8
  r2 = *(u64 *)(r10 - 0x7e8)
  r9 = r2
  r9 += 0x20
  r8 = *(u64 *)(r2 + 0x18)
  w2 = *(u8 *)(r3 + 0xa0)
  if r2 != 0x1 goto jmp_dc68
  r2 = *(u64 *)(r8 + 0x8)
  r0 = *(u64 *)(r3 + 0xa4)
  if r0 != r2 goto jmp_e2d0
  r2 = *(u64 *)(r8 + 0x10)
  r7 = *(u64 *)(r3 + 0xac)
  if r7 != r2 goto jmp_e2c8
  r2 = *(u64 *)(r8 + 0x18)
  r7 = *(u64 *)(r3 + 0xb4)
  if r7 != r2 goto jmp_e2c8
  r2 = *(u64 *)(r8 + 0x20)
  *(u64 *)(r10 - 0x7a8) = r2
  r7 = *(u64 *)(r3 + 0xbc)
  r2 = r0
  r0 = *(u64 *)(r10 - 0x7a8)
  if r7 != r0 goto jmp_e2d0
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x163 goto jmp_ef08
  r2 = *(u64 *)(r8 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_eea8
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_ef08
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_ef08
  r2 = *(u64 *)(r8 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_ef08
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_ef08
  goto jmp_f638

jmp_ce38:
  r2 = *(u64 *)(r8 + 0x30)
  r4 = -0x2532931b43a2bde8 ll
  if r2 != r4 goto jmp_ce98
  r2 = *(u64 *)(r8 + 0x38)
  r4 = 0x270db9834dfc1ab6 ll
  if r2 != r4 goto jmp_ce98
  r2 = *(u64 *)(r8 + 0x40)
  r4 = -0x3745e27d7064202 ll
  if r2 == r4 goto jmp_ed68

jmp_ce98:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_e250

jmp_cea8:
  r2 = *(u64 *)(r3 + 0xd1)
  r4 = *(u64 *)(r10 - 0x7a8)
  if r2 >= r4 goto jmp_ced0
  r9 = 0x1
  goto jmp_ae80

jmp_ced0:
  r4 = r2
  r0 = *(u64 *)(r10 - 0x7a8)
  r4 -= r0
  *(u64 *)(r3 + 0xd1) = r4
  if r2 != r0 goto jmp_c928
  *(u8 *)(r3 + 0xa0) = 0x0
  goto jmp_c928

jmp_cf08:
  w2 = *(u8 *)(r4 + 0x5a)
  r5 = 0x3 ll
  if r2 == 0x1 goto jmp_cfc8
  r5 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_cfd8

jmp_cf40:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_cff8

jmp_cf58:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_15ea0
  r2 = 0x0
  *(u64 *)(r10 - 0x758) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_d818

jmp_cfa0:
  w2 = *(u8 *)(r4 + 0x58)
  r4 = *(u64 *)(r10 - 0x758)
  r4 &= 0xff
  if r4 >= r2 goto jmp_c2f8
  goto jmp_14c88

jmp_cfc8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_cf40

jmp_cfd8:
  r0 = r5
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_cf58

jmp_cff8:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_c2f8
  goto jmp_14708

jmp_d020:
  w2 = *(u8 *)(r8 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_d0e0
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_d0f0

jmp_d058:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_d110

jmp_d070:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_15ea0
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_da50

jmp_d0b8:
  w2 = *(u8 *)(r8 + 0x58)
  r0 = *(u64 *)(r10 - 0x748)
  r0 &= 0xff
  if r0 >= r2 goto jmp_c3c8
  goto jmp_14c88

jmp_d0e0:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_d058

jmp_d0f0:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_d070

jmp_d110:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_c3c8
  goto jmp_14708

jmp_d138:
  r0 = 0x6
  r1 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_113b0
  r1 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_113b0
  r1 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_113b0
  r1 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_110e0
  r7 = 0x2
  r1 = *(u64 *)(r2 + 0x50)
  if r1 != 0x52 goto jmp_12e60
  w2 = *(u8 *)(r2 + 0x85)
  r5 = 0x3 ll
  if r2 == 0x1 goto jmp_d238
  r5 = 0x3
  r1 = 0x1a
  if r2 != 0x0 goto jmp_d248

jmp_d210:
  r2 = r1
  r0 = 0x0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_d270
  goto jmp_110e0

jmp_d238:
  r1 = 0x1a
  if r2 == 0x0 goto jmp_d210

jmp_d248:
  r1 = r5
  r2 = r1
  r0 = 0x0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_110e0

jmp_d270:
  r2 = data_0000 ll
  if r1 < r2 goto jmp_110e0
  r0 = r4
  *(u8 *)(r0 + 0xc4) = 0x1
  r1 = *(u64 *)(r3 + 0x0)
  r2 = *(u64 *)(r3 + 0x8)
  r5 = *(u64 *)(r3 + 0x10)
  r4 = *(u64 *)(r3 + 0x18)
  r3 = *(u64 *)(r10 - 0x7a8)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r5
  *(u64 *)(r3 + 0x8) = r2
  *(u64 *)(r3 + 0x0) = r1
  r4 = *(u64 *)(r10 - 0x788)
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r0 + 0x90) = r4
  *(u64 *)(r0 + 0x88) = r3
  *(u64 *)(r0 + 0x80) = r2
  *(u64 *)(r0 + 0x78) = r1
  *(u64 *)(r10 - 0x740) = r9
  goto jmp_aea8

jmp_d338:
  r0 = 0x6
  r1 = *(u64 *)(r3 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_113b0
  r1 = *(u64 *)(r3 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_113b0
  r1 = *(u64 *)(r3 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_113b0
  r1 = *(u64 *)(r3 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_110e0
  r7 = 0x2
  r1 = *(u64 *)(r3 + 0x50)
  if r1 != 0x52 goto jmp_12e60
  w3 = *(u8 *)(r3 + 0x85)
  r5 = 0x3 ll
  if r3 == 0x1 goto jmp_d438
  r5 = 0x3
  r1 = 0x1a
  if r3 != 0x0 goto jmp_d448

jmp_d410:
  r3 = r1
  r0 = 0x0
  r3 &= 0x1b
  if r3 == 0x1a goto jmp_d470
  goto jmp_110e0

jmp_d438:
  r1 = 0x1a
  if r3 == 0x0 goto jmp_d410

jmp_d448:
  r1 = r5
  r3 = r1
  r0 = 0x0
  r3 &= 0x1b
  if r3 != 0x1a goto jmp_110e0

jmp_d470:
  r3 = data_0000 ll
  if r1 < r3 goto jmp_110e0
  r0 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r0 + 0xc4) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r3 = *(u64 *)(r4 + 0x8)
  r5 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r2 + 0x18) = r4
  *(u64 *)(r2 + 0x10) = r5
  *(u64 *)(r2 + 0x8) = r3
  *(u64 *)(r2 + 0x0) = r1
  r1 = *(u64 *)(r8 + 0x18)
  *(u64 *)(r0 + 0x90) = r1
  r1 = *(u64 *)(r8 + 0x10)
  *(u64 *)(r0 + 0x88) = r1
  r1 = *(u64 *)(r8 + 0x8)
  *(u64 *)(r0 + 0x80) = r1
  r1 = *(u64 *)(r8 + 0x0)
  *(u64 *)(r0 + 0x78) = r1
  goto jmp_aea8

jmp_d520:
  r5 = *(u64 *)(r3 + 0x98)
  if r5 >= r4 goto jmp_d7d0

jmp_d530:
  r8 = *(u64 *)(r10 - 0x7c0)
  r9 = 0x1
  goto jmp_ae78

jmp_d548:
  r0 = 0x9
  r9 = r8
  goto jmp_ae78

jmp_d560:
  w2 = *(u8 *)(r5 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_d620
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_d630

jmp_d598:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_d650

jmp_d5b0:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_15ea0
  r2 = 0x0
  *(u64 *)(r10 - 0x750) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_dc78

jmp_d5f8:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x750)
  r5 &= 0xff
  if r5 >= r2 goto jmp_c4c8
  goto jmp_14c88

jmp_d620:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_d598

jmp_d630:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_d5b0

jmp_d650:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_c4c8
  goto jmp_14708

jmp_d678:
  w2 = *(u8 *)(r8 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_d740
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_d750

jmp_d6b0:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_d770

jmp_d6c8:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_15ea0
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_de88

jmp_d710:
  w2 = *(u8 *)(r8 + 0x58)
  r4 = *(u64 *)(r10 - 0x748)
  r4 &= 0xff
  if r4 < r2 goto jmp_14c88
  r4 = *(u64 *)(r10 - 0x7a8)
  goto jmp_c5b0

jmp_d740:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_d6b0

jmp_d750:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_d6c8

jmp_d770:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  r4 = *(u64 *)(r10 - 0x7a8)
  if r2 == 0x1a goto jmp_c5b0
  goto jmp_14708

jmp_d7a0:
  r0 = 0x9
  r1 = *(u64 *)(r10 - 0x768)
  goto jmp_bab0

jmp_d7b8:
  r0 = 0x3
  r9 = 0x0
  goto jmp_ae80

jmp_d7d0:
  r0 = *(u64 *)(r10 - 0x7b8)
  r8 = *(u64 *)(r0 + 0x0)
  goto jmp_9e78

jmp_d7e8:
  r0 = 0x0
  r8 = *(u64 *)(r10 - 0x7c0)
  r9 = 0x12
  goto jmp_ae78

jmp_d808:
  r9 = 0x3
  goto jmp_ae80

jmp_d818:
  w2 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0x750) = r2
  if r2 > 0xb goto jmp_15fe8
  r5 = *(u64 *)(r10 - 0x7e8)
  r2 = r5
  r2 += 0x18
  *(u64 *)(r10 - 0x788) = r2
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r5 += r2
  *(u64 *)(r10 - 0x748) = r5
  r2 = *(u64 *)(r10 - 0x750)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x738) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x758) = r2
  r2 = r4
  r2 += 0x73
  *(u64 *)(r10 - 0x730) = r2
  goto jmp_d8e0

jmp_d8b8:
  r2 = *(u64 *)(r10 - 0x788)
  r2 += 0x8
  *(u64 *)(r10 - 0x788) = r2
  r5 = *(u64 *)(r10 - 0x748)
  if r2 == r5 goto jmp_cfa0

jmp_d8e0:
  r2 = *(u64 *)(r10 - 0x750)
  if r2 == 0x0 goto jmp_d8b8
  r8 = r10
  r8 += -0x1000
  r2 = *(u64 *)(r10 - 0x788)
  r9 = *(u64 *)(r2 + 0x0)
  r7 = *(u64 *)(r9 + 0x8)
  r2 = *(u64 *)(r10 - 0x738)
  r5 = *(u64 *)(r10 - 0x730)
  *(u64 *)(r10 - 0x7a0) = r9
  *(u64 *)(r10 - 0x7a8) = r7
  goto jmp_d970

jmp_d940:
  r9 = r7

jmp_d948:
  r7 = *(u64 *)(r10 - 0x7a8)

jmp_d950:
  r5 += 0x20
  r8 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_d8b8

jmp_d970:
  r0 = *(u64 *)(r5 - 0x18)
  if r0 != r7 goto jmp_d950
  r0 = *(u64 *)(r9 + 0x10)
  r7 = r9
  r9 = *(u64 *)(r5 - 0x10)
  if r9 != r0 goto jmp_d940
  r0 = *(u64 *)(r7 + 0x18)
  r9 = *(u64 *)(r5 - 0x8)
  if r9 != r0 goto jmp_da20
  r0 = *(u64 *)(r10 - 0x7a0)
  r0 = *(u64 *)(r0 + 0x20)
  r9 = *(u64 *)(r5 + 0x0)
  if r9 != r0 goto jmp_da20
  w0 = *(u8 *)(r8 + 0x0)
  if r0 != 0x0 goto jmp_da20
  r0 = *(u64 *)(r10 - 0x7a0)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 == 0x0 goto jmp_14c88
  *(u8 *)(r8 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0x758)
  r0 += 0x1
  *(u64 *)(r10 - 0x758) = r0

jmp_da20:
  r9 = *(u64 *)(r10 - 0x7a0)
  goto jmp_d948

jmp_da30:
  r9 = 0x11
  goto jmp_ae80

jmp_da40:
  r9 = 0xa
  goto jmp_ae80

jmp_da50:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x738) = r2
  if r2 > 0xb goto jmp_15fb8
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r0 = *(u64 *)(r10 - 0x7e8)
  r0 += r2
  *(u64 *)(r10 - 0x730) = r0
  r2 = *(u64 *)(r10 - 0x738)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x728) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x720) = r2
  goto jmp_daf0

jmp_dad8:
  r9 += 0x8
  r2 = *(u64 *)(r10 - 0x730)
  if r9 == r2 goto jmp_d0b8

jmp_daf0:
  r2 = *(u64 *)(r10 - 0x738)
  if r2 == 0x0 goto jmp_dad8
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x7a8) = r2
  r2 = *(u64 *)(r9 + 0x0)
  *(u64 *)(r10 - 0x750) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x758) = r2
  r0 = *(u64 *)(r10 - 0x728)
  r2 = *(u64 *)(r10 - 0x720)
  goto jmp_db88

jmp_db50:
  r0 = *(u64 *)(r10 - 0x788)
  r2 += 0x20
  r7 = *(u64 *)(r10 - 0x7a8)
  r7 += 0x1
  *(u64 *)(r10 - 0x7a8) = r7
  r0 += -0x20
  if r0 == 0x0 goto jmp_dad8

jmp_db88:
  *(u64 *)(r10 - 0x788) = r0
  r7 = *(u64 *)(r2 - 0x18)
  r0 = *(u64 *)(r10 - 0x758)
  if r7 != r0 goto jmp_db50
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x10)
  r7 = *(u64 *)(r2 - 0x10)
  if r7 != r0 goto jmp_db50
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x18)
  r7 = *(u64 *)(r2 - 0x8)
  if r7 != r0 goto jmp_db50
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x20)
  r7 = *(u64 *)(r2 + 0x0)
  if r7 != r0 goto jmp_db50
  r7 = *(u64 *)(r10 - 0x7a8)
  w7 = *(u8 *)(r7 + 0x0)
  if r7 != 0x0 goto jmp_db50
  r7 = *(u64 *)(r10 - 0x750)
  w7 = *(u8 *)(r7 + 0x1)
  if r7 == 0x0 goto jmp_14c88
  r7 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r7 + 0x0) = 0x1
  r7 = *(u64 *)(r10 - 0x748)
  r7 += 0x1
  *(u64 *)(r10 - 0x748) = r7
  goto jmp_db50

jmp_dc68:
  r2 = *(u64 *)(r8 + 0x8)
  goto jmp_e2d0

jmp_dc78:
  w2 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x748) = r2
  if r2 > 0xb goto jmp_16018
  r0 = *(u64 *)(r10 - 0x7e8)
  r2 = r0
  r2 += 0x18
  *(u64 *)(r10 - 0x758) = r2
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r0 += r2
  *(u64 *)(r10 - 0x738) = r0
  r2 = *(u64 *)(r10 - 0x748)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x730) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x750) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x728) = r2
  goto jmp_dd40

jmp_dd18:
  r2 = *(u64 *)(r10 - 0x758)
  r2 += 0x8
  *(u64 *)(r10 - 0x758) = r2
  r0 = *(u64 *)(r10 - 0x738)
  if r2 == r0 goto jmp_d5f8

jmp_dd40:
  r2 = *(u64 *)(r10 - 0x748)
  if r2 == 0x0 goto jmp_dd18
  r9 = r10
  r9 += -0x1000
  r2 = *(u64 *)(r10 - 0x758)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x7a8) = r2
  r2 = *(u64 *)(r2 + 0x8)
  r0 = *(u64 *)(r10 - 0x730)
  r7 = *(u64 *)(r10 - 0x728)
  *(u64 *)(r10 - 0x788) = r2
  goto jmp_dde8

jmp_dda0:
  *(u8 *)(r9 + 0x0) = 0x1
  r2 = *(u64 *)(r10 - 0x750)
  r2 += 0x1
  *(u64 *)(r10 - 0x750) = r2

jmp_ddc0:
  r2 = *(u64 *)(r10 - 0x788)

jmp_ddc8:
  r7 += 0x20
  r9 += 0x1
  r0 += -0x20
  if r0 == 0x0 goto jmp_dd18

jmp_dde8:
  r8 = *(u64 *)(r7 - 0x18)
  if r8 != r2 goto jmp_ddc8
  r2 = *(u64 *)(r10 - 0x7a8)
  r8 = *(u64 *)(r2 + 0x10)
  r2 = *(u64 *)(r7 - 0x10)
  if r2 != r8 goto jmp_ddc0
  r2 = *(u64 *)(r10 - 0x7a8)
  r2 = *(u64 *)(r2 + 0x18)
  r8 = *(u64 *)(r7 - 0x8)
  if r8 != r2 goto jmp_ddc0
  r2 = *(u64 *)(r10 - 0x7a8)
  r2 = *(u64 *)(r2 + 0x20)
  r8 = *(u64 *)(r7 + 0x0)
  if r8 != r2 goto jmp_ddc0
  w2 = *(u8 *)(r9 + 0x0)
  if r2 != 0x0 goto jmp_ddc0
  r2 = *(u64 *)(r10 - 0x7a8)
  w2 = *(u8 *)(r2 + 0x1)
  if r2 != 0x0 goto jmp_dda0
  goto jmp_14c88

jmp_de88:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x738) = r2
  if r2 > 0xb goto jmp_15fb8
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r4 = *(u64 *)(r10 - 0x7e8)
  r4 += r2
  *(u64 *)(r10 - 0x730) = r4
  r2 = *(u64 *)(r10 - 0x738)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x728) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x720) = r2
  goto jmp_df38

jmp_df10:
  r2 = *(u64 *)(r10 - 0x758)
  r2 += 0x8
  *(u64 *)(r10 - 0x758) = r2
  r5 = *(u64 *)(r10 - 0x730)
  if r2 == r5 goto jmp_d710

jmp_df38:
  r2 = *(u64 *)(r10 - 0x738)
  if r2 == 0x0 goto jmp_df10
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x758)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x750) = r2
  r4 = *(u64 *)(r2 + 0x8)
  r0 = *(u64 *)(r10 - 0x728)
  r2 = *(u64 *)(r10 - 0x720)
  goto jmp_dfb0

jmp_df90:
  r2 += 0x20
  r7 += 0x1
  r0 += -0x20
  if r0 == 0x0 goto jmp_df10

jmp_dfb0:
  r5 = *(u64 *)(r2 - 0x18)
  if r5 != r4 goto jmp_df90
  r5 = *(u64 *)(r10 - 0x750)
  r5 = *(u64 *)(r5 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r5 goto jmp_df90
  r5 = *(u64 *)(r10 - 0x750)
  r5 = *(u64 *)(r5 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r5 goto jmp_df90
  r5 = *(u64 *)(r10 - 0x750)
  r5 = *(u64 *)(r5 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 != r5 goto jmp_df90
  w5 = *(u8 *)(r7 + 0x0)
  if r5 != 0x0 goto jmp_df90
  r5 = *(u64 *)(r10 - 0x750)
  w5 = *(u8 *)(r5 + 0x1)
  if r5 == 0x0 goto jmp_14c88
  *(u8 *)(r7 + 0x0) = 0x1
  r5 = *(u64 *)(r10 - 0x748)
  r5 += 0x1
  *(u64 *)(r10 - 0x748) = r5
  goto jmp_df90

jmp_e070:
  r9 = 0x12
  goto jmp_ae80

jmp_e080:
  r0 = 0x6
  r2 = *(u64 *)(r3 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_c968
  r2 = *(u64 *)(r3 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_c968
  r2 = *(u64 *)(r3 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_c968
  r2 = *(u64 *)(r3 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_c968
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_c968
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_c968
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_c968
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_c968
  r0 = 0x1a
  goto jmp_ae80

jmp_e198:
  w2 = *(u8 *)(r8 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_e260
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_e270

jmp_e1d0:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_e290

jmp_e1e8:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_ee28
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_e5f8

jmp_e230:
  w2 = *(u8 *)(r8 + 0x58)
  r4 = *(u64 *)(r10 - 0x748)
  r4 &= 0xff
  if r4 >= r2 goto jmp_c928

jmp_e250:
  r0 = 0x7
  goto jmp_c968

jmp_e260:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_e1d0

jmp_e270:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_e1e8

jmp_e290:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_c928

jmp_e2b0:
  r9 = r0
  r9 >>= 0x20
  goto jmp_ae80

jmp_e2c8:
  r2 = r0

jmp_e2d0:
  r0 = *(u64 *)(r3 + 0x78)
  if r0 != r2 goto jmp_f2c0
  r2 = *(u64 *)(r8 + 0x10)
  r0 = *(u64 *)(r3 + 0x80)
  if r0 != r2 goto jmp_f2c0
  r2 = *(u64 *)(r8 + 0x18)
  r0 = *(u64 *)(r3 + 0x88)
  if r0 != r2 goto jmp_f2c0
  r2 = *(u64 *)(r8 + 0x20)
  r0 = *(u64 *)(r3 + 0x90)
  if r0 != r2 goto jmp_f2c0
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x163 goto jmp_e438
  r2 = *(u64 *)(r8 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_e3d8
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_e438
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_e438
  r2 = *(u64 *)(r8 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_e438
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_e438
  goto jmp_f2e0

jmp_e3d8:
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_e438
  r2 = *(u64 *)(r8 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_e438
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_f2e0

jmp_e438:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_f398

jmp_e448:
  if r4 == 0x0 goto jmp_ef70
  if r3 == r1 goto jmp_ef70

jmp_e458:
  r5 -= r4
  *(u64 *)(r3 + 0x98) = r5
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_f088
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r4
  *(u64 *)(r1 + 0x98) = r2
  r0 = 0x1a
  w2 = *(u8 *)(r3 + 0xc5)
  if r2 != 0x1 goto jmp_e4d8
  r2 = *(u64 *)(r3 + 0x48)
  r2 -= r4
  *(u64 *)(r3 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r4
  *(u64 *)(r1 + 0x48) = r2

jmp_e4d8:
  goto jmp_f408

jmp_e4e0:
  w2 = *(u8 *)(r8 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_e5a0
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_e5b0

jmp_e518:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_e5d0

jmp_e530:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_15ea0
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_e918

jmp_e578:
  w2 = *(u8 *)(r8 + 0x58)
  r0 = *(u64 *)(r10 - 0x748)
  r0 &= 0xff
  if r0 >= r2 goto jmp_c9e0
  goto jmp_14c88

jmp_e5a0:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_e518

jmp_e5b0:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_e530

jmp_e5d0:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_c9e0
  goto jmp_14708

jmp_e5f8:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x738) = r2
  if r2 > 0xb goto jmp_15fb8
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r4 = *(u64 *)(r10 - 0x7e8)
  r4 += r2
  *(u64 *)(r10 - 0x730) = r4
  r2 = *(u64 *)(r10 - 0x738)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x728) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x720) = r2
  goto jmp_e6a8

jmp_e680:
  r2 = *(u64 *)(r10 - 0x788)
  r2 += 0x8
  *(u64 *)(r10 - 0x788) = r2
  r4 = *(u64 *)(r10 - 0x730)
  if r2 == r4 goto jmp_e230

jmp_e6a8:
  r2 = *(u64 *)(r10 - 0x738)
  if r2 == 0x0 goto jmp_e680
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x788)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x750) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x758) = r2
  r0 = *(u64 *)(r10 - 0x728)
  r2 = *(u64 *)(r10 - 0x720)
  goto jmp_e728

jmp_e708:
  r2 += 0x20
  r7 += 0x1
  r0 += -0x20
  if r0 == 0x0 goto jmp_e680

jmp_e728:
  r4 = *(u64 *)(r2 - 0x18)
  r9 = *(u64 *)(r10 - 0x758)
  if r4 != r9 goto jmp_e708
  r4 = *(u64 *)(r10 - 0x750)
  r4 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r4 goto jmp_e708
  r4 = *(u64 *)(r10 - 0x750)
  r4 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r4 goto jmp_e708
  r4 = *(u64 *)(r10 - 0x750)
  r4 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 != r4 goto jmp_e708
  w4 = *(u8 *)(r7 + 0x0)
  if r4 != 0x0 goto jmp_e708
  r4 = *(u64 *)(r10 - 0x750)
  w4 = *(u8 *)(r4 + 0x1)
  if r4 == 0x0 goto jmp_e250
  *(u8 *)(r7 + 0x0) = 0x1
  r4 = *(u64 *)(r10 - 0x748)
  r4 += 0x1
  *(u64 *)(r10 - 0x748) = r4
  goto jmp_e708

jmp_e7f0:
  w4 = *(u8 *)(r8 + 0x5a)
  r5 = 0x3 ll
  if r4 == 0x1 goto jmp_e8b8
  r5 = 0x3
  r2 = 0x1a
  if r4 != 0x0 goto jmp_e8c8

jmp_e828:
  r5 = r2
  r5 &= 0x1b
  if r5 != 0x1a goto jmp_e8e8

jmp_e840:
  r5 = data_0000 ll
  if r2 < r5 goto jmp_15ea0
  r2 = 0x0
  *(u64 *)(r10 - 0x730) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_eb38

jmp_e888:
  w2 = *(u8 *)(r8 + 0x58)
  r4 = *(u64 *)(r10 - 0x730)
  r4 &= 0xff
  if r4 < r2 goto jmp_14c88
  r4 = *(u64 *)(r10 - 0x7a8)
  goto jmp_cba8

jmp_e8b8:
  r2 = 0x1a
  if r4 == 0x0 goto jmp_e828

jmp_e8c8:
  r2 = r5
  r5 = r2
  r5 &= 0x1b
  if r5 == 0x1a goto jmp_e840

jmp_e8e8:
  r5 = r2
  r5 <<= 0x20
  r5 >>= 0x20
  r4 = *(u64 *)(r10 - 0x7a8)
  if r5 == 0x1a goto jmp_cba8
  goto jmp_15928

jmp_e918:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x738) = r2
  if r2 > 0xb goto jmp_15fb8
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r0 = *(u64 *)(r10 - 0x7e8)
  r0 += r2
  *(u64 *)(r10 - 0x730) = r0
  r2 = *(u64 *)(r10 - 0x738)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x728) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x720) = r2
  goto jmp_e9b8

jmp_e9a0:
  r9 += 0x8
  r2 = *(u64 *)(r10 - 0x730)
  if r9 == r2 goto jmp_e578

jmp_e9b8:
  r2 = *(u64 *)(r10 - 0x738)
  if r2 == 0x0 goto jmp_e9a0
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x7a8) = r2
  r2 = *(u64 *)(r9 + 0x0)
  *(u64 *)(r10 - 0x750) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x758) = r2
  r2 = *(u64 *)(r10 - 0x728)
  *(u64 *)(r10 - 0x788) = r2
  r2 = *(u64 *)(r10 - 0x720)
  goto jmp_ea60

jmp_ea20:
  r2 += 0x20
  r7 = *(u64 *)(r10 - 0x7a8)
  r7 += 0x1
  *(u64 *)(r10 - 0x7a8) = r7
  r0 = *(u64 *)(r10 - 0x788)
  r0 += -0x20
  *(u64 *)(r10 - 0x788) = r0
  if r0 == 0x0 goto jmp_e9a0

jmp_ea60:
  r7 = *(u64 *)(r2 - 0x18)
  r0 = *(u64 *)(r10 - 0x758)
  if r7 != r0 goto jmp_ea20
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x10)
  r7 = *(u64 *)(r2 - 0x10)
  if r7 != r0 goto jmp_ea20
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x18)
  r7 = *(u64 *)(r2 - 0x8)
  if r7 != r0 goto jmp_ea20
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x20)
  r7 = *(u64 *)(r2 + 0x0)
  if r7 != r0 goto jmp_ea20
  r7 = *(u64 *)(r10 - 0x7a8)
  w7 = *(u8 *)(r7 + 0x0)
  if r7 != 0x0 goto jmp_ea20
  r7 = *(u64 *)(r10 - 0x750)
  w7 = *(u8 *)(r7 + 0x1)
  if r7 == 0x0 goto jmp_14c88
  r7 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r7 + 0x0) = 0x1
  r7 = *(u64 *)(r10 - 0x748)
  r7 += 0x1
  *(u64 *)(r10 - 0x748) = r7
  goto jmp_ea20

jmp_eb38:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x728) = r2
  if r2 > 0xb goto jmp_16710
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r4 = *(u64 *)(r10 - 0x7e8)
  r4 += r2
  *(u64 *)(r10 - 0x720) = r4
  r2 = *(u64 *)(r10 - 0x728)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x718) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x730) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x710) = r2
  goto jmp_ebe8

jmp_ebc0:
  r2 = *(u64 *)(r10 - 0x758)
  r2 += 0x8
  *(u64 *)(r10 - 0x758) = r2
  r5 = *(u64 *)(r10 - 0x720)
  if r2 == r5 goto jmp_e888

jmp_ebe8:
  r2 = *(u64 *)(r10 - 0x728)
  if r2 == 0x0 goto jmp_ebc0
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x750) = r2
  r2 = *(u64 *)(r10 - 0x758)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x738) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x748) = r2
  r4 = *(u64 *)(r10 - 0x718)
  r2 = *(u64 *)(r10 - 0x710)
  goto jmp_ec90

jmp_ec50:
  r2 += 0x20
  r5 = *(u64 *)(r10 - 0x750)
  r5 += 0x1
  *(u64 *)(r10 - 0x750) = r5
  r5 = r4
  r5 += -0x20
  r4 = r5
  if r5 == 0x0 goto jmp_ebc0

jmp_ec90:
  r5 = *(u64 *)(r2 - 0x18)
  r9 = *(u64 *)(r10 - 0x748)
  if r5 != r9 goto jmp_ec50
  r5 = *(u64 *)(r10 - 0x738)
  r5 = *(u64 *)(r5 + 0x10)
  r9 = *(u64 *)(r2 - 0x10)
  if r9 != r5 goto jmp_ec50
  r5 = *(u64 *)(r10 - 0x738)
  r5 = *(u64 *)(r5 + 0x18)
  r9 = *(u64 *)(r2 - 0x8)
  if r9 != r5 goto jmp_ec50
  r5 = *(u64 *)(r10 - 0x738)
  r5 = *(u64 *)(r5 + 0x20)
  r9 = *(u64 *)(r2 + 0x0)
  if r9 != r5 goto jmp_ec50
  r5 = *(u64 *)(r10 - 0x750)
  w5 = *(u8 *)(r5 + 0x0)
  if r5 != 0x0 goto jmp_ec50
  r5 = *(u64 *)(r10 - 0x738)
  w5 = *(u8 *)(r5 + 0x1)
  if r5 == 0x0 goto jmp_14c88
  r5 = *(u64 *)(r10 - 0x750)
  *(u8 *)(r5 + 0x0) = 0x1
  r5 = *(u64 *)(r10 - 0x730)
  r5 += 0x1
  *(u64 *)(r10 - 0x730) = r5
  goto jmp_ec50

jmp_ed68:
  w7 = *(u8 *)(r8 + 0x5a)
  r4 = 0x3 ll
  if r7 == 0x1 goto jmp_ee38
  r4 = 0x3
  r2 = 0x1a
  if r7 != 0x0 goto jmp_ee48

jmp_eda0:
  r4 = r2
  r4 &= 0x1b
  if r4 != 0x1a goto jmp_ee68

jmp_edb8:
  r4 = data_0000 ll
  if r2 < r4 goto jmp_ee28
  r2 = 0x0
  *(u64 *)(r10 - 0x738) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x3 goto jmp_f0a0

jmp_ee00:
  w2 = *(u8 *)(r8 + 0x58)
  r4 = *(u64 *)(r10 - 0x738)
  r4 &= 0xff
  if r4 >= r2 goto jmp_cea8
  goto jmp_e250

jmp_ee28:
  r0 = 0x9
  goto jmp_ae80

jmp_ee38:
  r2 = 0x1a
  if r7 == 0x0 goto jmp_eda0

jmp_ee48:
  r2 = r4
  r4 = r2
  r4 &= 0x1b
  if r4 == 0x1a goto jmp_edb8

jmp_ee68:
  r4 = r2
  r4 <<= 0x20
  r4 >>= 0x20
  if r4 == 0x1a goto jmp_cea8
  r9 = r2
  r9 >>= 0x20
  r0 = r2
  goto jmp_ae80

jmp_eea8:
  r2 = *(u64 *)(r8 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_ef08
  r2 = *(u64 *)(r8 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_ef08
  r2 = *(u64 *)(r8 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_f638

jmp_ef08:
  w2 = *(u8 *)(r8 + 0x1)
  if r2 == 0x0 goto jmp_f398

jmp_ef18:
  r2 = *(u64 *)(r3 + 0xd1)
  if r2 >= r4 goto jmp_ef38
  r0 = 0x0
  goto jmp_d530

jmp_ef38:
  if r3 == r1 goto jmp_ef70
  r0 = r2
  r0 -= r4
  *(u64 *)(r3 + 0xd1) = r0
  if r2 != r4 goto jmp_ef68
  *(u8 *)(r3 + 0xa0) = 0x0

jmp_ef68:
  if r4 != 0x0 goto jmp_e458

jmp_ef70:
  r0 = 0x6
  r2 = *(u64 *)(r3 + 0x28)
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_e4d8
  r2 = *(u64 *)(r3 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_e4d8
  r2 = *(u64 *)(r3 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_e4d8
  r2 = *(u64 *)(r3 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_e4d8
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_e4d8
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_e4d8
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_e4d8
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_e4d8
  r0 = 0x1a
  goto jmp_f408

jmp_f088:
  r0 = 0x3
  r9 = 0x0
  goto jmp_f408

jmp_f0a0:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x730) = r2
  if r2 > 0xb goto jmp_16740
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r4 = *(u64 *)(r10 - 0x7e8)
  r4 += r2
  *(u64 *)(r10 - 0x728) = r4
  r2 = *(u64 *)(r10 - 0x730)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x720) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x738) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x718) = r2
  goto jmp_f150

jmp_f128:
  r2 = *(u64 *)(r10 - 0x788)
  r2 += 0x8
  *(u64 *)(r10 - 0x788) = r2
  r4 = *(u64 *)(r10 - 0x728)
  if r2 == r4 goto jmp_ee00

jmp_f150:
  r2 = *(u64 *)(r10 - 0x730)
  if r2 == 0x0 goto jmp_f128
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x758) = r2
  r2 = *(u64 *)(r10 - 0x788)
  r2 = *(u64 *)(r2 + 0x0)
  *(u64 *)(r10 - 0x748) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x750) = r2
  r2 = *(u64 *)(r10 - 0x720)
  r7 = *(u64 *)(r10 - 0x718)
  goto jmp_f1e8

jmp_f1b8:
  r7 += 0x20
  r4 = *(u64 *)(r10 - 0x758)
  r4 += 0x1
  *(u64 *)(r10 - 0x758) = r4
  r2 += -0x20
  if r2 == 0x0 goto jmp_f128

jmp_f1e8:
  r4 = *(u64 *)(r7 - 0x18)
  r9 = *(u64 *)(r10 - 0x750)
  if r4 != r9 goto jmp_f1b8
  r4 = *(u64 *)(r10 - 0x748)
  r4 = *(u64 *)(r4 + 0x10)
  r9 = *(u64 *)(r7 - 0x10)
  if r9 != r4 goto jmp_f1b8
  r4 = *(u64 *)(r10 - 0x748)
  r4 = *(u64 *)(r4 + 0x18)
  r9 = *(u64 *)(r7 - 0x8)
  if r9 != r4 goto jmp_f1b8
  r4 = *(u64 *)(r10 - 0x748)
  r4 = *(u64 *)(r4 + 0x20)
  r9 = *(u64 *)(r7 + 0x0)
  if r9 != r4 goto jmp_f1b8
  r4 = *(u64 *)(r10 - 0x758)
  w4 = *(u8 *)(r4 + 0x0)
  if r4 != 0x0 goto jmp_f1b8
  r4 = *(u64 *)(r10 - 0x748)
  w4 = *(u8 *)(r4 + 0x1)
  if r4 == 0x0 goto jmp_e250
  r4 = *(u64 *)(r10 - 0x758)
  *(u8 *)(r4 + 0x0) = 0x1
  r4 = *(u64 *)(r10 - 0x738)
  r4 += 0x1
  *(u64 *)(r10 - 0x738) = r4
  goto jmp_f1b8

jmp_f2c0:
  r0 = 0x0
  r8 = *(u64 *)(r10 - 0x7c0)
  r9 = 0x4
  goto jmp_ae78

jmp_f2e0:
  w2 = *(u8 *)(r8 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_f3a8
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_f3b8

jmp_f318:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_f3d8

jmp_f330:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_f6f8
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x4 goto jmp_f418

jmp_f378:
  w2 = *(u8 *)(r8 + 0x58)
  r0 = *(u64 *)(r10 - 0x748)
  r0 &= 0xff
  if r0 >= r2 goto jmp_e448

jmp_f398:
  r0 = 0x7
  goto jmp_f408

jmp_f3a8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_f318

jmp_f3b8:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_f330

jmp_f3d8:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_e448

jmp_f3f8:
  r9 = r0
  r9 >>= 0x20

jmp_f408:
  r8 = *(u64 *)(r10 - 0x7c0)
  goto jmp_ae78

jmp_f418:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x738) = r2
  if r2 > 0xb goto jmp_15fb8
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r0 = *(u64 *)(r10 - 0x7e8)
  r0 += r2
  *(u64 *)(r10 - 0x730) = r0
  r2 = *(u64 *)(r10 - 0x738)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x728) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x748) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x720) = r2
  goto jmp_f4b8

jmp_f4a0:
  r9 += 0x8
  r2 = *(u64 *)(r10 - 0x730)
  if r9 == r2 goto jmp_f378

jmp_f4b8:
  r2 = *(u64 *)(r10 - 0x738)
  if r2 == 0x0 goto jmp_f4a0
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x7a8) = r2
  r2 = *(u64 *)(r9 + 0x0)
  *(u64 *)(r10 - 0x750) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x758) = r2
  r2 = *(u64 *)(r10 - 0x728)
  *(u64 *)(r10 - 0x788) = r2
  r2 = *(u64 *)(r10 - 0x720)
  goto jmp_f560

jmp_f520:
  r2 += 0x20
  r7 = *(u64 *)(r10 - 0x7a8)
  r7 += 0x1
  *(u64 *)(r10 - 0x7a8) = r7
  r0 = *(u64 *)(r10 - 0x788)
  r0 += -0x20
  *(u64 *)(r10 - 0x788) = r0
  if r0 == 0x0 goto jmp_f4a0

jmp_f560:
  r7 = *(u64 *)(r2 - 0x18)
  r0 = *(u64 *)(r10 - 0x758)
  if r7 != r0 goto jmp_f520
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x10)
  r7 = *(u64 *)(r2 - 0x10)
  if r7 != r0 goto jmp_f520
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x18)
  r7 = *(u64 *)(r2 - 0x8)
  if r7 != r0 goto jmp_f520
  r7 = *(u64 *)(r10 - 0x750)
  r0 = *(u64 *)(r7 + 0x20)
  r7 = *(u64 *)(r2 + 0x0)
  if r7 != r0 goto jmp_f520
  r7 = *(u64 *)(r10 - 0x7a8)
  w7 = *(u8 *)(r7 + 0x0)
  if r7 != 0x0 goto jmp_f520
  r7 = *(u64 *)(r10 - 0x750)
  w7 = *(u8 *)(r7 + 0x1)
  if r7 == 0x0 goto jmp_f398
  r7 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r7 + 0x0) = 0x1
  r7 = *(u64 *)(r10 - 0x748)
  r7 += 0x1
  *(u64 *)(r10 - 0x748) = r7
  goto jmp_f520

jmp_f638:
  w2 = *(u8 *)(r8 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_f708
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_f718

jmp_f670:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_f738

jmp_f688:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_f6f8
  r2 = 0x0
  *(u64 *)(r10 - 0x738) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = *(u64 *)(r10 - 0x7e0)
  if r2 != 0x4 goto jmp_f760

jmp_f6d0:
  w2 = *(u8 *)(r8 + 0x58)
  r0 = *(u64 *)(r10 - 0x738)
  r0 &= 0xff
  if r0 < r2 goto jmp_f398
  goto jmp_ef18

jmp_f6f8:
  r0 = 0x9
  goto jmp_f408

jmp_f708:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_f670

jmp_f718:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_f688

jmp_f738:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_ef18
  goto jmp_f3f8

jmp_f760:
  w2 = *(u8 *)(r8 + 0x59)
  *(u64 *)(r10 - 0x748) = r2
  if r2 > 0xb goto jmp_16018
  r2 = *(u64 *)(r10 - 0x7e0)
  r2 <<= 0x3
  r0 = *(u64 *)(r10 - 0x7e8)
  r0 += r2
  *(u64 *)(r10 - 0x730) = r0
  r2 = *(u64 *)(r10 - 0x748)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x728) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x738) = r2
  r2 = r8
  r2 += 0x73
  *(u64 *)(r10 - 0x720) = r2
  goto jmp_f800

jmp_f7e8:
  r9 += 0x8
  r2 = *(u64 *)(r10 - 0x730)
  if r9 == r2 goto jmp_f6d0

jmp_f800:
  r2 = *(u64 *)(r10 - 0x748)
  if r2 == 0x0 goto jmp_f7e8
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x7a8) = r2
  r2 = *(u64 *)(r9 + 0x0)
  *(u64 *)(r10 - 0x750) = r2
  r2 = *(u64 *)(r2 + 0x8)
  *(u64 *)(r10 - 0x758) = r2
  r2 = *(u64 *)(r10 - 0x728)
  *(u64 *)(r10 - 0x788) = r2
  r0 = *(u64 *)(r10 - 0x720)
  goto jmp_f8d0

jmp_f868:
  r7 = *(u64 *)(r10 - 0x7a8)
  *(u8 *)(r7 + 0x0) = 0x1
  r7 = *(u64 *)(r10 - 0x738)
  r7 += 0x1
  *(u64 *)(r10 - 0x738) = r7

jmp_f890:
  r0 += 0x20
  r7 = *(u64 *)(r10 - 0x7a8)
  r7 += 0x1
  *(u64 *)(r10 - 0x7a8) = r7
  r2 = *(u64 *)(r10 - 0x788)
  r2 += -0x20
  *(u64 *)(r10 - 0x788) = r2
  if r2 == 0x0 goto jmp_f7e8

jmp_f8d0:
  r7 = *(u64 *)(r0 - 0x18)
  r2 = *(u64 *)(r10 - 0x758)
  if r7 != r2 goto jmp_f890
  r7 = *(u64 *)(r10 - 0x750)
  r2 = *(u64 *)(r7 + 0x10)
  r7 = *(u64 *)(r0 - 0x10)
  if r7 != r2 goto jmp_f890
  r7 = *(u64 *)(r10 - 0x750)
  r2 = *(u64 *)(r7 + 0x18)
  r7 = *(u64 *)(r0 - 0x8)
  if r7 != r2 goto jmp_f890
  r7 = *(u64 *)(r10 - 0x750)
  r2 = *(u64 *)(r7 + 0x20)
  r7 = *(u64 *)(r0 + 0x0)
  if r7 != r2 goto jmp_f890
  r7 = *(u64 *)(r10 - 0x7a8)
  w7 = *(u8 *)(r7 + 0x0)
  if r7 != 0x0 goto jmp_f890
  r7 = *(u64 *)(r10 - 0x750)
  w7 = *(u8 *)(r7 + 0x1)
  if r7 != 0x0 goto jmp_f868
  goto jmp_f398

jmp_f980:
  if r5 == 0x7 goto jmp_fe38
  if r5 == 0x8 goto jmp_100c0
  if r5 != 0x9 goto jmp_10248
  if r7 < 0x3 goto jmp_10178
  r0 = 0x3
  r1 = *(u64 *)(r10 - 0xfd8)
  if r8 == r1 goto jmp_14c00
  r9 = 0x0
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0xa5 goto jmp_14c00
  w2 = *(u8 *)(r8 + 0xc4)
  if r2 > 0x2 goto jmp_14c00
  if r2 == 0x0 goto jmp_12700
  w2 = *(u8 *)(r8 + 0xc5)
  if r2 == 0x1 goto jmp_10ea8
  r2 = *(u64 *)(r8 + 0x98)
  if r2 == 0x0 goto jmp_10ea8
  r9 = 0xb
  r0 = 0x0
  goto jmp_14c00

jmp_fa20:
  if r5 == 0x12 goto jmp_ff70
  if r5 == 0x14 goto jmp_10188
  if r5 != 0x16 goto jmp_10248
  r9 = 0x0
  if r7 == 0x0 goto jmp_10570
  r0 = 0x3
  r1 = *(u64 *)(r8 + 0x50)
  if r1 != 0xa5 goto jmp_14c00
  w1 = *(u8 *)(r8 + 0xc4)
  if r1 > 0x2 goto jmp_14c00
  if r1 == 0x0 goto jmp_12638

jmp_fa78:
  r9 = 0x6
  r0 = 0x0
  goto jmp_14c00

jmp_fa90:
  if r3 == 0x1 goto jmp_8ca8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12e00
  *(u64 *)(r2 + 0x8) = r1
  goto jmp_8c88

jmp_fab8:
  r0 = 0x0
  r7 = 0x6
  r9 = r7
  goto jmp_14c00

jmp_fad8:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12b90
  *(u64 *)(r2 + 0x8) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12bd8

jmp_fb20:
  *(u64 *)(r2 + 0x10) = r1
  goto jmp_8c88

jmp_fb30:
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12ce8
  *(u64 *)(r2 + 0x8) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12d30

jmp_fb78:
  *(u64 *)(r2 + 0x10) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12d78

jmp_fbb0:
  *(u64 *)(r2 + 0x18) = r1
  r3 = *(u64 *)(r1 + 0x50)
  r1 += r3
  r1 += 0x2867
  r1 &= -0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 != 0xff goto jmp_12dc0

jmp_fbe8:
  *(u64 *)(r2 + 0x20) = r1
  goto jmp_8c88

jmp_fbf8:
  r3 = 0xc
  r0 = 0x0
  if r9 s< 0x23 goto jmp_11980
  w5 = *(u8 *)(r6 + 0x9)
  w1 = *(u8 *)(r6 + 0x2a)
  if r1 != 0x0 goto jmp_106e8
  r4 = 0x0
  goto jmp_10708

jmp_fc38:
  if r9 s< 0xa goto jmp_12828
  if r7 < 0x4 goto jmp_10178
  r9 = 0x0
  r1 = *(u64 *)(r8 + 0x50)
  if r1 != 0xa5 goto jmp_10288
  w4 = *(u8 *)(r8 + 0xc4)
  if r4 > 0x2 goto jmp_10288
  if r4 == 0x0 goto jmp_12700
  w2 = *(u8 *)(r6 + 0x11)
  r3 = *(u64 *)(r6 + 0x9)
  r1 = *(u64 *)(r10 - 0xfd0)
  if r8 == r1 goto jmp_133e8
  r5 = *(u64 *)(r1 + 0x50)
  if r5 != 0xa5 goto jmp_10288
  w5 = *(u8 *)(r1 + 0xc4)
  if r5 > 0x2 goto jmp_10288
  if r5 == 0x0 goto jmp_12700
  r0 = 0x0
  r9 = 0x11
  if r4 == 0x2 goto jmp_14c00
  if r5 == 0x2 goto jmp_14c00
  r9 = 0x1
  r4 = *(u64 *)(r8 + 0x98)
  if r4 < r3 goto jmp_14c00
  r9 = 0x3
  r6 = *(u64 *)(r8 + 0x58)
  r5 = *(u64 *)(r1 + 0x58)
  if r6 != r5 goto jmp_14c00
  *(u64 *)(r10 - 0x7d8) = r7
  r5 = *(u64 *)(r1 + 0x60)
  r7 = *(u64 *)(r8 + 0x60)
  if r7 != r5 goto jmp_14c00
  r5 = *(u64 *)(r1 + 0x68)
  r7 = *(u64 *)(r8 + 0x68)
  if r7 != r5 goto jmp_14c00
  r5 = *(u64 *)(r1 + 0x70)
  r7 = *(u64 *)(r8 + 0x70)
  if r7 != r5 goto jmp_14c00
  r5 = *(u64 *)(r10 - 0xfd8)
  r7 = *(u64 *)(r5 + 0x8)
  if r7 != r6 goto jmp_13728

jmp_fd80:
  r6 = *(u64 *)(r8 + 0x60)
  r7 = *(u64 *)(r5 + 0x10)
  if r7 != r6 goto jmp_13728
  r6 = *(u64 *)(r8 + 0x68)
  r7 = *(u64 *)(r5 + 0x18)
  if r7 != r6 goto jmp_13728
  r6 = *(u64 *)(r8 + 0x70)
  r7 = *(u64 *)(r5 + 0x20)
  r9 = 0x3
  if r7 != r6 goto jmp_14c00
  r0 = *(u64 *)(r5 + 0x50)
  if r0 != 0x52 goto jmp_15fa0
  w6 = *(u8 *)(r5 + 0x85)
  r7 = 0x3 ll
  if r6 == 0x1 goto jmp_13428
  r7 = 0x3
  r0 = 0x1a
  if r6 != 0x0 goto jmp_13438

jmp_fe18:
  r6 = r0
  r6 &= 0x1b
  if r6 == 0x1a goto jmp_13458
  goto jmp_14708

jmp_fe38:
  if r9 s< 0x9 goto jmp_8fc8
  if r7 < 0x3 goto jmp_10310
  r9 = 0x0
  r1 = *(u64 *)(r10 - 0xfd8)
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_10288
  w2 = *(u8 *)(r1 + 0xc4)
  if r2 > 0x2 goto jmp_10288
  if r2 == 0x0 goto jmp_12700
  r0 = 0x0
  if r2 == 0x2 goto jmp_13400
  w2 = *(u8 *)(r1 + 0xc5)
  if r2 == 0x1 goto jmp_13358
  r9 = 0x3
  r2 = *(u64 *)(r1 + 0x58)
  r4 = *(u64 *)(r8 + 0x8)
  if r4 != r2 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x60)
  r4 = *(u64 *)(r8 + 0x10)
  if r4 != r2 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x68)
  r4 = *(u64 *)(r8 + 0x18)
  if r4 != r2 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x70)
  r4 = *(u64 *)(r8 + 0x20)
  if r4 != r2 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x52 goto jmp_13410
  w2 = *(u8 *)(r8 + 0x85)
  r4 = 0x3 ll
  if r2 == 0x1 goto jmp_10be0
  r4 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_10bf0

jmp_ff50:
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_10c10
  goto jmp_14708

jmp_ff70:
  if r9 s< 0x21 goto jmp_102d0
  if r7 < 0x2 goto jmp_100b0
  *(u64 *)(r10 - 0x7e8) = r3
  r6 = *(u64 *)(r8 + 0x50)
  r1 = r10
  r1 += -0x1000
  call fn_16b58
  w1 = *(u32 *)(r10 - 0x1000)
  if r1 != 0x1 goto jmp_10dc8

jmp_ffb8:
  w9 = *(u32 *)(r10 - 0xff8)
  w0 = *(u32 *)(r10 - 0xffc)
  goto jmp_14c00

jmp_ffd0:
  if r7 < 0x3 goto jmp_10178
  r9 = 0x0
  if r7 != 0x3 goto jmp_10820
  r0 = 0xa
  goto jmp_14c00

jmp_fff8:
  if r9 s< 0xa goto jmp_12828
  if r7 < 0x3 goto jmp_100b0
  r0 = 0x3
  r9 = 0x0
  r1 = *(u64 *)(r8 + 0x50)
  if r1 != 0xa5 goto jmp_14c00
  w2 = *(u8 *)(r8 + 0xc4)
  if r2 > 0x2 goto jmp_14c00
  if r2 == 0x0 goto jmp_12700
  r1 = *(u64 *)(r10 - 0xfd8)
  r3 = *(u64 *)(r1 + 0x50)
  if r3 != 0x52 goto jmp_14c00
  w3 = *(u8 *)(r1 + 0x85)
  r4 = 0x3 ll
  if r3 == 0x1 goto jmp_10928
  r4 = 0x3
  r0 = 0x1a
  if r3 != 0x0 goto jmp_10938

jmp_10090:
  r3 = r0
  r3 &= 0x1b
  if r3 == 0x1a goto jmp_10958
  goto jmp_14708

jmp_100b0:
  r0 = 0xa
  goto jmp_14c00

jmp_100c0:
  if r9 s< 0x9 goto jmp_12828
  if r7 < 0x3 goto jmp_10178
  r0 = 0x3
  r9 = 0x0
  r1 = *(u64 *)(r8 + 0x50)
  if r1 != 0xa5 goto jmp_14c00
  w2 = *(u8 *)(r8 + 0xc4)
  if r2 > 0x2 goto jmp_14c00
  if r2 == 0x0 goto jmp_12700
  r1 = *(u64 *)(r10 - 0xfd8)
  r4 = *(u64 *)(r1 + 0x50)
  if r4 != 0x52 goto jmp_14c00
  w4 = *(u8 *)(r1 + 0x85)
  r5 = 0x3 ll
  if r4 == 0x1 goto jmp_10a90
  r5 = 0x3
  r0 = 0x1a
  if r4 != 0x0 goto jmp_10aa0

jmp_10158:
  r4 = r0
  r4 &= 0x1b
  if r4 == 0x1a goto jmp_10ac0
  goto jmp_14708

jmp_10178:
  r0 = 0xa
  goto jmp_14c00

jmp_10188:
  r3 = 0xc
  if r9 s< 0x23 goto jmp_102e8
  r2 = r9
  r9 = 0x0
  w4 = *(u8 *)(r6 + 0x9)
  w1 = *(u8 *)(r6 + 0x2a)
  if r1 == 0x0 goto jmp_101e8
  r0 = 0x0
  if r1 != 0x1 goto jmp_11980
  if r2 < 0x43 goto jmp_11980
  r9 = r6
  r9 += 0x2b

jmp_101e8:
  if r7 == 0x0 goto jmp_10db0
  *(u64 *)(r10 - 0x7e8) = r4
  r7 = *(u64 *)(r8 + 0x50)
  r1 = r10
  r1 += -0x1000
  call fn_16b58
  w1 = *(u32 *)(r10 - 0x1000)
  if r1 != 0x1 goto jmp_10e38
  w3 = *(u32 *)(r10 - 0xff8)
  w0 = *(u32 *)(r10 - 0xffc)
  r9 = r3
  goto jmp_14c00

jmp_10248:
  r9 += -0x1
  r1 = r10
  r1 += -0xfe0
  r2 = r7
  r4 = r9
  call fn_0030
  r9 = r1
  goto jmp_14c00

jmp_10288:
  r0 = 0x3
  goto jmp_14c00

jmp_10298:
  r7 = 0xc
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_102b8:
  r0 = 0xa
  r9 = r7
  goto jmp_14c00

jmp_102d0:
  r9 = 0xc
  r0 = 0x0
  goto jmp_14c00

jmp_102e8:
  r0 = 0x0
  r9 = r3
  goto jmp_14c00

jmp_10300:
  r0 = 0xa
  goto jmp_14c00

jmp_10310:
  r0 = 0xa
  goto jmp_14c00

jmp_10320:
  r4 = *(u64 *)(r1 + 0x5268)
  r3 = r4
  r3 += 0x7
  r3 &= -0x8
  r2 = r1
  r2 += r3
  r3 = *(u64 *)(r2 + 0x7a78)
  if r3 < 0x9 goto jmp_8c18
  w3 = *(u8 *)(r2 + 0x7a80)
  if r3 != 0x3 goto jmp_8c18
  r6 = 0x3
  r7 = 0x0
  w3 = *(u8 *)(r1 + 0xcc)
  if r3 > 0x2 goto jmp_11090
  if r3 == 0x0 goto jmp_16350
  w5 = *(u8 *)(r1 + 0x29d4)
  if r5 > 0x2 goto jmp_11090
  if r5 == 0x0 goto jmp_16350
  r6 = 0x0
  r7 = 0x11
  if r3 == 0x2 goto jmp_11090
  if r5 == 0x2 goto jmp_11090
  r3 = *(u64 *)(r2 + 0x7a81)
  r7 = 0x1
  r2 = *(u64 *)(r1 + 0xa0)
  if r2 < r3 goto jmp_11090
  r5 = *(u64 *)(r1 + 0x2968)
  r0 = *(u64 *)(r1 + 0x60)
  if r0 != r5 goto jmp_11088
  r5 = *(u64 *)(r1 + 0x2970)
  r0 = *(u64 *)(r1 + 0x68)
  if r0 != r5 goto jmp_11088
  r5 = *(u64 *)(r1 + 0x2978)
  r0 = *(u64 *)(r1 + 0x70)
  if r0 != r5 goto jmp_11088
  r5 = *(u64 *)(r1 + 0x2980)
  r0 = *(u64 *)(r1 + 0x78)
  if r0 != r5 goto jmp_11088
  w5 = *(u8 *)(r1 + 0xa8)
  if r5 != 0x1 goto jmp_10e28
  r5 = *(u64 *)(r1 + 0x5220)
  r0 = *(u64 *)(r1 + 0xac)
  if r0 != r5 goto jmp_113c8
  r5 = *(u64 *)(r1 + 0x5228)
  r8 = *(u64 *)(r1 + 0xb4)
  if r8 != r5 goto jmp_113c0
  r5 = *(u64 *)(r1 + 0x5230)
  r8 = *(u64 *)(r1 + 0xbc)
  if r8 != r5 goto jmp_113c0
  r8 = *(u64 *)(r1 + 0x5238)
  r9 = *(u64 *)(r1 + 0xc4)
  r5 = r0
  if r9 != r8 goto jmp_113c8
  if r4 != 0x163 goto jmp_12998
  r4 = *(u64 *)(r1 + 0x5240)
  r5 = -0x21708a111e0922fa ll
  if r4 == r5 goto jmp_12938
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_12998
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_12998
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_12998
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x56ff00817a0a73c6 ll
  if r4 != r5 goto jmp_12998
  goto jmp_151f0

jmp_10570:
  r0 = 0xa
  goto jmp_14c00

jmp_10580:
  r2 = *(u64 *)(r10 - 0xfd8)
  r1 = *(u64 *)(r2 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_12ea8
  r1 = *(u64 *)(r2 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_12ea8
  r1 = *(u64 *)(r2 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_12ea8
  r1 = *(u64 *)(r2 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 != r3 goto jmp_12ea8
  r9 = *(u64 *)(r8 + 0x50)
  r1 = *(u64 *)(r2 + 0x58)
  r3 = r9
  r3 += 0x80
  r1 *= r3
  r6 = *(u64 *)(r2 + 0x60)
  r2 = 0x3ff0000000000000 ll
  if r6 == r2 goto jmp_10670
  r2 = 0x4000000000000000 ll
  if r6 != r2 goto jmp_94a0

jmp_10668:
  r1 <<= 0x1

jmp_10670:
  if r9 != 0xa5 goto jmp_10d70
  w2 = *(u8 *)(r8 + 0xc4)
  if r2 > 0x2 goto jmp_10d70
  if r2 == 0x0 goto jmp_135d0
  r0 = 0x0
  r9 = 0x13
  w2 = *(u8 *)(r8 + 0xc5)
  if r2 != 0x1 goto jmp_14c00
  r9 = 0xe
  r2 = *(u64 *)(r8 + 0x48)
  if r2 < r1 goto jmp_14c00
  *(u64 *)(r8 + 0xc9) = r1
  r2 -= r1
  *(u64 *)(r8 + 0x98) = r2
  goto jmp_12638

jmp_106e8:
  if r1 != 0x1 goto jmp_11980
  if r9 < 0x43 goto jmp_11980
  r4 = r6
  r4 += 0x2b

jmp_10708:
  if r7 <= 0x1 goto jmp_10da0
  r0 = 0x1
  r2 = *(u64 *)(r10 - 0xfd8)
  r1 = *(u64 *)(r2 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_10da8
  r1 = *(u64 *)(r2 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_10da8
  r1 = *(u64 *)(r2 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_10da8
  r1 = *(u64 *)(r2 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 != r3 goto jmp_10da8
  r9 = *(u64 *)(r8 + 0x50)
  r3 = r9
  r3 += 0x80
  r1 = *(u64 *)(r2 + 0x58)
  r1 *= r3
  r3 = *(u64 *)(r8 + 0x48)
  *(u64 *)(r10 - 0x7e8) = r3
  r7 = *(u64 *)(r2 + 0x60)
  r2 = 0x3ff0000000000000 ll
  if r7 == r2 goto jmp_111e8
  r2 = 0x4000000000000000 ll
  if r7 != r2 goto jmp_110f0
  r1 <<= 0x1
  goto jmp_111e8

jmp_10820:
  r0 = 0x1
  r2 = *(u64 *)(r10 - 0xfc8)
  r1 = *(u64 *)(r2 + 0x8)
  r3 = 0x515c2c1917d5a706 ll
  if r1 != r3 goto jmp_14c00
  r1 = *(u64 *)(r2 + 0x10)
  r3 = 0x7ff14a3d4cc98c21 ll
  if r1 != r3 goto jmp_14c00
  r1 = *(u64 *)(r2 + 0x18)
  r3 = 0x44fda19b08eeda58 ll
  if r1 != r3 goto jmp_14c00
  r1 = *(u64 *)(r2 + 0x20)
  r3 = 0x8ad9dbe3 ll
  if r1 != r3 goto jmp_14c00
  r9 = *(u64 *)(r8 + 0x50)
  r7 = *(u64 *)(r10 - 0xfd0)
  r3 = r9
  r3 += 0x80
  r1 = *(u64 *)(r2 + 0x58)
  r1 *= r3
  r6 = *(u64 *)(r2 + 0x60)
  r2 = 0x3ff0000000000000 ll
  if r6 == r2 goto jmp_10fb0
  r2 = 0x4000000000000000 ll
  if r6 != r2 goto jmp_10ed0
  r1 <<= 0x1
  goto jmp_10fb0

jmp_10928:
  r0 = 0x1a
  if r3 == 0x0 goto jmp_10090

jmp_10938:
  r0 = r4
  r3 = r0
  r3 &= 0x1b
  if r3 != 0x1a goto jmp_14708

jmp_10958:
  r3 = data_0000 ll
  if r0 < r3 goto jmp_168b8
  r0 = 0x0
  if r2 == 0x2 goto jmp_13400
  w2 = *(u8 *)(r8 + 0xc5)
  if r2 == 0x1 goto jmp_13358
  r3 = *(u64 *)(r6 + 0x9)
  r9 = 0x1
  r4 = *(u64 *)(r8 + 0x98)
  if r4 < r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x58)
  r5 = *(u64 *)(r1 + 0x8)
  if r5 != r2 goto jmp_13728
  r2 = *(u64 *)(r8 + 0x60)
  r5 = *(u64 *)(r1 + 0x10)
  if r5 != r2 goto jmp_13758
  r2 = *(u64 *)(r8 + 0x68)
  r5 = *(u64 *)(r1 + 0x18)
  if r5 != r2 goto jmp_13758
  r2 = *(u64 *)(r8 + 0x70)
  r5 = *(u64 *)(r1 + 0x20)
  if r5 != r2 goto jmp_13758
  w2 = *(u8 *)(r6 + 0x11)
  w5 = *(u8 *)(r1 + 0x84)
  if r2 != r5 goto jmp_13768
  r2 = *(u64 *)(r8 + 0x78)
  r5 = 0x6011348d72903300 ll
  *(u64 *)(r10 - 0x7d8) = r7
  if r2 == r5 goto jmp_11eb0
  if r2 != 0x0 goto jmp_11f10
  r5 = *(u64 *)(r8 + 0x80)
  if r5 != 0x0 goto jmp_11f10
  r5 = *(u64 *)(r8 + 0x88)
  if r5 != 0x0 goto jmp_11f10
  r5 = *(u64 *)(r8 + 0x90)
  if r5 != 0x0 goto jmp_11f10
  goto jmp_12608

jmp_10a90:
  r0 = 0x1a
  if r4 == 0x0 goto jmp_10158

jmp_10aa0:
  r0 = r5
  r4 = r0
  r4 &= 0x1b
  if r4 != 0x1a goto jmp_14708

jmp_10ac0:
  r4 = data_0000 ll
  if r0 < r4 goto jmp_168b8
  r0 = 0x0
  if r2 == 0x2 goto jmp_13400
  w2 = *(u8 *)(r8 + 0xc5)
  if r2 == 0x1 goto jmp_13358
  r3 = *(u64 *)(r3 + 0x0)
  r9 = 0x1
  r4 = *(u64 *)(r8 + 0x98)
  if r4 < r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x58)
  r5 = *(u64 *)(r1 + 0x8)
  if r5 != r2 goto jmp_13728
  r2 = *(u64 *)(r8 + 0x60)
  r5 = *(u64 *)(r1 + 0x10)
  if r5 != r2 goto jmp_13728
  r2 = *(u64 *)(r8 + 0x68)
  r5 = *(u64 *)(r1 + 0x18)
  if r5 != r2 goto jmp_13728
  r2 = *(u64 *)(r8 + 0x70)
  r5 = *(u64 *)(r1 + 0x20)
  if r5 != r2 goto jmp_13728
  r2 = *(u64 *)(r8 + 0x78)
  r5 = 0x6011348d72903300 ll
  *(u64 *)(r10 - 0x7d8) = r7
  if r2 == r5 goto jmp_11bf8
  if r2 != 0x0 goto jmp_11c58
  r5 = *(u64 *)(r8 + 0x80)
  if r5 != 0x0 goto jmp_11c58
  r5 = *(u64 *)(r8 + 0x88)
  if r5 != 0x0 goto jmp_11c58
  r5 = *(u64 *)(r8 + 0x90)
  if r5 != 0x0 goto jmp_11c58
  goto jmp_12558

jmp_10be0:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_ff50

jmp_10bf0:
  r0 = r4
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_14708

jmp_10c10:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r0 = 0x0
  r9 = 0x5
  w2 = *(u8 *)(r8 + 0x58)
  if r2 != 0x1 goto jmp_14c00
  r9 = 0x4
  r4 = *(u64 *)(r10 - 0xfd0)
  r2 = *(u64 *)(r4 + 0x8)
  r5 = *(u64 *)(r8 + 0x5c)
  if r5 != r2 goto jmp_14c00
  r2 = *(u64 *)(r4 + 0x10)
  r5 = *(u64 *)(r8 + 0x64)
  if r5 != r2 goto jmp_14c00
  r2 = *(u64 *)(r4 + 0x18)
  r5 = *(u64 *)(r8 + 0x6c)
  if r5 != r2 goto jmp_14c00
  r2 = *(u64 *)(r4 + 0x20)
  r5 = *(u64 *)(r8 + 0x74)
  if r5 != r2 goto jmp_14c00
  r3 = *(u64 *)(r3 + 0x0)
  r2 = *(u64 *)(r4 + 0x50)
  if r2 != 0x163 goto jmp_12460
  r2 = *(u64 *)(r4 + 0x28)
  r5 = -0x21708a111e0922fa ll
  if r2 == r5 goto jmp_12400
  r5 = -0x6c5e9a281e0922fa ll
  if r2 != r5 goto jmp_12460
  r2 = *(u64 *)(r4 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r2 != r5 goto jmp_12460
  r2 = *(u64 *)(r4 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r2 != r5 goto jmp_12460
  r2 = *(u64 *)(r4 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r2 != r5 goto jmp_12460
  goto jmp_13e10

jmp_10d70:
  r0 = 0x3
  r9 = 0x0
  goto jmp_14c00

jmp_10d88:
  r0 = 0x1a
  r9 = r7
  goto jmp_14c00

jmp_10da0:
  r0 = 0xa

jmp_10da8:
  goto jmp_11980

jmp_10db0:
  r0 = 0xa
  r9 = r3
  goto jmp_14c00

jmp_10dc8:
  r6 += 0x80
  r1 = *(u64 *)(r10 - 0xff8)
  r1 *= r6
  r6 = *(u64 *)(r10 - 0xff0)
  r2 = 0x3ff0000000000000 ll
  if r6 == r2 goto jmp_115b0
  r2 = 0x4000000000000000 ll
  if r6 != r2 goto jmp_114e8
  r1 <<= 0x1
  goto jmp_115b0

jmp_10e28:
  r5 = *(u64 *)(r1 + 0x5220)
  goto jmp_113c8

jmp_10e38:
  r7 += 0x80
  r1 = *(u64 *)(r10 - 0xff8)
  r1 *= r7
  r7 = *(u64 *)(r10 - 0xff0)
  r4 = *(u64 *)(r8 + 0x48)
  r2 = 0x3ff0000000000000 ll
  if r7 == r2 goto jmp_10e98
  r2 = 0x4000000000000000 ll
  if r7 != r2 goto jmp_11790
  r1 <<= 0x1

jmp_10e98:
  r5 = *(u64 *)(r10 - 0x7e8)
  goto jmp_11880

jmp_10ea8:
  w2 = *(u8 *)(r8 + 0xd9)
  if r2 == 0x1 goto jmp_11340
  r2 = r8
  r2 += 0x78
  goto jmp_11350

jmp_10ed0:
  *(u64 *)(r10 - 0x7e8) = r7
  call fn_1b938
  r1 = r6
  r2 = r0
  call fn_1bbf0
  r6 = r0
  r1 = r6
  call fn_1bb38
  r7 = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x7e0) = r1
  r1 = r6
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_10f60
  *(u64 *)(r10 - 0x7e0) = r7

jmp_10f60:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_10fa8
  r1 = *(u64 *)(r10 - 0x7e0)

jmp_10fa8:
  r7 = *(u64 *)(r10 - 0x7e8)

jmp_10fb0:
  r2 = *(u64 *)(r10 - 0xfd8)
  r3 = *(u64 *)(r2 + 0x8)
  r4 = -0x7b7e5401a87764fa ll
  if r3 != r4 goto jmp_11040
  r3 = *(u64 *)(r2 + 0x10)
  r4 = 0x35c01846637f68fb ll
  if r3 != r4 goto jmp_11040
  r3 = *(u64 *)(r2 + 0x18)
  r4 = 0x553beb1adc39c4da ll
  if r3 != r4 goto jmp_11040
  r6 = 0x1
  r3 = *(u64 *)(r2 + 0x20)
  r4 = 0x100000000f0a098 ll
  if r3 == r4 goto jmp_11048

jmp_11040:
  r6 = 0x0

jmp_11048:
  r0 = 0x3
  if r9 != 0xa5 goto jmp_13748
  w3 = *(u8 *)(r8 + 0xc4)
  if r3 > 0x2 goto jmp_14c00
  r0 = 0x0
  if r3 == 0x0 goto jmp_13738
  r9 = 0x6
  goto jmp_14c00

jmp_11088:
  r7 = 0x3

jmp_11090:
  r1 = r6
  r2 = r7
  call fn_7fe8
  r1 = r6
  r2 = r7
  goto jmp_8fa8

jmp_110c0:
  if r2 != 0x1 goto jmp_110e0
  r0 = 0x0
  r9 = 0x6
  goto jmp_14c00

jmp_110e0:
  r9 = r7
  goto jmp_14c00

jmp_110f0:
  *(u64 *)(r10 - 0x7d8) = r4
  *(u64 *)(r10 - 0x7e0) = r5
  call fn_1b938
  r1 = r7
  r2 = r0
  call fn_1bbf0
  r7 = r0
  r1 = r7
  call fn_1bb38
  *(u64 *)(r10 - 0x7c8) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x7d0) = r1
  r1 = r7
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_11190
  r1 = *(u64 *)(r10 - 0x7c8)
  *(u64 *)(r10 - 0x7d0) = r1

jmp_11190:
  r1 = r7
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_111d8
  r1 = *(u64 *)(r10 - 0x7d0)

jmp_111d8:
  r5 = *(u64 *)(r10 - 0x7e0)
  r4 = *(u64 *)(r10 - 0x7d8)

jmp_111e8:
  r0 = 0x3
  if r9 != 0x52 goto jmp_13368
  w2 = *(u8 *)(r8 + 0x85)
  if r2 == 0x1 goto jmp_11320
  if r2 != 0x0 goto jmp_11980
  r3 = 0x0
  r0 = 0x0
  r2 = *(u64 *)(r10 - 0x7e8)
  if r2 < r1 goto jmp_11980
  r6 += 0xa
  *(u8 *)(r8 + 0x58) = 0x1
  *(u8 *)(r8 + 0x85) = 0x1
  r1 = *(u64 *)(r6 + 0x0)
  r2 = *(u64 *)(r6 + 0x8)
  r3 = *(u64 *)(r6 + 0x10)
  r0 = r4
  r4 = *(u64 *)(r6 + 0x18)
  *(u64 *)(r8 + 0x74) = r4
  r4 = r0
  *(u64 *)(r8 + 0x6c) = r3
  *(u64 *)(r8 + 0x64) = r2
  *(u64 *)(r8 + 0x5c) = r1
  *(u8 *)(r8 + 0x84) = w5
  r0 = 0x1a
  if r4 == 0x0 goto jmp_10da8
  *(u8 *)(r8 + 0x86) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r3 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r8 + 0xa2) = r4
  *(u64 *)(r8 + 0x9a) = r3
  *(u64 *)(r8 + 0x92) = r2
  *(u64 *)(r8 + 0x8a) = r1
  goto jmp_10da8

jmp_11300:
  r7 = 0x3
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_11320:
  r0 = 0x0
  r3 = 0x6
  r9 = r3
  goto jmp_14c00

jmp_11340:
  r2 = r8
  r2 += 0xdd

jmp_11350:
  r3 = *(u64 *)(r8 + 0x78)
  r4 = 0x6011348d72903300 ll
  if r3 == r4 goto jmp_119c8
  if r3 != 0x0 goto jmp_11ab0
  r3 = *(u64 *)(r8 + 0x80)
  if r3 != 0x0 goto jmp_11ab0
  r3 = *(u64 *)(r8 + 0x88)
  if r3 != 0x0 goto jmp_11ab0
  r3 = *(u64 *)(r8 + 0x90)
  if r3 != 0x0 goto jmp_11ab0
  goto jmp_11a28

jmp_113b0:
  r9 = r7
  goto jmp_14c00

jmp_113c0:
  r5 = r0

jmp_113c8:
  r7 = 0x4
  r0 = *(u64 *)(r1 + 0x80)
  if r0 != r5 goto jmp_11090
  r5 = *(u64 *)(r1 + 0x5228)
  r0 = *(u64 *)(r1 + 0x88)
  if r0 != r5 goto jmp_11090
  r5 = *(u64 *)(r1 + 0x5230)
  r0 = *(u64 *)(r1 + 0x90)
  if r0 != r5 goto jmp_11090
  r5 = *(u64 *)(r1 + 0x5238)
  r0 = *(u64 *)(r1 + 0x98)
  if r0 != r5 goto jmp_11090
  if r4 != 0x163 goto jmp_11700
  r4 = *(u64 *)(r1 + 0x5240)
  r5 = -0x21708a111e0922fa ll
  if r4 == r5 goto jmp_116a0
  r5 = -0x6c5e9a281e0922fa ll
  if r4 != r5 goto jmp_11700
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x53861431b91e3427 ll
  if r4 != r5 goto jmp_11700
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r4 != r5 goto jmp_11700
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x56ff00817a0a73c6 ll
  if r4 != r5 goto jmp_11700
  goto jmp_13600

jmp_114d0:
  w9 = *(u32 *)(r10 - 0xff8)
  w0 = *(u32 *)(r10 - 0xffc)
  goto jmp_14c00

jmp_114e8:
  call fn_1b938
  r1 = r6
  r2 = r0
  call fn_1bbf0
  r6 = r0
  r1 = r6
  call fn_1bb38
  r7 = r0
  r9 = 0x0
  r1 = r6
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_11568
  r9 = r7

jmp_11568:
  r1 = r6
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_115b0
  r1 = r9

jmp_115b0:
  r2 = *(u64 *)(r10 - 0xfd8)
  r3 = *(u64 *)(r2 + 0x8)
  r4 = -0x7b7e5401a87764fa ll
  if r3 != r4 goto jmp_11640
  r3 = *(u64 *)(r2 + 0x10)
  r4 = 0x35c01846637f68fb ll
  if r3 != r4 goto jmp_11640
  r3 = *(u64 *)(r2 + 0x18)
  r4 = 0x553beb1adc39c4da ll
  if r3 != r4 goto jmp_11640
  r5 = 0x1
  r3 = *(u64 *)(r2 + 0x20)
  r4 = 0x100000000f0a098 ll
  if r3 == r4 goto jmp_11648

jmp_11640:
  r5 = 0x0

jmp_11648:
  r0 = 0x3
  r3 = *(u64 *)(r8 + 0x50)
  if r3 != 0xa5 goto jmp_11690
  w3 = *(u8 *)(r8 + 0xc4)
  if r3 > 0x2 goto jmp_14c00
  if r3 != 0x0 goto jmp_fa78
  r0 = 0x0
  r6 = *(u64 *)(r8 + 0x48)
  if r6 >= r1 goto jmp_14730

jmp_11690:
  r9 = 0x0
  goto jmp_14c00

jmp_116a0:
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x2532931b43a2bde8 ll
  if r4 != r5 goto jmp_11700
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = 0x270db9834dfc1ab6 ll
  if r4 != r5 goto jmp_11700
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x3745e27d7064202 ll
  if r4 == r5 goto jmp_13600

jmp_11700:
  w4 = *(u8 *)(r1 + 0x5219)
  if r4 == 0x0 goto jmp_13678

jmp_11710:
  if r3 == 0x0 goto jmp_129e8

jmp_11718:
  r2 -= r3
  *(u64 *)(r1 + 0xa0) = r2
  r2 = *(u64 *)(r1 + 0x29a8)
  r2 += r3
  *(u64 *)(r1 + 0x29a8) = r2
  r2 = 0x0
  w4 = *(u8 *)(r1 + 0xcd)
  if r4 != 0x1 goto jmp_14c28
  r4 = *(u64 *)(r1 + 0x50)
  r4 -= r3
  *(u64 *)(r1 + 0x50) = r4
  r4 = *(u64 *)(r1 + 0x2958)
  r4 += r3
  *(u64 *)(r1 + 0x2958) = r4
  goto jmp_14c28

jmp_11790:
  *(u64 *)(r10 - 0x7e0) = r4
  call fn_1b938
  r1 = r7
  r2 = r0
  call fn_1bbf0
  r7 = r0
  r1 = r7
  call fn_1bb38
  *(u64 *)(r10 - 0x7d0) = r0
  r1 = 0x0
  *(u64 *)(r10 - 0x7d8) = r1
  r1 = r7
  r2 = 0x0
  call fn_1bc00
  r0 <<= 0x20
  r0 s>>= 0x20
  if r0 s< 0x0 goto jmp_11828
  r1 = *(u64 *)(r10 - 0x7d0)
  *(u64 *)(r10 - 0x7d8) = r1

jmp_11828:
  r1 = r7
  r2 = 0x43efffffffffffff ll
  call fn_1b060
  r0 <<= 0x20
  r0 s>>= 0x20
  r1 = -0x1
  if r0 s> 0x0 goto jmp_11870
  r1 = *(u64 *)(r10 - 0x7d8)

jmp_11870:
  r5 = *(u64 *)(r10 - 0x7e8)
  r4 = *(u64 *)(r10 - 0x7e0)

jmp_11880:
  r0 = 0x3
  r2 = *(u64 *)(r8 + 0x50)
  if r2 != 0x52 goto jmp_13368
  w2 = *(u8 *)(r8 + 0x85)
  if r2 == 0x1 goto jmp_11990
  if r2 != 0x0 goto jmp_11980
  r3 = 0x0
  r0 = 0x0
  if r4 < r1 goto jmp_11980
  r6 += 0xa
  *(u8 *)(r8 + 0x58) = 0x1
  *(u8 *)(r8 + 0x85) = 0x1
  r1 = *(u64 *)(r6 + 0x0)
  r2 = *(u64 *)(r6 + 0x8)
  r3 = *(u64 *)(r6 + 0x10)
  r4 = *(u64 *)(r6 + 0x18)
  *(u64 *)(r8 + 0x74) = r4
  *(u64 *)(r8 + 0x6c) = r3
  *(u64 *)(r8 + 0x64) = r2
  *(u64 *)(r8 + 0x5c) = r1
  *(u8 *)(r8 + 0x84) = w5
  if r9 == 0x0 goto jmp_11978
  *(u8 *)(r8 + 0x86) = 0x1
  r1 = *(u64 *)(r9 + 0x0)
  r2 = *(u64 *)(r9 + 0x8)
  r3 = *(u64 *)(r9 + 0x10)
  r4 = *(u64 *)(r9 + 0x18)
  *(u64 *)(r8 + 0xa2) = r4
  *(u64 *)(r8 + 0x9a) = r3
  *(u64 *)(r8 + 0x92) = r2
  *(u64 *)(r8 + 0x8a) = r1

jmp_11978:
  r0 = 0x1a

jmp_11980:
  r9 = r3
  goto jmp_14c00

jmp_11990:
  r3 = 0x6
  r0 = 0x0
  r9 = r3
  goto jmp_14c00

jmp_119b0:
  r1 = -0x100000000 ll
  goto jmp_121c0

jmp_119c8:
  r3 = *(u64 *)(r8 + 0x80)
  r4 = -0x24ff0040ee364287 ll
  if r3 != r4 goto jmp_11ab0
  r3 = *(u64 *)(r8 + 0x88)
  r4 = -0x5963083332d1b22c ll
  if r3 != r4 goto jmp_11ab0
  r3 = *(u64 *)(r8 + 0x90)
  r4 = 0xe13800e1 ll
  if r3 != r4 goto jmp_11ab0

jmp_11a28:
  r2 = *(u64 *)(r1 + 0x8)
  r3 = 0x6011348d72903300 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x10)
  r3 = -0x24ff0040ee364287 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x18)
  r3 = -0x5963083332d1b22c ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x20)
  r3 = 0xe13800e1 ll
  if r2 == r3 goto jmp_123b0
  goto jmp_14c00

jmp_11ab0:
  r0 = 0x0
  r9 = 0x4
  r3 = *(u64 *)(r10 - 0xfd0)
  r4 = *(u64 *)(r3 + 0x8)
  r5 = *(u64 *)(r2 + 0x0)
  if r5 != r4 goto jmp_14c00
  r4 = *(u64 *)(r3 + 0x10)
  r5 = *(u64 *)(r2 + 0x8)
  if r5 != r4 goto jmp_14c00
  r4 = *(u64 *)(r3 + 0x18)
  r5 = *(u64 *)(r2 + 0x10)
  if r5 != r4 goto jmp_14c00
  r4 = *(u64 *)(r3 + 0x20)
  r2 = *(u64 *)(r2 + 0x18)
  if r2 != r4 goto jmp_14c00
  r2 = *(u64 *)(r3 + 0x50)
  if r2 != 0x163 goto jmp_123a0
  r2 = *(u64 *)(r3 + 0x28)
  r4 = -0x21708a111e0922fa ll
  if r2 == r4 goto jmp_12340
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_123a0
  r2 = *(u64 *)(r3 + 0x30)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_123a0
  r2 = *(u64 *)(r3 + 0x38)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_123a0
  r2 = *(u64 *)(r3 + 0x40)
  r4 = -0x56ff00817a0a73c6 ll
  if r2 != r4 goto jmp_123a0
  goto jmp_13948

jmp_11bd8:
  r7 = 0x0
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_11bf8:
  r5 = *(u64 *)(r8 + 0x80)
  r6 = -0x24ff0040ee364287 ll
  if r5 != r6 goto jmp_11c58
  r5 = *(u64 *)(r8 + 0x88)
  r6 = -0x5963083332d1b22c ll
  if r5 != r6 goto jmp_11c58
  r5 = *(u64 *)(r8 + 0x90)
  r6 = 0xe13800e1 ll
  if r5 == r6 goto jmp_12558

jmp_11c58:
  r5 = r10
  r5 += -0xfc8
  *(u64 *)(r10 - 0x7e8) = r5
  r5 = *(u64 *)(r10 - 0xfd0)
  w7 = *(u8 *)(r8 + 0xa0)
  if r7 != 0x1 goto jmp_11d98
  r7 = *(u64 *)(r5 + 0x8)
  r9 = *(u64 *)(r8 + 0xa4)
  if r7 != r9 goto jmp_11da0
  r9 = *(u64 *)(r8 + 0xac)
  r6 = *(u64 *)(r5 + 0x10)
  if r6 != r9 goto jmp_11da0
  r6 = *(u64 *)(r8 + 0xb4)
  r9 = *(u64 *)(r5 + 0x18)
  if r9 != r6 goto jmp_11da0
  r6 = *(u64 *)(r8 + 0xbc)
  r9 = *(u64 *)(r5 + 0x20)
  if r9 != r6 goto jmp_11da0
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_13068
  r2 = *(u64 *)(r5 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_13008
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_13068
  r2 = *(u64 *)(r5 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_13068
  r2 = *(u64 *)(r5 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_13068
  r2 = *(u64 *)(r5 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 != r6 goto jmp_13068
  goto jmp_152e0

jmp_11d98:
  r7 = *(u64 *)(r5 + 0x8)

jmp_11da0:
  r9 = 0x4
  if r2 != r7 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x10)
  r6 = *(u64 *)(r8 + 0x80)
  if r6 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x18)
  r6 = *(u64 *)(r8 + 0x88)
  r7 = *(u64 *)(r10 - 0x7d8)
  if r6 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x20)
  r6 = *(u64 *)(r8 + 0x90)
  if r6 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_12548
  r2 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_124e8
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_12548
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_12548
  r2 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_12548
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_12548
  goto jmp_14110

jmp_11eb0:
  r5 = *(u64 *)(r8 + 0x80)
  r6 = -0x24ff0040ee364287 ll
  if r5 != r6 goto jmp_11f10
  r5 = *(u64 *)(r8 + 0x88)
  r6 = -0x5963083332d1b22c ll
  if r5 != r6 goto jmp_11f10
  r5 = *(u64 *)(r8 + 0x90)
  r6 = 0xe13800e1 ll
  if r5 == r6 goto jmp_12608

jmp_11f10:
  r5 = r10
  r5 += -0xfc8
  *(u64 *)(r10 - 0x7e8) = r5
  r5 = *(u64 *)(r10 - 0xfd0)
  w7 = *(u8 *)(r8 + 0xa0)
  if r7 != 0x1 goto jmp_12050
  r7 = *(u64 *)(r5 + 0x8)
  r9 = *(u64 *)(r8 + 0xa4)
  if r7 != r9 goto jmp_12058
  r9 = *(u64 *)(r8 + 0xac)
  r6 = *(u64 *)(r5 + 0x10)
  if r6 != r9 goto jmp_12058
  r6 = *(u64 *)(r8 + 0xb4)
  r9 = *(u64 *)(r5 + 0x18)
  if r9 != r6 goto jmp_12058
  r6 = *(u64 *)(r8 + 0xbc)
  r9 = *(u64 *)(r5 + 0x20)
  if r9 != r6 goto jmp_12058
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_13120
  r2 = *(u64 *)(r5 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_130c0
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_13120
  r2 = *(u64 *)(r5 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_13120
  r2 = *(u64 *)(r5 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_13120
  r2 = *(u64 *)(r5 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 != r6 goto jmp_13120
  goto jmp_15608

jmp_12050:
  r7 = *(u64 *)(r5 + 0x8)

jmp_12058:
  r9 = 0x4
  if r2 != r7 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x10)
  r6 = *(u64 *)(r8 + 0x80)
  if r6 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x18)
  r6 = *(u64 *)(r8 + 0x88)
  r7 = *(u64 *)(r10 - 0x7d8)
  if r6 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x20)
  r6 = *(u64 *)(r8 + 0x90)
  if r6 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_125f8
  r2 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_12598
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_125f8
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_125f8
  r2 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_125f8
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_125f8
  goto jmp_14410

jmp_12168:
  r7 = 0x0
  r0 = 0xa
  r9 = r7
  goto jmp_14c00

jmp_12188:
  r1 = -0x100000000 ll
  r9 = *(u64 *)(r10 - 0x780)
  goto jmp_121c0

jmp_121a8:
  r1 = -0x100000000 ll
  r9 = *(u64 *)(r10 - 0x760)

jmp_121c0:
  r9 &= r1
  r0 = 0x3
  goto jmp_14c00

jmp_121d8:
  r0 = 0xa
  r9 = r7
  goto jmp_14c00

jmp_121f0:
  r0 = 0x0
  r7 = 0xc
  r9 = r7
  goto jmp_14c00

jmp_12210:
  r1 = -0x100000000 ll
  r3 &= r1
  r0 = 0x3
  r9 = r3
  goto jmp_14c00

jmp_12240:
  r6 = 0x1a
  if r2 == 0x0 goto jmp_8a68

jmp_12250:
  r6 = r8
  r2 = r6
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_8a80

jmp_12270:
  r2 = 0x0
  r1 = r6
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 == 0x1a goto jmp_14c28
  goto jmp_136d8

jmp_122a0:
  r1 = -0x100000000 ll
  r9 &= r1
  goto jmp_14c00

jmp_122c0:
  r7 = 0x11
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_122e0:
  r7 = 0x13
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12300:
  r7 = 0x1
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12320:
  r7 = 0xe
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12340:
  r2 = *(u64 *)(r3 + 0x30)
  r4 = -0x2532931b43a2bde8 ll
  if r2 != r4 goto jmp_123a0
  r2 = *(u64 *)(r3 + 0x38)
  r4 = 0x270db9834dfc1ab6 ll
  if r2 != r4 goto jmp_123a0
  r2 = *(u64 *)(r3 + 0x40)
  r4 = -0x3745e27d7064202 ll
  if r2 == r4 goto jmp_13948

jmp_123a0:
  w2 = *(u8 *)(r3 + 0x1)
  if r2 == 0x0 goto jmp_15e90

jmp_123b0:
  r2 = *(u64 *)(r8 + 0x48)
  r3 = *(u64 *)(r1 + 0x48)
  r3 += r2
  *(u64 *)(r1 + 0x48) = r3
  r8 += 0x28
  r1 = r8
  r2 = 0x0
  r3 = 0x30
  call sol_memset_
  goto jmp_14bf8

jmp_12400:
  r2 = *(u64 *)(r4 + 0x30)
  r5 = -0x2532931b43a2bde8 ll
  if r2 != r5 goto jmp_12460
  r2 = *(u64 *)(r4 + 0x38)
  r5 = 0x270db9834dfc1ab6 ll
  if r2 != r5 goto jmp_12460
  r2 = *(u64 *)(r4 + 0x40)
  r5 = -0x3745e27d7064202 ll
  if r2 == r5 goto jmp_13e10

jmp_12460:
  w2 = *(u8 *)(r4 + 0x1)
  if r2 == 0x0 goto jmp_14c88

jmp_12470:
  if r3 == 0x0 goto jmp_14af0
  r5 = *(u64 *)(r8 + 0x7c)
  r2 = r5
  r2 += r3
  r0 = 0x0
  r4 = 0x1
  if r2 < r5 goto jmp_124b0
  r4 = 0x0

jmp_124b0:
  r4 &= 0x1
  if r4 != 0x0 goto jmp_14720
  *(u64 *)(r8 + 0x7c) = r2
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r3
  *(u64 *)(r1 + 0x98) = r2
  goto jmp_14bf8

jmp_124e8:
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_12548
  r2 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_12548
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_14110

jmp_12548:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_15e90

jmp_12558:
  if r3 == 0x0 goto jmp_15d78
  r4 -= r3
  *(u64 *)(r8 + 0x98) = r4
  r2 = *(u64 *)(r1 + 0x7c)
  r2 -= r3
  *(u64 *)(r1 + 0x7c) = r2
  r0 = 0x1a
  goto jmp_14c00

jmp_12598:
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_125f8
  r2 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_125f8
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_14410

jmp_125f8:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_15e90

jmp_12608:
  if r3 == 0x0 goto jmp_13d00
  r4 -= r3
  *(u64 *)(r8 + 0x98) = r4
  r2 = *(u64 *)(r1 + 0x7c)
  r2 -= r3
  *(u64 *)(r1 + 0x7c) = r2

jmp_12638:
  r0 = 0x1a
  goto jmp_14c00

jmp_12648:
  r7 = 0x1
  r9 = r7
  goto jmp_14c00

jmp_12660:
  r7 = 0x5
  r9 = r7
  goto jmp_14c00

jmp_12678:
  r7 = 0xb
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12698:
  r7 = 0x3
  r6 = 0x0
  goto jmp_11090

jmp_126b0:
  r5 = *(u64 *)(r1 + 0x7ad8)
  goto jmp_12718

jmp_126c0:
  r2 <<= 0x3
  r3 = r10
  r3 += -0xfe0
  r3 += r2
  r2 = *(u64 *)(r3 + 0x0)
  *(u64 *)(r10 - 0xfd8) = r2
  r1 += 0x8
  goto jmp_8ca8

jmp_12700:
  r0 = 0x9
  goto jmp_14c00

jmp_12710:
  r5 = r0

jmp_12718:
  r7 = 0x4
  r2 = *(u64 *)(r1 + 0x80)
  if r2 != r5 goto jmp_150f8
  r2 = *(u64 *)(r1 + 0x7ae0)
  r5 = *(u64 *)(r1 + 0x88)
  r6 = 0x0
  if r5 != r2 goto jmp_11090
  r2 = *(u64 *)(r1 + 0x7ae8)
  r5 = *(u64 *)(r1 + 0x90)
  if r5 != r2 goto jmp_11090
  r2 = *(u64 *)(r1 + 0x7af0)
  r5 = *(u64 *)(r1 + 0x98)
  if r5 != r2 goto jmp_11090
  if r4 != 0x163 goto jmp_128a0
  r2 = *(u64 *)(r1 + 0x7af8)
  r4 = -0x21708a111e0922fa ll
  if r2 == r4 goto jmp_12840
  r4 = -0x6c5e9a281e0922fa ll
  if r2 != r4 goto jmp_128a0
  r2 = *(u64 *)(r1 + 0x7b00)
  r4 = -0x53861431b91e3427 ll
  if r2 != r4 goto jmp_128a0
  r2 = *(u64 *)(r1 + 0x7b08)
  r4 = -0x6ec8a4a0127a4be4 ll
  if r2 != r4 goto jmp_128a0
  r2 = *(u64 *)(r1 + 0x7b10)
  r4 = -0x56ff00817a0a73c6 ll
  if r2 != r4 goto jmp_128a0
  goto jmp_15118

jmp_12828:
  r9 = 0xc
  r0 = 0x0
  goto jmp_14c00

jmp_12840:
  r2 = *(u64 *)(r1 + 0x7b00)
  r4 = -0x2532931b43a2bde8 ll
  if r2 != r4 goto jmp_128a0
  r2 = *(u64 *)(r1 + 0x7b08)
  r4 = 0x270db9834dfc1ab6 ll
  if r2 != r4 goto jmp_128a0
  r2 = *(u64 *)(r1 + 0x7b10)
  r4 = -0x3745e27d7064202 ll
  if r2 == r4 goto jmp_15118

jmp_128a0:
  w2 = *(u8 *)(r1 + 0x7ad1)
  if r2 == 0x0 goto jmp_13678

jmp_128b0:
  if r3 == 0x0 goto jmp_13830

jmp_128b8:
  r2 = *(u64 *)(r10 - 0x7e8)
  r2 -= r3
  *(u64 *)(r1 + 0xa0) = r2
  r2 = *(u64 *)(r1 + 0x5260)
  r2 += r3
  *(u64 *)(r1 + 0x5260) = r2
  r2 = 0x0
  w4 = *(u8 *)(r1 + 0xcd)
  if r4 != 0x1 goto jmp_14c28
  r4 = *(u64 *)(r1 + 0x50)
  r4 -= r3
  *(u64 *)(r1 + 0x50) = r4
  r4 = *(u64 *)(r1 + 0x5210)
  r4 += r3
  *(u64 *)(r1 + 0x5210) = r4
  goto jmp_14c28

jmp_12938:
  r4 = *(u64 *)(r1 + 0x5248)
  r5 = -0x2532931b43a2bde8 ll
  if r4 != r5 goto jmp_12998
  r4 = *(u64 *)(r1 + 0x5250)
  r5 = 0x270db9834dfc1ab6 ll
  if r4 != r5 goto jmp_12998
  r4 = *(u64 *)(r1 + 0x5258)
  r5 = -0x3745e27d7064202 ll
  if r4 == r5 goto jmp_151f0

jmp_12998:
  w4 = *(u8 *)(r1 + 0x5219)
  if r4 == 0x0 goto jmp_13678

jmp_129a8:
  r4 = *(u64 *)(r1 + 0xd9)
  if r4 < r3 goto jmp_11090
  r5 = r4
  r5 -= r3
  *(u64 *)(r1 + 0xd9) = r5
  if r4 != r3 goto jmp_129e0
  *(u8 *)(r1 + 0xa8) = 0x0

jmp_129e0:
  if r3 != 0x0 goto jmp_11718

jmp_129e8:
  r6 = 0x6
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_13680
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_13680
  r2 = *(u64 *)(r1 + 0x40)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_13680
  r2 = *(u64 *)(r1 + 0x48)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_13680
  r2 = *(u64 *)(r1 + 0x2938)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_13680
  r2 = *(u64 *)(r1 + 0x2940)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_13680
  r2 = *(u64 *)(r1 + 0x2948)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_13680
  r2 = 0x0
  r1 = *(u64 *)(r1 + 0x2950)
  r3 = -0x56ff00817a0a73c6 ll
  if r1 == r3 goto jmp_14c28
  goto jmp_13680

jmp_12b00:
  r7 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12b18:
  r2 = *(u64 *)(r5 + 0x8)
  goto jmp_12ef0

jmp_12b28:
  r0 = 0x1
  r9 = *(u64 *)(r10 - 0x740)
  goto jmp_14c00

jmp_12b40:
  r0 = 0x1
  r9 = *(u64 *)(r10 - 0x770)
  goto jmp_14c00

jmp_12b58:
  r7 = 0x4
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12b78:
  r0 = 0x7
  r9 = r7
  goto jmp_14c00

jmp_12b90:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_fb20

jmp_12bd8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x10) = r3
  r1 += 0x8
  goto jmp_8ca8

jmp_12c18:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_9320

jmp_12c60:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x10) = r3
  r1 += 0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_9358

jmp_12ca8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x18) = r3
  r1 += 0x8
  goto jmp_8ca8

jmp_12ce8:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_fb78

jmp_12d30:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x10) = r3
  r1 += 0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_fbb0

jmp_12d78:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x18) = r3
  r1 += 0x8
  w3 = *(u8 *)(r1 + 0x0)
  if r3 == 0xff goto jmp_fbe8

jmp_12dc0:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x20) = r3
  r1 += 0x8
  goto jmp_8ca8

jmp_12e00:
  r3 <<= 0x3
  r4 = r10
  r4 += -0xfe0
  r4 += r3
  r3 = *(u64 *)(r4 + 0x0)
  *(u64 *)(r2 + 0x8) = r3
  r1 += 0x8
  goto jmp_8ca8

jmp_12e40:
  r0 = 0x3
  r7 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12e60:
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_12e78:
  r7 = 0x4
  r9 = r7
  goto jmp_14c00

jmp_12e90:
  r7 = 0x12
  r6 = 0x0
  goto jmp_11090

jmp_12ea8:
  r0 = 0x1
  goto jmp_14c00

jmp_12eb8:
  r0 = 0x1
  r9 = *(u64 *)(r10 - 0x778)
  goto jmp_14c00

jmp_12ed0:
  r7 = 0x3
  r9 = r7
  goto jmp_14c00

jmp_12ee8:
  r2 = r0

jmp_12ef0:
  r0 = 0x0
  r7 = *(u64 *)(r8 + 0x78)
  if r7 != r2 goto jmp_15108
  r2 = *(u64 *)(r5 + 0x10)
  r7 = *(u64 *)(r8 + 0x80)
  if r7 != r2 goto jmp_15108
  r2 = *(u64 *)(r5 + 0x18)
  r7 = *(u64 *)(r8 + 0x88)
  if r7 != r2 goto jmp_15108
  r2 = *(u64 *)(r5 + 0x20)
  r7 = *(u64 *)(r8 + 0x90)
  r9 = 0x4
  if r7 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_131d8
  r2 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_13178
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_131d8
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_131d8
  r2 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_131d8
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_131d8
  goto jmp_15948

jmp_13008:
  r2 = *(u64 *)(r5 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_13068
  r2 = *(u64 *)(r5 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_13068
  r2 = *(u64 *)(r5 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_152e0

jmp_13068:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_15e90

jmp_13078:
  r2 = *(u64 *)(r8 + 0xd1)
  r9 = 0x1
  if r2 < r3 goto jmp_14c00
  r5 = r2
  r5 -= r3
  *(u64 *)(r8 + 0xd1) = r5
  if r2 != r3 goto jmp_12558
  *(u8 *)(r8 + 0xa0) = 0x0
  goto jmp_12558

jmp_130c0:
  r2 = *(u64 *)(r5 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_13120
  r2 = *(u64 *)(r5 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_13120
  r2 = *(u64 *)(r5 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_15608

jmp_13120:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_15e90

jmp_13130:
  r2 = *(u64 *)(r8 + 0xd1)
  r9 = 0x1
  if r2 < r3 goto jmp_14c00
  r5 = r2
  r5 -= r3
  *(u64 *)(r8 + 0xd1) = r5
  if r2 != r3 goto jmp_12608
  *(u8 *)(r8 + 0xa0) = 0x0
  goto jmp_12608

jmp_13178:
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_131d8
  r2 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_131d8
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_15948

jmp_131d8:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_14a10

jmp_131e8:
  if r3 == 0x0 goto jmp_14af0
  if r8 == r1 goto jmp_14af0

jmp_131f8:
  r4 -= r3
  *(u64 *)(r8 + 0x98) = r4
  r2 = *(u64 *)(r1 + 0x50)
  r9 = 0x0
  r0 = 0x3
  if r2 != 0xa5 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r3
  *(u64 *)(r1 + 0x98) = r2
  r0 = 0x1a
  w2 = *(u8 *)(r8 + 0xc5)
  if r2 != 0x1 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x48)
  r2 -= r3
  *(u64 *)(r8 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r3
  *(u64 *)(r1 + 0x48) = r2
  goto jmp_14c00

jmp_13290:
  r1 = -0x100000000 ll
  r9 = *(u64 *)(r10 - 0x7b0)
  goto jmp_121c0

jmp_132b0:
  r1 = -0x100000000 ll
  r9 = *(u64 *)(r10 - 0x7a0)
  r9 &= r1
  goto jmp_14c00

jmp_132d8:
  r0 = 0x9
  r9 = *(u64 *)(r10 - 0x780)
  goto jmp_14c00

jmp_132f0:
  r0 = 0x9
  r9 = *(u64 *)(r10 - 0x760)
  goto jmp_14c00

jmp_13308:
  r7 = 0xa
  r0 = 0x0
  r9 = r7
  goto jmp_14c00

jmp_13328:
  r0 = 0x9
  r9 = r7
  goto jmp_14c00

jmp_13340:
  r0 = 0x9
  r9 = r3
  goto jmp_14c00

jmp_13358:
  r9 = 0xa
  goto jmp_14c00

jmp_13368:
  r3 = 0x0
  r9 = r3
  goto jmp_14c00

jmp_13380:
  r7 = 0x11
  r9 = r7
  goto jmp_14c00

jmp_13398:
  r7 = 0xa
  r9 = r7
  goto jmp_14c00

jmp_133b0:
  r6 = r7
  r0 = 0x0
  if r2 == 0x2 goto jmp_13400
  r9 = 0x1
  r4 = *(u64 *)(r8 + 0x98)
  if r4 >= r3 goto jmp_8e38
  goto jmp_14c00

jmp_133e8:
  *(u64 *)(r10 - 0x7d8) = r7
  r0 = 0x0
  if r4 != 0x2 goto jmp_136f0

jmp_13400:
  r9 = 0x11
  goto jmp_14c00

jmp_13410:
  r0 = 0x3
  r9 = 0x0
  goto jmp_14c00

jmp_13428:
  r0 = 0x1a
  if r6 == 0x0 goto jmp_fe18

jmp_13438:
  r0 = r7
  r6 = r0
  r6 &= 0x1b
  if r6 != 0x1a goto jmp_14708

jmp_13458:
  r6 = data_0000 ll
  if r0 < r6 goto jmp_168b8
  r0 = 0x0
  w5 = *(u8 *)(r5 + 0x84)
  if r2 != r5 goto jmp_13768
  r2 = r10
  r2 += -0xfc0
  *(u64 *)(r10 - 0x7e8) = r2
  r5 = *(u64 *)(r10 - 0xfc8)
  w2 = *(u8 *)(r8 + 0xa0)
  if r2 != 0x1 goto jmp_149e0
  r2 = *(u64 *)(r5 + 0x8)
  r7 = *(u64 *)(r8 + 0xa4)
  if r7 != r2 goto jmp_14ee0
  r2 = *(u64 *)(r5 + 0x10)
  r9 = *(u64 *)(r8 + 0xac)
  if r9 != r2 goto jmp_14ed8
  r2 = *(u64 *)(r5 + 0x18)
  r9 = *(u64 *)(r8 + 0xb4)
  if r9 != r2 goto jmp_14ed8
  r9 = *(u64 *)(r5 + 0x20)
  r6 = *(u64 *)(r8 + 0xbc)
  r2 = r7
  if r6 != r9 goto jmp_14ee0
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_15d18
  r2 = *(u64 *)(r5 + 0x28)
  r6 = -0x21708a111e0922fa ll
  if r2 == r6 goto jmp_15cb8
  r6 = -0x6c5e9a281e0922fa ll
  if r2 != r6 goto jmp_15d18
  r2 = *(u64 *)(r5 + 0x30)
  r6 = -0x53861431b91e3427 ll
  if r2 != r6 goto jmp_15d18
  r2 = *(u64 *)(r5 + 0x38)
  r6 = -0x6ec8a4a0127a4be4 ll
  if r2 != r6 goto jmp_15d18
  r2 = *(u64 *)(r5 + 0x40)
  r6 = -0x56ff00817a0a73c6 ll
  if r2 != r6 goto jmp_15d18
  goto jmp_16770

jmp_135d0:
  r0 = 0x9
  r9 = 0x0
  goto jmp_14c00

jmp_135e8:
  r7 = 0xe
  r9 = r7
  goto jmp_14c00

jmp_13600:
  w4 = *(u8 *)(r1 + 0x5272)
  r5 = 0x3 ll
  if r4 == 0x1 goto jmp_13688
  r5 = 0x3
  r6 = 0x1a
  if r4 != 0x0 goto jmp_13698

jmp_13638:
  r4 = r6
  r4 &= 0x1b
  if r4 != 0x1a goto jmp_136b8

jmp_13650:
  r4 = data_0000 ll
  if r6 < r4 goto jmp_16350
  w4 = *(u8 *)(r1 + 0x5270)
  if r4 == 0x0 goto jmp_11710

jmp_13678:
  r6 = 0x7

jmp_13680:
  goto jmp_11090

jmp_13688:
  r6 = 0x1a
  if r4 == 0x0 goto jmp_13638

jmp_13698:
  r6 = r5
  r4 = r6
  r4 &= 0x1b
  if r4 == 0x1a goto jmp_13650

jmp_136b8:
  r4 = r6
  r4 <<= 0x20
  r4 >>= 0x20
  if r4 == 0x1a goto jmp_11710

jmp_136d8:
  r7 = r6
  r7 >>= 0x20
  goto jmp_11090

jmp_136f0:
  r9 = 0x1
  r4 = *(u64 *)(r8 + 0x98)
  if r4 < r3 goto jmp_14c00
  r6 = *(u64 *)(r8 + 0x58)
  r5 = *(u64 *)(r10 - 0xfd8)
  r7 = *(u64 *)(r5 + 0x8)
  if r7 == r6 goto jmp_fd80

jmp_13728:
  r9 = 0x3
  goto jmp_14c00

jmp_13738:
  r5 = *(u64 *)(r8 + 0x48)
  if r5 >= r1 goto jmp_13c20

jmp_13748:
  r9 = 0x0
  goto jmp_14c00

jmp_13758:
  r9 = 0x3
  goto jmp_14c00

jmp_13768:
  r9 = 0x12
  goto jmp_14c00

jmp_13778:
  r2 = *(u64 *)(r1 + 0x7b00)
  r4 = -0x2532931b43a2bde8 ll
  if r2 != r4 goto jmp_137d8
  r2 = *(u64 *)(r1 + 0x7b08)
  r4 = 0x270db9834dfc1ab6 ll
  if r2 != r4 goto jmp_137d8
  r2 = *(u64 *)(r1 + 0x7b10)
  r4 = -0x3745e27d7064202 ll
  if r2 == r4 goto jmp_15eb8

jmp_137d8:
  w2 = *(u8 *)(r1 + 0x7ad1)
  if r2 == 0x0 goto jmp_13678

jmp_137e8:
  r2 = *(u64 *)(r1 + 0xd9)
  r6 = 0x0
  if r2 < r3 goto jmp_11090
  r4 = r2
  r4 -= r3
  *(u64 *)(r1 + 0xd9) = r4
  if r2 != r3 goto jmp_13828
  *(u8 *)(r1 + 0xa8) = 0x0

jmp_13828:
  if r3 != 0x0 goto jmp_128b8

jmp_13830:
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_13938
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_13938
  r2 = *(u64 *)(r1 + 0x40)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_13938
  r2 = *(u64 *)(r1 + 0x48)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_13938
  r2 = *(u64 *)(r1 + 0x51f0)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_13938
  r2 = *(u64 *)(r1 + 0x51f8)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_13938
  r2 = *(u64 *)(r1 + 0x5200)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_13938
  r2 = 0x0
  r1 = *(u64 *)(r1 + 0x5208)
  r3 = -0x56ff00817a0a73c6 ll
  if r1 == r3 goto jmp_14c28

jmp_13938:
  r6 = 0x6
  goto jmp_11090

jmp_13948:
  w2 = *(u8 *)(r3 + 0x5a)
  r4 = 0x3 ll
  if r2 == 0x1 goto jmp_13bc8
  r4 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_13bd8

jmp_13980:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_13bf8

jmp_13998:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7e0) = r2
  r7 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7d0) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r7
  if r7 == 0x18 goto jmp_149f0
  w4 = *(u8 *)(r3 + 0x59)
  *(u64 *)(r10 - 0x7d8) = r4
  if r4 > 0xb goto jmp_16360
  r4 = *(u64 *)(r10 - 0x7d8)
  if r4 == 0x0 goto jmp_149f0
  r4 = r10
  r4 += -0xfc8
  *(u64 *)(r10 - 0x7e8) = r4
  r4 = *(u64 *)(r10 - 0x7d0)
  r4 += r2
  *(u64 *)(r10 - 0x7d0) = r4
  r2 = *(u64 *)(r10 - 0x7d8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7d8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = r3
  r2 += 0x73
  *(u64 *)(r10 - 0x7c8) = r2
  goto jmp_13ab8

jmp_13aa0:
  r2 = *(u64 *)(r10 - 0x7d0)
  r4 = *(u64 *)(r10 - 0x7e8)
  if r4 == r2 goto jmp_149f0

jmp_13ab8:
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x7e8)
  r9 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  r5 = *(u64 *)(r9 + 0x8)
  r6 = *(u64 *)(r10 - 0x7c8)
  r2 = *(u64 *)(r10 - 0x7d8)
  goto jmp_13b48

jmp_13b08:
  *(u8 *)(r7 + 0x0) = 0x1
  r4 = *(u64 *)(r10 - 0x7e0)
  r4 += 0x1
  *(u64 *)(r10 - 0x7e0) = r4

jmp_13b28:
  r6 += 0x20
  r7 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_13aa0

jmp_13b48:
  r4 = *(u64 *)(r6 - 0x18)
  if r4 != r5 goto jmp_13b28
  r4 = *(u64 *)(r9 + 0x10)
  r0 = *(u64 *)(r6 - 0x10)
  if r0 != r4 goto jmp_13b28
  r4 = *(u64 *)(r9 + 0x18)
  r0 = *(u64 *)(r6 - 0x8)
  if r0 != r4 goto jmp_13b28
  r4 = *(u64 *)(r9 + 0x20)
  r0 = *(u64 *)(r6 + 0x0)
  if r0 != r4 goto jmp_13b28
  w4 = *(u8 *)(r7 + 0x0)
  if r4 != 0x0 goto jmp_13b28
  w4 = *(u8 *)(r9 + 0x1)
  if r4 != 0x0 goto jmp_13b08
  goto jmp_14a10

jmp_13bc8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_13980

jmp_13bd8:
  r0 = r4
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_13998

jmp_13bf8:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_123b0
  goto jmp_14708

jmp_13c20:
  r7 += 0x8
  r4 = r2
  r4 += 0x8
  r3 = r8
  r3 += 0x58
  if r6 == 0x0 goto jmp_14810
  *(u8 *)(r8 + 0xc4) = 0x1
  r2 = *(u64 *)(r4 + 0x0)
  r0 = *(u64 *)(r4 + 0x8)
  r6 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r6
  *(u64 *)(r3 + 0x8) = r0
  *(u64 *)(r3 + 0x0) = r2
  r2 = *(u64 *)(r7 + 0x0)
  r3 = *(u64 *)(r7 + 0x8)
  r4 = *(u64 *)(r7 + 0x10)
  r0 = *(u64 *)(r7 + 0x18)
  *(u64 *)(r8 + 0x90) = r0
  *(u64 *)(r8 + 0x88) = r4
  *(u64 *)(r8 + 0x80) = r3
  *(u64 *)(r8 + 0x78) = r2
  *(u64 *)(r8 + 0xc9) = r1
  r5 -= r1
  *(u64 *)(r8 + 0x98) = r5
  *(u8 *)(r8 + 0xc5) = 0x1
  goto jmp_14bf8

jmp_13d00:
  r0 = 0x6
  r2 = *(u64 *)(r8 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14c00
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 == r2 goto jmp_12638
  goto jmp_14c00

jmp_13e10:
  w2 = *(u8 *)(r4 + 0x5a)
  r5 = 0x3 ll
  if r2 == 0x1 goto jmp_140b8
  r5 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_140c8

jmp_13e48:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_140e8

jmp_13e60:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r7 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7c8) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r7
  if r7 == 0x18 goto jmp_14c68
  w5 = *(u8 *)(r4 + 0x59)
  *(u64 *)(r10 - 0x7d8) = r5
  if r5 > 0xb goto jmp_16360
  r5 = *(u64 *)(r10 - 0x7d8)
  if r5 == 0x0 goto jmp_14c68
  r5 = r10
  r5 += -0xfc8
  *(u64 *)(r10 - 0x7e0) = r5
  r5 = *(u64 *)(r10 - 0x7c8)
  r5 += r2
  *(u64 *)(r10 - 0x7c8) = r5
  r2 = *(u64 *)(r10 - 0x7d8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7d8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r2 = r4
  r2 += 0x73
  *(u64 *)(r10 - 0x7c0) = r2
  goto jmp_13f80

jmp_13f68:
  r2 = *(u64 *)(r10 - 0x7c8)
  r5 = *(u64 *)(r10 - 0x7e0)
  if r5 == r2 goto jmp_14c68

jmp_13f80:
  r9 = r10
  r9 += -0x1000
  r2 = *(u64 *)(r10 - 0x7e0)
  r5 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e0) = r2
  *(u64 *)(r10 - 0x7e8) = r5
  r7 = *(u64 *)(r5 + 0x8)
  r5 = *(u64 *)(r10 - 0x7c0)
  r2 = *(u64 *)(r10 - 0x7d8)
  goto jmp_14018

jmp_13fd8:
  *(u8 *)(r9 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0x7d0)
  r0 += 0x1
  *(u64 *)(r10 - 0x7d0) = r0

jmp_13ff8:
  r5 += 0x20
  r9 += 0x1
  r2 += -0x20
  if r2 == 0x0 goto jmp_13f68

jmp_14018:
  r6 = *(u64 *)(r5 - 0x18)
  if r6 != r7 goto jmp_13ff8
  r0 = *(u64 *)(r10 - 0x7e8)
  r6 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r5 - 0x10)
  if r0 != r6 goto jmp_13ff8
  r0 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r5 - 0x8)
  if r6 != r0 goto jmp_13ff8
  r0 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r5 + 0x0)
  if r6 != r0 goto jmp_13ff8
  w0 = *(u8 *)(r9 + 0x0)
  if r0 != 0x0 goto jmp_13ff8
  r0 = *(u64 *)(r10 - 0x7e8)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 != 0x0 goto jmp_13fd8
  goto jmp_14c88

jmp_140b8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_13e48

jmp_140c8:
  r0 = r5
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_13e60

jmp_140e8:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_12470
  goto jmp_14708

jmp_14110:
  r6 = r7
  w2 = *(u8 *)(r5 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_143b8
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_143c8

jmp_14150:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_143e8

jmp_14168:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r6 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7c0) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_14c98
  w0 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c8) = r0
  if r0 > 0xb goto jmp_16638
  r0 = *(u64 *)(r10 - 0x7c8)
  if r0 == 0x0 goto jmp_14c98
  r0 = *(u64 *)(r10 - 0x7c0)
  r0 += r2
  *(u64 *)(r10 - 0x7c0) = r0
  r2 = *(u64 *)(r10 - 0x7c8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b8) = r2
  goto jmp_14270

jmp_14258:
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r10 - 0x7c0)
  if r2 == r0 goto jmp_14c98

jmp_14270:
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d8) = r0
  r2 = *(u64 *)(r0 + 0x8)
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7b8)
  r9 = *(u64 *)(r10 - 0x7c8)
  goto jmp_142f0

jmp_142d0:
  r2 += 0x20
  r7 += 0x1
  r9 += -0x20
  if r9 == 0x0 goto jmp_14258

jmp_142f0:
  r6 = *(u64 *)(r2 - 0x18)
  r0 = *(u64 *)(r10 - 0x7e0)
  if r6 != r0 goto jmp_142d0
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r2 - 0x10)
  if r0 != r6 goto jmp_142d0
  r0 = *(u64 *)(r10 - 0x7d8)
  r0 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r2 - 0x8)
  if r6 != r0 goto jmp_142d0
  r0 = *(u64 *)(r10 - 0x7d8)
  r0 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r2 + 0x0)
  if r6 != r0 goto jmp_142d0
  w0 = *(u8 *)(r7 + 0x0)
  if r0 != 0x0 goto jmp_142d0
  r0 = *(u64 *)(r10 - 0x7d8)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 == 0x0 goto jmp_14ce0
  *(u8 *)(r7 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0x7d0)
  r0 += 0x1
  *(u64 *)(r10 - 0x7d0) = r0
  goto jmp_142d0

jmp_143b8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_14150

jmp_143c8:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_14168

jmp_143e8:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_12558
  goto jmp_14708

jmp_14410:
  r6 = r7
  w2 = *(u8 *)(r5 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_146b8
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_146c8

jmp_14450:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_146e8

jmp_14468:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r6 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7c0) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_14cc0
  w0 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c8) = r0
  if r0 > 0xb goto jmp_16638
  r0 = *(u64 *)(r10 - 0x7c8)
  if r0 == 0x0 goto jmp_14cc0
  r0 = *(u64 *)(r10 - 0x7c0)
  r0 += r2
  *(u64 *)(r10 - 0x7c0) = r0
  r2 = *(u64 *)(r10 - 0x7c8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b8) = r2
  goto jmp_14570

jmp_14558:
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r10 - 0x7c0)
  if r2 == r0 goto jmp_14cc0

jmp_14570:
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d8) = r0
  r2 = *(u64 *)(r0 + 0x8)
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7b8)
  r9 = *(u64 *)(r10 - 0x7c8)
  goto jmp_145f0

jmp_145d0:
  r2 += 0x20
  r7 += 0x1
  r9 += -0x20
  if r9 == 0x0 goto jmp_14558

jmp_145f0:
  r6 = *(u64 *)(r2 - 0x18)
  r0 = *(u64 *)(r10 - 0x7e0)
  if r6 != r0 goto jmp_145d0
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r2 - 0x10)
  if r0 != r6 goto jmp_145d0
  r0 = *(u64 *)(r10 - 0x7d8)
  r0 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r2 - 0x8)
  if r6 != r0 goto jmp_145d0
  r0 = *(u64 *)(r10 - 0x7d8)
  r0 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r2 + 0x0)
  if r6 != r0 goto jmp_145d0
  w0 = *(u8 *)(r7 + 0x0)
  if r0 != 0x0 goto jmp_145d0
  r0 = *(u64 *)(r10 - 0x7d8)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 == 0x0 goto jmp_14ce0
  *(u8 *)(r7 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0x7d0)
  r0 += 0x1
  *(u64 *)(r10 - 0x7d0) = r0
  goto jmp_145d0

jmp_146b8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_14450

jmp_146c8:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_14468

jmp_146e8:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_12608

jmp_14708:
  r9 = r0
  r9 >>= 0x20
  goto jmp_14c00

jmp_14720:
  r9 = 0xe
  goto jmp_14c00

jmp_14730:
  r4 = r2
  r4 += 0x8
  r3 = r8
  r3 += 0x58
  if r5 == 0x0 goto jmp_14cf0
  *(u8 *)(r8 + 0xc4) = 0x1
  r2 = *(u64 *)(r4 + 0x0)
  r5 = *(u64 *)(r4 + 0x8)
  r0 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r0
  *(u64 *)(r3 + 0x8) = r5
  *(u64 *)(r3 + 0x0) = r2
  r2 = *(u64 *)(r10 - 0x7e8)
  r3 = *(u64 *)(r2 + 0x0)
  r4 = *(u64 *)(r2 + 0x8)
  r5 = *(u64 *)(r2 + 0x10)
  r2 = *(u64 *)(r2 + 0x18)
  *(u64 *)(r8 + 0x90) = r2
  *(u64 *)(r8 + 0x88) = r5
  *(u64 *)(r8 + 0x80) = r4
  *(u64 *)(r8 + 0x78) = r3
  *(u64 *)(r8 + 0xc9) = r1
  r6 -= r1
  *(u64 *)(r8 + 0x98) = r6
  *(u8 *)(r8 + 0xc5) = 0x1
  goto jmp_12638

jmp_14810:
  r1 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_16048
  r1 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_16048
  r1 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_16048
  r1 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_16048
  r1 = *(u64 *)(r2 + 0x50)
  if r1 != 0x52 goto jmp_149d0
  w2 = *(u8 *)(r2 + 0x85)
  r5 = 0x3 ll
  if r2 == 0x1 goto jmp_149a0
  r5 = 0x3
  r1 = 0x1a
  if r2 != 0x0 goto jmp_149b0

jmp_148d8:
  r2 = r1
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_149d0

jmp_148f0:
  r2 = data_0000 ll
  r9 = 0x2
  if r1 < r2 goto jmp_14c00
  *(u8 *)(r8 + 0xc4) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r5 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r5
  *(u64 *)(r3 + 0x8) = r2
  *(u64 *)(r3 + 0x0) = r1
  r1 = *(u64 *)(r7 + 0x0)
  r2 = *(u64 *)(r7 + 0x8)
  r3 = *(u64 *)(r7 + 0x10)
  r4 = *(u64 *)(r7 + 0x18)
  *(u64 *)(r8 + 0x90) = r4
  *(u64 *)(r8 + 0x88) = r3
  *(u64 *)(r8 + 0x80) = r2
  *(u64 *)(r8 + 0x78) = r1
  goto jmp_14bf8

jmp_149a0:
  r1 = 0x1a
  if r2 == 0x0 goto jmp_148d8

jmp_149b0:
  r1 = r5
  r2 = r1
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_148f0

jmp_149d0:
  r9 = 0x2
  goto jmp_14c00

jmp_149e0:
  r2 = *(u64 *)(r5 + 0x8)
  goto jmp_14ee0

jmp_149f0:
  w2 = *(u8 *)(r3 + 0x58)
  r3 = *(u64 *)(r10 - 0x7e0)
  r3 &= 0xff
  if r3 >= r2 goto jmp_123b0

jmp_14a10:
  r0 = 0x7
  goto jmp_14c00

jmp_14a20:
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_14a80
  r2 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_14a80
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_16058

jmp_14a80:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_14a10

jmp_14a90:
  r2 = *(u64 *)(r8 + 0xd1)
  if r2 >= r3 goto jmp_14ab8
  r0 = 0x0
  r9 = 0x1
  goto jmp_14c00

jmp_14ab8:
  if r8 == r1 goto jmp_14af0
  r5 = r2
  r5 -= r3
  *(u64 *)(r8 + 0xd1) = r5
  if r2 != r3 goto jmp_14ae8
  *(u8 *)(r8 + 0xa0) = 0x0

jmp_14ae8:
  if r3 != 0x0 goto jmp_131f8

jmp_14af0:
  r0 = 0x6
  r2 = *(u64 *)(r8 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14c00
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_14c00

jmp_14bf8:
  r0 = 0x1a

jmp_14c00:
  r2 = 0x0
  r1 = r0
  r1 <<= 0x20
  r1 >>= 0x20
  if r1 != 0x1a goto jmp_14c38

jmp_14c28:
  r0 = r2
  exit

jmp_14c38:
  r6 = r0
  r1 = r6
  r2 = r9
  call fn_7fe8
  r1 = r6
  goto jmp_8fa0

jmp_14c68:
  w2 = *(u8 *)(r4 + 0x58)
  r4 = *(u64 *)(r10 - 0x7d0)
  r4 &= 0xff
  if r4 >= r2 goto jmp_12470

jmp_14c88:
  r0 = 0x7
  goto jmp_14c00

jmp_14c98:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7d0)
  r5 &= 0xff
  if r5 >= r2 goto jmp_12558
  goto jmp_14ce0

jmp_14cc0:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7d0)
  r5 &= 0xff
  if r5 >= r2 goto jmp_12608

jmp_14ce0:
  r0 = 0x7
  goto jmp_14c00

jmp_14cf0:
  r1 = *(u64 *)(r2 + 0x28)
  r5 = -0x6c5e9a281e0922fa ll
  if r1 != r5 goto jmp_14e88
  r1 = *(u64 *)(r2 + 0x30)
  r5 = -0x53861431b91e3427 ll
  if r1 != r5 goto jmp_14e88
  r1 = *(u64 *)(r2 + 0x38)
  r5 = -0x6ec8a4a0127a4be4 ll
  if r1 != r5 goto jmp_14e88
  r1 = *(u64 *)(r2 + 0x40)
  r5 = -0x56ff00817a0a73c6 ll
  if r1 != r5 goto jmp_14e88
  r1 = *(u64 *)(r2 + 0x50)
  if r1 != 0x52 goto jmp_14ec8
  w2 = *(u8 *)(r2 + 0x85)
  r5 = 0x3 ll
  if r2 == 0x1 goto jmp_14e98
  r5 = 0x3
  r1 = 0x1a
  if r2 != 0x0 goto jmp_14ea8

jmp_14db8:
  r2 = r1
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_14ec8

jmp_14dd0:
  r2 = data_0000 ll
  r9 = 0x2
  if r1 < r2 goto jmp_14c00
  *(u8 *)(r8 + 0xc4) = 0x1
  r1 = *(u64 *)(r4 + 0x0)
  r2 = *(u64 *)(r4 + 0x8)
  r5 = *(u64 *)(r4 + 0x10)
  r4 = *(u64 *)(r4 + 0x18)
  *(u64 *)(r3 + 0x18) = r4
  *(u64 *)(r3 + 0x10) = r5
  *(u64 *)(r3 + 0x8) = r2
  *(u64 *)(r3 + 0x0) = r1
  r1 = *(u64 *)(r10 - 0x7e8)
  r2 = *(u64 *)(r1 + 0x0)
  r3 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x10)
  r1 = *(u64 *)(r1 + 0x18)
  *(u64 *)(r8 + 0x90) = r1
  *(u64 *)(r8 + 0x88) = r4
  *(u64 *)(r8 + 0x80) = r3
  *(u64 *)(r8 + 0x78) = r2
  goto jmp_12638

jmp_14e88:
  r0 = 0x6
  goto jmp_14c00

jmp_14e98:
  r1 = 0x1a
  if r2 == 0x0 goto jmp_14db8

jmp_14ea8:
  r1 = r5
  r2 = r1
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_14dd0

jmp_14ec8:
  r9 = 0x2
  goto jmp_14c00

jmp_14ed8:
  r2 = r7

jmp_14ee0:
  r6 = *(u64 *)(r8 + 0x78)
  if r6 != r2 goto jmp_15108
  r2 = *(u64 *)(r5 + 0x10)
  r6 = *(u64 *)(r8 + 0x80)
  if r6 != r2 goto jmp_15108
  r2 = *(u64 *)(r5 + 0x18)
  r6 = *(u64 *)(r8 + 0x88)
  if r6 != r2 goto jmp_15108
  r2 = *(u64 *)(r5 + 0x20)
  r6 = *(u64 *)(r8 + 0x90)
  r9 = 0x4
  if r6 != r2 goto jmp_14c00
  r2 = *(u64 *)(r5 + 0x50)
  if r2 != 0x163 goto jmp_15050
  r2 = *(u64 *)(r5 + 0x28)
  r0 = -0x21708a111e0922fa ll
  if r2 == r0 goto jmp_14ff0
  r0 = -0x6c5e9a281e0922fa ll
  if r2 != r0 goto jmp_15050
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x53861431b91e3427 ll
  if r2 != r0 goto jmp_15050
  r2 = *(u64 *)(r5 + 0x38)
  r0 = -0x6ec8a4a0127a4be4 ll
  if r2 != r0 goto jmp_15050
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x56ff00817a0a73c6 ll
  if r2 != r0 goto jmp_15050
  goto jmp_16390

jmp_14ff0:
  r2 = *(u64 *)(r5 + 0x30)
  r0 = -0x2532931b43a2bde8 ll
  if r2 != r0 goto jmp_15050
  r2 = *(u64 *)(r5 + 0x38)
  r0 = 0x270db9834dfc1ab6 ll
  if r2 != r0 goto jmp_15050
  r2 = *(u64 *)(r5 + 0x40)
  r0 = -0x3745e27d7064202 ll
  if r2 == r0 goto jmp_16390

jmp_15050:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_15e90

jmp_15060:
  if r3 == 0x0 goto jmp_15d78
  if r8 == r1 goto jmp_15d78

jmp_15070:
  r4 -= r3
  *(u64 *)(r8 + 0x98) = r4
  r2 = *(u64 *)(r1 + 0x50)
  if r2 != 0xa5 goto jmp_15fa0
  r2 = *(u64 *)(r1 + 0x98)
  r2 += r3
  *(u64 *)(r1 + 0x98) = r2
  w2 = *(u8 *)(r8 + 0xc5)
  if r2 != 0x1 goto jmp_15e80
  r2 = *(u64 *)(r8 + 0x48)
  r2 -= r3
  *(u64 *)(r8 + 0x48) = r2
  r2 = *(u64 *)(r1 + 0x48)
  r2 += r3
  *(u64 *)(r1 + 0x48) = r2
  r0 = 0x1a
  goto jmp_14c00

jmp_150f8:
  r6 = 0x0
  goto jmp_11090

jmp_15108:
  r9 = 0x4
  goto jmp_14c00

jmp_15118:
  w2 = *(u8 *)(r1 + 0x7b2a)
  r4 = 0x3 ll
  if r2 == 0x1 goto jmp_15198
  r4 = 0x3
  r6 = 0x1a
  if r2 != 0x0 goto jmp_151a8

jmp_15150:
  r2 = r6
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_151c8

jmp_15168:
  r2 = data_0000 ll
  if r6 < r2 goto jmp_15f38
  w2 = *(u8 *)(r1 + 0x7b28)
  if r2 == 0x0 goto jmp_128b0
  goto jmp_13678

jmp_15198:
  r6 = 0x1a
  if r2 == 0x0 goto jmp_15150

jmp_151a8:
  r6 = r4
  r2 = r6
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_15168

jmp_151c8:
  r2 = r6
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_128b0
  goto jmp_136d8

jmp_151f0:
  w5 = *(u8 *)(r1 + 0x5272)
  r0 = 0x3 ll
  if r5 == 0x1 goto jmp_15270
  r0 = 0x3
  r4 = 0x1a
  if r5 != 0x0 goto jmp_15280

jmp_15228:
  r5 = r4
  r5 &= 0x1b
  if r5 != 0x1a goto jmp_152a0

jmp_15240:
  r5 = data_0000 ll
  if r4 < r5 goto jmp_16350
  w4 = *(u8 *)(r1 + 0x5270)
  if r4 == 0x0 goto jmp_129a8
  goto jmp_13678

jmp_15270:
  r4 = 0x1a
  if r5 == 0x0 goto jmp_15228

jmp_15280:
  r4 = r0
  r5 = r4
  r5 &= 0x1b
  if r5 == 0x1a goto jmp_15240

jmp_152a0:
  r5 = r4
  r5 <<= 0x20
  r5 >>= 0x20
  if r5 == 0x1a goto jmp_129a8
  r7 = r4
  r7 >>= 0x20
  r6 = r4
  goto jmp_11090

jmp_152e0:
  w7 = *(u8 *)(r5 + 0x5a)
  r9 = 0x3 ll
  if r7 == 0x1 goto jmp_155b0
  r9 = 0x3
  r2 = 0x1a
  if r7 != 0x0 goto jmp_155c0

jmp_15318:
  r6 = r2
  r6 &= 0x1b
  if r6 != 0x1a goto jmp_155e0

jmp_15330:
  r6 = data_0000 ll
  if r2 < r6 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7c8) = r2
  r6 = *(u64 *)(r10 - 0x7d8)
  r6 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7b8) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_15c40
  w6 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c0) = r6
  if r6 > 0xb goto jmp_16a50
  r6 = *(u64 *)(r10 - 0x7c0)
  if r6 == 0x0 goto jmp_15c40
  r6 = *(u64 *)(r10 - 0x7b8)
  r6 += r2
  *(u64 *)(r10 - 0x7b8) = r6
  r2 = *(u64 *)(r10 - 0x7c0)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c0) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b0) = r2
  goto jmp_15440

jmp_15428:
  r2 = *(u64 *)(r10 - 0x7e8)
  r6 = *(u64 *)(r10 - 0x7b8)
  if r2 == r6 goto jmp_15c40

jmp_15440:
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7e8)
  r6 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d0) = r6
  r2 = *(u64 *)(r6 + 0x8)
  *(u64 *)(r10 - 0x7d8) = r2
  r7 = *(u64 *)(r10 - 0x7b0)
  r2 = *(u64 *)(r10 - 0x7c0)
  goto jmp_15500

jmp_154a8:
  r6 = *(u64 *)(r10 - 0x7e0)
  *(u8 *)(r6 + 0x0) = 0x1
  r6 = *(u64 *)(r10 - 0x7c8)
  r6 += 0x1
  *(u64 *)(r10 - 0x7c8) = r6

jmp_154d0:
  r7 += 0x20
  r6 = *(u64 *)(r10 - 0x7e0)
  r6 += 0x1
  *(u64 *)(r10 - 0x7e0) = r6
  r2 += -0x20
  if r2 == 0x0 goto jmp_15428

jmp_15500:
  r6 = *(u64 *)(r7 - 0x18)
  r9 = *(u64 *)(r10 - 0x7d8)
  if r6 != r9 goto jmp_154d0
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x10)
  r6 = *(u64 *)(r7 - 0x10)
  if r6 != r9 goto jmp_154d0
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x18)
  r6 = *(u64 *)(r7 - 0x8)
  if r6 != r9 goto jmp_154d0
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x20)
  r6 = *(u64 *)(r7 + 0x0)
  if r6 != r9 goto jmp_154d0
  r6 = *(u64 *)(r10 - 0x7e0)
  w6 = *(u8 *)(r6 + 0x0)
  if r6 != 0x0 goto jmp_154d0
  r6 = *(u64 *)(r10 - 0x7d0)
  w6 = *(u8 *)(r6 + 0x1)
  if r6 != 0x0 goto jmp_154a8
  goto jmp_14ce0

jmp_155b0:
  r2 = 0x1a
  if r7 == 0x0 goto jmp_15318

jmp_155c0:
  r2 = r9
  r6 = r2
  r6 &= 0x1b
  if r6 == 0x1a goto jmp_15330

jmp_155e0:
  r5 = r2
  r5 <<= 0x20
  r5 >>= 0x20
  if r5 == 0x1a goto jmp_13078
  goto jmp_15928

jmp_15608:
  w7 = *(u8 *)(r5 + 0x5a)
  r9 = 0x3 ll
  if r7 == 0x1 goto jmp_158d8
  r9 = 0x3
  r2 = 0x1a
  if r7 != 0x0 goto jmp_158e8

jmp_15640:
  r6 = r2
  r6 &= 0x1b
  if r6 != 0x1a goto jmp_15908

jmp_15658:
  r6 = data_0000 ll
  if r2 < r6 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7c8) = r2
  r6 = *(u64 *)(r10 - 0x7d8)
  r6 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7b8) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_15c68
  w6 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c0) = r6
  if r6 > 0xb goto jmp_16a50
  r6 = *(u64 *)(r10 - 0x7c0)
  if r6 == 0x0 goto jmp_15c68
  r6 = *(u64 *)(r10 - 0x7b8)
  r6 += r2
  *(u64 *)(r10 - 0x7b8) = r6
  r2 = *(u64 *)(r10 - 0x7c0)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c0) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b0) = r2
  goto jmp_15768

jmp_15750:
  r2 = *(u64 *)(r10 - 0x7e8)
  r6 = *(u64 *)(r10 - 0x7b8)
  if r2 == r6 goto jmp_15c68

jmp_15768:
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7e8)
  r6 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d0) = r6
  r2 = *(u64 *)(r6 + 0x8)
  *(u64 *)(r10 - 0x7d8) = r2
  r7 = *(u64 *)(r10 - 0x7b0)
  r2 = *(u64 *)(r10 - 0x7c0)
  goto jmp_15828

jmp_157d0:
  r6 = *(u64 *)(r10 - 0x7e0)
  *(u8 *)(r6 + 0x0) = 0x1
  r6 = *(u64 *)(r10 - 0x7c8)
  r6 += 0x1
  *(u64 *)(r10 - 0x7c8) = r6

jmp_157f8:
  r7 += 0x20
  r6 = *(u64 *)(r10 - 0x7e0)
  r6 += 0x1
  *(u64 *)(r10 - 0x7e0) = r6
  r2 += -0x20
  if r2 == 0x0 goto jmp_15750

jmp_15828:
  r6 = *(u64 *)(r7 - 0x18)
  r9 = *(u64 *)(r10 - 0x7d8)
  if r6 != r9 goto jmp_157f8
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x10)
  r6 = *(u64 *)(r7 - 0x10)
  if r6 != r9 goto jmp_157f8
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x18)
  r6 = *(u64 *)(r7 - 0x8)
  if r6 != r9 goto jmp_157f8
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x20)
  r6 = *(u64 *)(r7 + 0x0)
  if r6 != r9 goto jmp_157f8
  r6 = *(u64 *)(r10 - 0x7e0)
  w6 = *(u8 *)(r6 + 0x0)
  if r6 != 0x0 goto jmp_157f8
  r6 = *(u64 *)(r10 - 0x7d0)
  w6 = *(u8 *)(r6 + 0x1)
  if r6 != 0x0 goto jmp_157d0
  goto jmp_14ce0

jmp_158d8:
  r2 = 0x1a
  if r7 == 0x0 goto jmp_15640

jmp_158e8:
  r2 = r9
  r6 = r2
  r6 &= 0x1b
  if r6 == 0x1a goto jmp_15658

jmp_15908:
  r5 = r2
  r5 <<= 0x20
  r5 >>= 0x20
  if r5 == 0x1a goto jmp_13130

jmp_15928:
  r9 = r2
  r9 >>= 0x20
  r0 = r2
  goto jmp_14c00

jmp_15948:
  w2 = *(u8 *)(r5 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_15be8
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_15bf8

jmp_15980:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_15c18

jmp_15998:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r6 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7c0) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_15c90
  w0 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c8) = r0
  if r0 > 0xb goto jmp_16638
  r0 = *(u64 *)(r10 - 0x7c8)
  if r0 == 0x0 goto jmp_15c90
  r0 = *(u64 *)(r10 - 0x7c0)
  r0 += r2
  *(u64 *)(r10 - 0x7c0) = r0
  r2 = *(u64 *)(r10 - 0x7c8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b8) = r2
  goto jmp_15aa0

jmp_15a88:
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r10 - 0x7c0)
  if r2 == r0 goto jmp_15c90

jmp_15aa0:
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d8) = r0
  r2 = *(u64 *)(r0 + 0x8)
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7b8)
  r9 = *(u64 *)(r10 - 0x7c8)
  goto jmp_15b20

jmp_15b00:
  r2 += 0x20
  r7 += 0x1
  r9 += -0x20
  if r9 == 0x0 goto jmp_15a88

jmp_15b20:
  r0 = *(u64 *)(r2 - 0x18)
  r6 = *(u64 *)(r10 - 0x7e0)
  if r0 != r6 goto jmp_15b00
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r2 - 0x10)
  if r0 != r6 goto jmp_15b00
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x18)
  r0 = *(u64 *)(r2 - 0x8)
  if r0 != r6 goto jmp_15b00
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x20)
  r0 = *(u64 *)(r2 + 0x0)
  if r0 != r6 goto jmp_15b00
  w0 = *(u8 *)(r7 + 0x0)
  if r0 != 0x0 goto jmp_15b00
  r0 = *(u64 *)(r10 - 0x7d8)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 == 0x0 goto jmp_14a10
  *(u8 *)(r7 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0x7d0)
  r0 += 0x1
  *(u64 *)(r10 - 0x7d0) = r0
  goto jmp_15b00

jmp_15be8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_15980

jmp_15bf8:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_15998

jmp_15c18:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_131e8
  goto jmp_14708

jmp_15c40:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7c8)
  r5 &= 0xff
  if r5 >= r2 goto jmp_13078
  goto jmp_14ce0

jmp_15c68:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7c8)
  r5 &= 0xff
  if r5 >= r2 goto jmp_13130
  goto jmp_14ce0

jmp_15c90:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7d0)
  r5 &= 0xff
  if r5 >= r2 goto jmp_131e8
  goto jmp_14a10

jmp_15cb8:
  r2 = *(u64 *)(r5 + 0x30)
  r6 = -0x2532931b43a2bde8 ll
  if r2 != r6 goto jmp_15d18
  r2 = *(u64 *)(r5 + 0x38)
  r6 = 0x270db9834dfc1ab6 ll
  if r2 != r6 goto jmp_15d18
  r2 = *(u64 *)(r5 + 0x40)
  r6 = -0x3745e27d7064202 ll
  if r2 == r6 goto jmp_16770

jmp_15d18:
  w2 = *(u8 *)(r5 + 0x1)
  if r2 == 0x0 goto jmp_15e90

jmp_15d28:
  r9 = 0x1
  r2 = *(u64 *)(r8 + 0xd1)
  if r2 < r3 goto jmp_14c00
  if r8 == r1 goto jmp_15d78
  r5 = r2
  r5 -= r3
  *(u64 *)(r8 + 0xd1) = r5
  if r2 != r3 goto jmp_15d70
  *(u8 *)(r8 + 0xa0) = 0x0

jmp_15d70:
  if r3 != 0x0 goto jmp_15070

jmp_15d78:
  r0 = 0x6
  r2 = *(u64 *)(r8 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r8 + 0x40)
  r3 = -0x56ff00817a0a73c6 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x28)
  r3 = -0x6c5e9a281e0922fa ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x30)
  r3 = -0x53861431b91e3427 ll
  if r2 != r3 goto jmp_14c00
  r2 = *(u64 *)(r1 + 0x38)
  r3 = -0x6ec8a4a0127a4be4 ll
  if r2 != r3 goto jmp_14c00
  r1 = *(u64 *)(r1 + 0x40)
  r2 = -0x56ff00817a0a73c6 ll
  if r1 != r2 goto jmp_14c00

jmp_15e80:
  r0 = 0x1a
  goto jmp_14c00

jmp_15e90:
  r0 = 0x7
  goto jmp_14c00

jmp_15ea0:
  r0 = 0x9
  r9 = 0x6
  goto jmp_14c00

jmp_15eb8:
  w2 = *(u8 *)(r1 + 0x7b2a)
  r5 = 0x3 ll
  if r2 == 0x1 goto jmp_15f48
  r5 = 0x3
  r6 = 0x1a
  if r2 != 0x0 goto jmp_15f58

jmp_15ef0:
  r2 = r6
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_15f78

jmp_15f08:
  r2 = data_0000 ll
  if r6 < r2 goto jmp_15f38
  w2 = *(u8 *)(r1 + 0x7b28)
  if r2 == 0x0 goto jmp_137e8
  goto jmp_13678

jmp_15f38:
  r6 = 0x9
  goto jmp_13680

jmp_15f48:
  r6 = 0x1a
  if r2 == 0x0 goto jmp_15ef0

jmp_15f58:
  r6 = r5
  r2 = r6
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_15f08

jmp_15f78:
  r2 = r6
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_137e8
  goto jmp_136d8

jmp_15fa0:
  r9 = 0x0
  r0 = 0x3
  goto jmp_14c00

jmp_15fb8:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x738)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_15fe8:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x750)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_16018:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x748)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_16048:
  r0 = 0x6
  goto jmp_14c00

jmp_16058:
  w2 = *(u8 *)(r5 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_162f8
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_16308

jmp_16090:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_16328

jmp_160a8:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r6 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7c0) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r6
  if r6 == 0x18 goto jmp_166c0
  w0 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c8) = r0
  if r0 > 0xb goto jmp_16638
  r0 = *(u64 *)(r10 - 0x7c8)
  if r0 == 0x0 goto jmp_166c0
  r0 = *(u64 *)(r10 - 0x7c0)
  r0 += r2
  *(u64 *)(r10 - 0x7c0) = r0
  r2 = *(u64 *)(r10 - 0x7c8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b8) = r2
  goto jmp_161b0

jmp_16198:
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r10 - 0x7c0)
  if r2 == r0 goto jmp_166c0

jmp_161b0:
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d8) = r0
  r2 = *(u64 *)(r0 + 0x8)
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7b8)
  r9 = *(u64 *)(r10 - 0x7c8)
  goto jmp_16230

jmp_16210:
  r2 += 0x20
  r7 += 0x1
  r9 += -0x20
  if r9 == 0x0 goto jmp_16198

jmp_16230:
  r0 = *(u64 *)(r2 - 0x18)
  r6 = *(u64 *)(r10 - 0x7e0)
  if r0 != r6 goto jmp_16210
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r2 - 0x10)
  if r0 != r6 goto jmp_16210
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x18)
  r0 = *(u64 *)(r2 - 0x8)
  if r0 != r6 goto jmp_16210
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x20)
  r0 = *(u64 *)(r2 + 0x0)
  if r0 != r6 goto jmp_16210
  w0 = *(u8 *)(r7 + 0x0)
  if r0 != 0x0 goto jmp_16210
  r0 = *(u64 *)(r10 - 0x7d8)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 == 0x0 goto jmp_14a10
  *(u8 *)(r7 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0x7d0)
  r0 += 0x1
  *(u64 *)(r10 - 0x7d0) = r0
  goto jmp_16210

jmp_162f8:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_16090

jmp_16308:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_160a8

jmp_16328:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x1a goto jmp_14a90
  goto jmp_14708

jmp_16350:
  r6 = 0x9
  goto jmp_11090

jmp_16360:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x7d8)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_16390:
  w2 = *(u8 *)(r5 + 0x5a)
  r7 = 0x3 ll
  if r2 == 0x1 goto jmp_16668
  r7 = 0x3
  r0 = 0x1a
  if r2 != 0x0 goto jmp_16678

jmp_163c8:
  r2 = r0
  r2 &= 0x1b
  if r2 != 0x1a goto jmp_16698

jmp_163e0:
  r2 = data_0000 ll
  if r0 < r2 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r0 = *(u64 *)(r10 - 0x7d8)
  r0 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7c0) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r0
  if r0 == 0x20 goto jmp_166e8
  w0 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c8) = r0
  if r0 > 0xb goto jmp_16638
  r0 = *(u64 *)(r10 - 0x7c8)
  if r0 == 0x0 goto jmp_166e8
  r0 = *(u64 *)(r10 - 0x7c0)
  r0 += r2
  *(u64 *)(r10 - 0x7c0) = r0
  r2 = *(u64 *)(r10 - 0x7c8)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7d0) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b8) = r2
  goto jmp_164f0

jmp_164d8:
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r10 - 0x7c0)
  if r2 == r0 goto jmp_166e8

jmp_164f0:
  r7 = r10
  r7 += -0x1000
  r2 = *(u64 *)(r10 - 0x7e8)
  r0 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d8) = r0
  r2 = *(u64 *)(r0 + 0x8)
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7b8)
  r9 = *(u64 *)(r10 - 0x7c8)
  goto jmp_16570

jmp_16550:
  r2 += 0x20
  r7 += 0x1
  r9 += -0x20
  if r9 == 0x0 goto jmp_164d8

jmp_16570:
  r6 = *(u64 *)(r2 - 0x18)
  r0 = *(u64 *)(r10 - 0x7e0)
  if r6 != r0 goto jmp_16550
  r0 = *(u64 *)(r10 - 0x7d8)
  r6 = *(u64 *)(r0 + 0x10)
  r0 = *(u64 *)(r2 - 0x10)
  if r0 != r6 goto jmp_16550
  r0 = *(u64 *)(r10 - 0x7d8)
  r0 = *(u64 *)(r0 + 0x18)
  r6 = *(u64 *)(r2 - 0x8)
  if r6 != r0 goto jmp_16550
  r0 = *(u64 *)(r10 - 0x7d8)
  r0 = *(u64 *)(r0 + 0x20)
  r6 = *(u64 *)(r2 + 0x0)
  if r6 != r0 goto jmp_16550
  w0 = *(u8 *)(r7 + 0x0)
  if r0 != 0x0 goto jmp_16550
  r0 = *(u64 *)(r10 - 0x7d8)
  w0 = *(u8 *)(r0 + 0x1)
  if r0 == 0x0 goto jmp_14ce0
  *(u8 *)(r7 + 0x0) = 0x1
  r0 = *(u64 *)(r10 - 0x7d0)
  r0 += 0x1
  *(u64 *)(r10 - 0x7d0) = r0
  goto jmp_16550

jmp_16638:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x7c8)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_16668:
  r0 = 0x1a
  if r2 == 0x0 goto jmp_163c8

jmp_16678:
  r0 = r7
  r2 = r0
  r2 &= 0x1b
  if r2 == 0x1a goto jmp_163e0

jmp_16698:
  r2 = r0
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 != 0x1a goto jmp_14708
  goto jmp_15060

jmp_166c0:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7d0)
  r5 &= 0xff
  if r5 < r2 goto jmp_14a10
  goto jmp_14a90

jmp_166e8:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7d0)
  r5 &= 0xff
  if r5 < r2 goto jmp_14ce0
  goto jmp_15060

jmp_16710:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x728)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_16740:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x730)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_16770:
  w7 = *(u8 *)(r5 + 0x5a)
  r9 = 0x3 ll
  if r7 == 0x1 goto jmp_16a80
  r9 = 0x3
  r2 = 0x1a
  if r7 != 0x0 goto jmp_16a90

jmp_167a8:
  r6 = r2
  r6 &= 0x1b
  if r6 != 0x1a goto jmp_16ab0

jmp_167c0:
  r6 = data_0000 ll
  if r2 < r6 goto jmp_168b8
  r2 = 0x0
  *(u64 *)(r10 - 0x7c8) = r2
  r6 = *(u64 *)(r10 - 0x7d8)
  r6 <<= 0x3
  r2 = r10
  r2 += -0xfe0
  *(u64 *)(r10 - 0x7b8) = r2
  *(u32 *)(r10 - 0xff9) = 0x0
  *(u64 *)(r10 - 0x1000) = 0x0
  r2 = r6
  if r6 == 0x20 goto jmp_16ad8
  w6 = *(u8 *)(r5 + 0x59)
  *(u64 *)(r10 - 0x7c0) = r6
  if r6 > 0xb goto jmp_16a50
  r6 = *(u64 *)(r10 - 0x7c0)
  if r6 == 0x0 goto jmp_16ad8
  r6 = *(u64 *)(r10 - 0x7b8)
  r6 += r2
  *(u64 *)(r10 - 0x7b8) = r6
  r2 = *(u64 *)(r10 - 0x7c0)
  r2 <<= 0x5
  *(u64 *)(r10 - 0x7c0) = r2
  r2 = 0x0
  *(u64 *)(r10 - 0x7c8) = r2
  r2 = r5
  r2 += 0x73
  *(u64 *)(r10 - 0x7b0) = r2
  goto jmp_168e0

jmp_168b8:
  r0 = 0x9
  goto jmp_14c00

jmp_168c8:
  r2 = *(u64 *)(r10 - 0x7e8)
  r6 = *(u64 *)(r10 - 0x7b8)
  if r2 == r6 goto jmp_16ad8

jmp_168e0:
  r2 = r10
  r2 += -0x1000
  *(u64 *)(r10 - 0x7e0) = r2
  r2 = *(u64 *)(r10 - 0x7e8)
  r6 = *(u64 *)(r2 + 0x0)
  r2 += 0x8
  *(u64 *)(r10 - 0x7e8) = r2
  *(u64 *)(r10 - 0x7d0) = r6
  r2 = *(u64 *)(r6 + 0x8)
  *(u64 *)(r10 - 0x7d8) = r2
  r7 = *(u64 *)(r10 - 0x7b0)
  r2 = *(u64 *)(r10 - 0x7c0)
  goto jmp_16978

jmp_16948:
  r7 += 0x20
  r6 = *(u64 *)(r10 - 0x7e0)
  r6 += 0x1
  *(u64 *)(r10 - 0x7e0) = r6
  r2 += -0x20
  if r2 == 0x0 goto jmp_168c8

jmp_16978:
  r6 = *(u64 *)(r7 - 0x18)
  r9 = *(u64 *)(r10 - 0x7d8)
  if r6 != r9 goto jmp_16948
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x10)
  r6 = *(u64 *)(r7 - 0x10)
  if r6 != r9 goto jmp_16948
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x18)
  r6 = *(u64 *)(r7 - 0x8)
  if r6 != r9 goto jmp_16948
  r6 = *(u64 *)(r10 - 0x7d0)
  r9 = *(u64 *)(r6 + 0x20)
  r6 = *(u64 *)(r7 + 0x0)
  if r6 != r9 goto jmp_16948
  r6 = *(u64 *)(r10 - 0x7e0)
  w6 = *(u8 *)(r6 + 0x0)
  if r6 != 0x0 goto jmp_16948
  r6 = *(u64 *)(r10 - 0x7d0)
  w6 = *(u8 *)(r6 + 0x1)
  if r6 == 0x0 goto jmp_14ce0
  r6 = *(u64 *)(r10 - 0x7e0)
  *(u8 *)(r6 + 0x0) = 0x1
  r6 = *(u64 *)(r10 - 0x7c8)
  r6 += 0x1
  *(u64 *)(r10 - 0x7c8) = r6
  goto jmp_16948

jmp_16a50:
  r1 = 0x0
  r2 = *(u64 *)(r10 - 0x7c0)
  r3 = 0xb
  r4 = data_1588 ll
  call fn_19728

jmp_16a80:
  r2 = 0x1a
  if r7 == 0x0 goto jmp_167a8

jmp_16a90:
  r2 = r9
  r6 = r2
  r6 &= 0x1b
  if r6 == 0x1a goto jmp_167c0

jmp_16ab0:
  r5 = r2
  r5 <<= 0x20
  r5 >>= 0x20
  if r5 != 0x1a goto jmp_15928
  goto jmp_15d28

jmp_16ad8:
  w2 = *(u8 *)(r5 + 0x58)
  r5 = *(u64 *)(r10 - 0x7c8)
  r5 &= 0xff
  if r5 < r2 goto jmp_14ce0
  goto jmp_15d28

fn_16b00:
  call sol_memcpy_
  exit

fn_16b10:
  r2 &= 0xff
  call sol_memset_
  exit

fn_16b28:
  r1 += -0x1
  r1 &= 0xff
  r0 = 0x1
  if r1 < 0xb goto jmp_16b50
  r0 = 0x0

jmp_16b50:
  exit

fn_16b58:
  r6 = r1
  *(u32 *)(r10 - 0xfec) = 0x0
  *(u32 *)(r10 - 0xfef) = 0x0
  r2 = r10
  r2 += -0x1000
  r7 = 0x0
  r1 = data_0128 ll
  r3 = 0x0
  r4 = 0x11
  call sol_get_sysvar
  if r0 == 0x0 goto jmp_16bd0
  *(u32 *)(r6 + 0x4) = 0x10
  r7 = 0x1
  goto jmp_16c00

jmp_16bd0:
  r1 = *(u64 *)(r10 - 0xff0)
  *(u64 *)(r6 + 0x18) = r1
  r1 = *(u64 *)(r10 - 0xff8)
  *(u64 *)(r6 + 0x10) = r1
  r1 = *(u64 *)(r10 - 0x1000)
  *(u64 *)(r6 + 0x8) = r1

jmp_16c00:
  *(u32 *)(r6 + 0x0) = w7
  exit

fn_16c10:
  r4 = r2
  r4 <<= 0x20
  r4 >>= 0x20
  if r4 s<= 0xc goto jmp_16c70
  if r4 s> 0x26 goto jmp_16ca0
  if r4 == 0xd goto jmp_170b0
  if r4 != 0x22 goto jmp_16ce0
  r3 &= 0xffffff
  if r3 < 0x10000 goto jmp_170d8
  *(u64 *)(r1 + 0x2) = 0x0
  *(u16 *)(r1 + 0x0) = 0x225c
  goto jmp_174e8

jmp_16c70:
  if r4 == 0x0 goto jmp_16cc8
  if r4 == 0x9 goto jmp_17128
  if r4 != 0xa goto jmp_16ce0
  *(u64 *)(r1 + 0x2) = 0x0
  *(u16 *)(r1 + 0x0) = 0x6e5c
  goto jmp_174e8

jmp_16ca0:
  if r4 == 0x27 goto jmp_170c8
  if r4 != 0x5c goto jmp_16ce0
  *(u64 *)(r1 + 0x2) = 0x0
  *(u16 *)(r1 + 0x0) = 0x5c5c
  goto jmp_174e8

jmp_16cc8:
  *(u64 *)(r1 + 0x2) = 0x0
  *(u16 *)(r1 + 0x0) = 0x305c
  goto jmp_174e8

jmp_16ce0:
  r3 &= 0x1
  if r3 == 0x0 goto jmp_170d8
  if r4 <= 0x2ff goto jmp_170d8
  r6 = r1
  r1 = r2
  r7 = r2
  call fn_1a1b0
  r2 = r7
  r1 = r6
  if r0 == 0x0 goto jmp_170d8
  r3 = 0xfffffffc ll
  r4 = r2
  r4 &= r3
  r4 >>= 0x1
  r3 = r2
  r3 |= r4
  r4 = 0xfffffff8 ll
  r5 = r3
  r5 &= r4
  r5 >>= 0x2
  r3 |= r5
  r4 = 0xffffffe0 ll
  r5 = r3
  r5 &= r4
  r5 >>= 0x4
  r3 |= r5
  r5 = 0xfff00000 ll
  r4 = r2
  r4 &= r5
  r4 >>= 0x14
  r6 = r2
  r6 >>= 0x10
  r6 &= 0xf
  r7 = r2
  r7 >>= 0x4
  r7 &= 0xf
  r0 = str_0348 ll
  r5 = str_0348 ll
  r5 += r7
  r8 = r2
  r8 >>= 0x8
  r8 &= 0xf
  r9 = r2
  r9 >>= 0xc
  r9 &= 0xf
  r7 = str_0348 ll
  r7 += r4
  r4 = str_0348 ll
  r4 += r6
  r6 = str_0348 ll
  r6 += r9
  r9 = str_0348 ll
  r9 += r8
  r2 &= 0xf
  r0 += r2
  w2 = *(u8 *)(r0 + 0x0)
  *(u8 *)(r10 - 0xfee) = w2
  w2 = *(u8 *)(r5 + 0x0)
  *(u8 *)(r10 - 0xfef) = w2
  w2 = *(u8 *)(r9 + 0x0)
  *(u8 *)(r10 - 0xff0) = w2
  w2 = *(u8 *)(r6 + 0x0)
  *(u8 *)(r10 - 0xff1) = w2
  w2 = *(u8 *)(r4 + 0x0)
  *(u8 *)(r10 - 0xff2) = w2
  w2 = *(u8 *)(r7 + 0x0)
  *(u8 *)(r10 - 0xff3) = w2
  r2 = 0xfffffe00 ll
  r4 = r3
  r4 &= r2
  r4 >>= 0x8
  r3 |= r4
  r2 = 0xfffe0000 ll
  r4 = r3
  r4 &= r2
  r4 >>= 0x10
  r3 |= r4
  r3 ^= -0x1
  r4 = r3
  r4 &= -0x2
  r3 >>= 0x1
  r3 &= 0x55555555
  r4 -= r3
  r2 = r4
  r2 &= 0x33333333
  r4 >>= 0x2
  r4 &= 0x33333333
  r2 += r4
  r3 = r2
  r3 >>= 0x4
  r2 += r3
  *(u8 *)(r10 - 0xff4) = 0x0
  *(u16 *)(r10 - 0xff6) = 0x0
  *(u8 *)(r10 - 0xfed) = 0x7d
  r2 &= 0xf0f0f0f
  r2 *= 0x1010101
  r2 >>= 0x1a
  r2 &= 0x3f
  r3 = r10
  r3 += -0xff6
  r4 = r3
  r4 += r2
  *(u8 *)(r4 + 0x0) = 0x7b
  r2 += -0x2
  r3 += r2
  *(u16 *)(r3 + 0x0) = 0x755c
  w3 = *(u16 *)(r10 - 0xfee)
  *(u16 *)(r1 + 0x8) = w3
  r3 = *(u64 *)(r10 - 0xff6)
  goto jmp_174c0

jmp_170b0:
  *(u64 *)(r1 + 0x2) = 0x0
  *(u16 *)(r1 + 0x0) = 0x725c
  goto jmp_174e8

jmp_170c8:
  r3 &= 0x100
  if r3 != 0x0 goto jmp_174d8

jmp_170d8:
  r6 = r1
  r7 = r2
  r1 = r2
  call fn_19ae0
  if r0 == 0x0 goto jmp_17140
  r1 = r6
  *(u32 *)(r1 + 0x0) = w7
  r3 = 0x81
  r2 = 0x80
  goto jmp_174f8

jmp_17128:
  *(u64 *)(r1 + 0x2) = 0x0
  *(u16 *)(r1 + 0x0) = 0x745c
  goto jmp_174e8

jmp_17140:
  r1 = 0xfffffffc ll
  r2 = r7
  r3 = r2
  r3 &= r1
  r3 >>= 0x1
  r1 = r2
  r1 |= r3
  r3 = 0xfffffff8 ll
  r4 = r1
  r4 &= r3
  r4 >>= 0x2
  r1 |= r4
  r3 = 0xffffffe0 ll
  r4 = r1
  r4 &= r3
  r4 >>= 0x4
  r1 |= r4
  r4 = 0xfff00000 ll
  r3 = r2
  r3 &= r4
  r3 >>= 0x14
  r0 = r2
  r0 >>= 0x10
  r0 &= 0xf
  r7 >>= 0x4
  r7 &= 0xf
  r5 = str_0348 ll
  r4 = str_0348 ll
  r4 += r7
  r8 = r2
  r8 >>= 0x8
  r8 &= 0xf
  r9 = r2
  r9 >>= 0xc
  r9 &= 0xf
  r7 = str_0348 ll
  r7 += r3
  r3 = str_0348 ll
  r3 += r0
  r0 = str_0348 ll
  r0 += r9
  r9 = str_0348 ll
  r9 += r8
  r2 &= 0xf
  r5 += r2
  w2 = *(u8 *)(r5 + 0x0)
  *(u8 *)(r10 - 0xff8) = w2
  w2 = *(u8 *)(r4 + 0x0)
  *(u8 *)(r10 - 0xff9) = w2
  w2 = *(u8 *)(r9 + 0x0)
  *(u8 *)(r10 - 0xffa) = w2
  w2 = *(u8 *)(r0 + 0x0)
  *(u8 *)(r10 - 0xffb) = w2
  w2 = *(u8 *)(r3 + 0x0)
  *(u8 *)(r10 - 0xffc) = w2
  w2 = *(u8 *)(r7 + 0x0)
  *(u8 *)(r10 - 0xffd) = w2
  r2 = 0xfffffe00 ll
  r3 = r1
  r3 &= r2
  r3 >>= 0x8
  r1 |= r3
  r2 = 0xfffe0000 ll
  r3 = r1
  r3 &= r2
  r3 >>= 0x10
  r1 |= r3
  r1 ^= -0x1
  r3 = r1
  r3 &= -0x2
  r1 >>= 0x1
  r1 &= 0x55555555
  r3 -= r1
  r2 = r3
  r2 &= 0x33333333
  r3 >>= 0x2
  r3 &= 0x33333333
  r2 += r3
  r1 = r2
  r1 >>= 0x4
  r2 += r1
  *(u8 *)(r10 - 0xffe) = 0x0
  *(u16 *)(r10 - 0x1000) = 0x0
  *(u8 *)(r10 - 0xff7) = 0x7d
  r2 &= 0xf0f0f0f
  r2 *= 0x1010101
  r2 >>= 0x1a
  r2 &= 0x3f
  r1 = r10
  r1 += -0x1000
  r3 = r1
  r3 += r2
  *(u8 *)(r3 + 0x0) = 0x7b
  r2 += -0x2
  r1 += r2
  *(u16 *)(r1 + 0x0) = 0x755c
  w3 = *(u16 *)(r10 - 0xff8)
  r1 = r6
  *(u16 *)(r1 + 0x8) = w3
  r3 = *(u64 *)(r10 - 0x1000)

jmp_174c0:
  *(u64 *)(r1 + 0x0) = r3
  r3 = 0xa
  goto jmp_174f8

jmp_174d8:
  *(u64 *)(r1 + 0x2) = 0x0
  *(u16 *)(r1 + 0x0) = 0x275c

jmp_174e8:
  r3 = 0x2
  r2 = 0x0

jmp_174f8:
  *(u8 *)(r1 + 0xd) = w3
  *(u8 *)(r1 + 0xc) = w2
  exit

fn_17510:
  r0 = r1
  r8 = *(u64 *)(r10 - 0x1000)
  if r2 == 0x0 goto jmp_17560
  r2 = 0x110000
  w6 = *(u32 *)(r0 + 0x10)
  r1 = r6
  r1 &= 0x200000
  if r1 != 0x0 goto jmp_17578
  r9 = r8
  goto jmp_17590

jmp_17560:
  r2 = 0x2d
  w6 = *(u32 *)(r0 + 0x10)
  goto jmp_17580

jmp_17578:
  r2 = 0x2b

jmp_17580:
  r9 = r8
  r9 += 0x1

jmp_17590:
  r1 = r6
  r1 &= 0x800000
  *(u64 *)(r10 - 0xfe8) = r4
  *(u64 *)(r10 - 0xfe0) = r2
  if r1 != 0x0 goto jmp_17678
  r1 = 0x0
  *(u64 *)(r10 - 0xff0) = r1
  r7 = r9
  w2 = *(u16 *)(r0 + 0x14)
  *(u64 *)(r10 - 0xfd8) = r8
  if r7 < r2 goto jmp_17778

jmp_175e8:
  r9 = r5
  r8 = *(u64 *)(r0 + 0x8)
  r7 = *(u64 *)(r0 + 0x0)
  r1 = r7
  r2 = r8
  r3 = *(u64 *)(r10 - 0xfe0)
  r4 = *(u64 *)(r10 - 0xff0)
  r5 = *(u64 *)(r10 - 0xfe8)
  call fn_1a5f8
  r6 = 0x1
  if r0 != 0x0 goto jmp_17b10
  r4 = *(u64 *)(r8 + 0x18)
  r1 = r7
  r2 = r9
  r3 = *(u64 *)(r10 - 0xfd8)
  callx r4
  r6 = r0
  goto jmp_17b10

jmp_17678:
  *(u64 *)(r10 - 0xff0) = r3
  if r4 >= 0x20 goto jmp_17708
  r7 = 0x0
  if r4 == 0x0 goto jmp_17758
  r1 = *(u64 *)(r10 - 0xff0)
  r2 = r4
  goto jmp_176d0

jmp_176b0:
  r7 += r3
  r1 += 0x1
  r2 += -0x1
  if r2 == 0x0 goto jmp_17758

jmp_176d0:
  w4 = *(u8 *)(r1 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  r3 = 0x1
  if r4 s> -0x41 goto jmp_176b0
  r3 = 0x0
  goto jmp_176b0

jmp_17708:
  r1 = r3
  r2 = r4
  r7 = r6
  r6 = r5
  *(u64 *)(r10 - 0xfc8) = r0
  call fn_18c00
  r5 = r6
  r6 = r7
  r7 = r0
  r0 = *(u64 *)(r10 - 0xfc8)

jmp_17758:
  r7 += r9
  w2 = *(u16 *)(r0 + 0x14)
  *(u64 *)(r10 - 0xfd8) = r8
  if r7 >= r2 goto jmp_175e8

jmp_17778:
  r1 = r6
  r1 &= 0x1000000
  *(u64 *)(r10 - 0xfc0) = r5
  if r1 != 0x0 goto jmp_177e0
  r2 -= r7
  r1 = r6
  r1 >>= 0x1d
  r1 &= 0x3
  if r1 s> 0x1 goto jmp_178e8
  r3 = 0x0
  if r1 == 0x0 goto jmp_17910
  r3 = r2
  goto jmp_17910

jmp_177e0:
  *(u64 *)(r10 - 0xfd0) = r2
  r2 = *(u64 *)(r0 + 0x10)
  r1 = 0x9fe00000 ll
  *(u64 *)(r10 - 0xfb8) = r2
  r2 &= r1
  r2 |= 0x20000030
  *(u32 *)(r0 + 0x10) = w2
  r1 = *(u64 *)(r0 + 0x0)
  *(u64 *)(r10 - 0xfc8) = r0
  r9 = *(u64 *)(r0 + 0x8)
  *(u64 *)(r10 - 0xff8) = r1
  r2 = r9
  r3 = *(u64 *)(r10 - 0xfe0)
  r4 = *(u64 *)(r10 - 0xff0)
  r5 = *(u64 *)(r10 - 0xfe8)
  call fn_1a5f8
  r6 = 0x1
  if r0 != 0x0 goto jmp_17b10
  r8 = *(u64 *)(r10 - 0xfd0)
  r8 -= r7
  r7 = 0x0
  r8 &= 0xffff

jmp_17898:
  r1 = r7
  r1 &= 0xffff
  if r1 >= r8 goto jmp_17ac0
  r3 = *(u64 *)(r9 + 0x20)
  r1 = *(u64 *)(r10 - 0xff8)
  r2 = 0x30
  callx r3
  r7 += 0x1
  if r0 == 0x0 goto jmp_17898
  goto jmp_17b10

jmp_178e8:
  r3 = r2
  if r1 != 0x2 goto jmp_17910
  r3 = r2
  r3 &= 0xfffe
  r3 >>= 0x1

jmp_17910:
  *(u64 *)(r10 - 0xfd0) = r2
  r6 &= 0x1fffff
  *(u64 *)(r10 - 0xff8) = r6
  r8 = 0x0
  r7 = *(u64 *)(r0 + 0x8)
  r9 = *(u64 *)(r0 + 0x0)
  *(u64 *)(r10 - 0xfc8) = r3
  r6 = r3
  r6 &= 0xffff

jmp_17958:
  r1 = r8
  r1 &= 0xffff
  if r1 >= r6 goto jmp_179b0
  r3 = *(u64 *)(r7 + 0x20)
  r1 = r9
  r2 = *(u64 *)(r10 - 0xff8)
  callx r3
  r8 += 0x1
  if r0 == 0x0 goto jmp_17958
  r6 = 0x1
  goto jmp_17b10

jmp_179b0:
  r1 = r9
  r2 = r7
  r3 = *(u64 *)(r10 - 0xfe0)
  r4 = *(u64 *)(r10 - 0xff0)
  r5 = *(u64 *)(r10 - 0xfe8)
  call fn_1a5f8
  r6 = 0x1
  if r0 != 0x0 goto jmp_17b10
  r4 = *(u64 *)(r7 + 0x18)
  r1 = r9
  r2 = *(u64 *)(r10 - 0xfc0)
  r3 = *(u64 *)(r10 - 0xfd8)
  callx r4
  r2 = *(u64 *)(r10 - 0xfd0)
  if r0 != 0x0 goto jmp_17b10
  r1 = *(u64 *)(r10 - 0xfc8)
  r2 -= r1
  r8 = 0x0
  r2 &= 0xffff
  *(u64 *)(r10 - 0xfd0) = r2

jmp_17a50:
  r1 = r8
  r1 &= 0xffff
  r6 = 0x1
  if r1 < r2 goto jmp_17a78
  r6 = 0x0

jmp_17a78:
  if r1 >= r2 goto jmp_17b10
  r3 = *(u64 *)(r7 + 0x20)
  r1 = r9
  r2 = *(u64 *)(r10 - 0xff8)
  callx r3
  r2 = *(u64 *)(r10 - 0xfd0)
  r8 += 0x1
  if r0 == 0x0 goto jmp_17a50
  goto jmp_17b10

jmp_17ac0:
  r4 = *(u64 *)(r9 + 0x18)
  r1 = *(u64 *)(r10 - 0xff8)
  r2 = *(u64 *)(r10 - 0xfc0)
  r3 = *(u64 *)(r10 - 0xfd8)
  callx r4
  if r0 != 0x0 goto jmp_17b10
  r1 = *(u64 *)(r10 - 0xfc8)
  r2 = *(u64 *)(r10 - 0xfb8)
  *(u64 *)(r1 + 0x10) = r2
  r6 = 0x0

jmp_17b10:
  r6 &= 0x1
  r0 = r6
  exit

fn_17b28:
  r8 = r3
  r9 = r2
  w6 = *(u32 *)(r1 + 0x10)
  r2 = r6
  r2 &= 0x18000000
  if r2 == 0x0 goto jmp_18000
  r2 = r6
  r2 &= 0x10000000
  if r2 != 0x0 goto jmp_17bf8
  if r8 >= 0x20 goto jmp_17d18
  r0 = 0x0
  if r8 == 0x0 goto jmp_17d80
  r2 = r9
  r3 = r8
  goto jmp_17bc0

jmp_17ba0:
  r0 += r4
  r2 += 0x1
  r3 += -0x1
  if r3 == 0x0 goto jmp_17d80

jmp_17bc0:
  w5 = *(u8 *)(r2 + 0x0)
  r5 <<= 0x38
  r5 s>>= 0x38
  r4 = 0x1
  if r5 s> -0x41 goto jmp_17ba0
  r4 = 0x0
  goto jmp_17ba0

jmp_17bf8:
  w0 = *(u16 *)(r1 + 0x16)
  if r0 == 0x0 goto jmp_17d68
  r2 = r9
  *(u64 *)(r10 - 0x1000) = r6
  r3 = r2
  r3 += r8
  r8 = 0x0
  r6 = r2
  r2 = r0
  goto jmp_17c80

jmp_17c48:
  r6 = r5
  r6 += 0x1

jmp_17c58:
  r8 = r6
  r8 -= r5
  r8 += r4
  r2 += -0x1
  if r2 == 0x0 goto jmp_17fd8

jmp_17c80:
  r5 = r6
  r4 = r8
  if r5 == r3 goto jmp_17f98
  w6 = *(u8 *)(r5 + 0x0)
  r7 = r6
  r7 <<= 0x38
  r7 s>>= 0x38
  if r7 s> -0x1 goto jmp_17c48
  if r6 < 0xe0 goto jmp_17ce8
  if r6 < 0xf0 goto jmp_17d00
  r6 = r5
  r6 += 0x4
  goto jmp_17c58

jmp_17ce8:
  r6 = r5
  r6 += 0x2
  goto jmp_17c58

jmp_17d00:
  r6 = r5
  r6 += 0x3
  goto jmp_17c58

jmp_17d18:
  r7 = r6
  r6 = r1
  r1 = r9
  r2 = r8
  call fn_18c00
  r1 = r6
  r6 = r7
  w2 = *(u16 *)(r1 + 0x14)
  if r0 < r2 goto jmp_17d90
  goto jmp_18000

jmp_17d68:
  r8 = 0x0
  r2 = 0x0
  r0 -= r2

jmp_17d80:
  w2 = *(u16 *)(r1 + 0x14)
  if r0 >= r2 goto jmp_18000

jmp_17d90:
  r2 -= r0
  *(u64 *)(r10 - 0xff0) = r2
  r3 = 0x0
  r2 = r6
  r2 >>= 0x1d
  r2 &= 0x3
  *(u64 *)(r10 - 0xfe8) = r9
  if r2 s> 0x1 goto jmp_17de8
  if r2 == 0x0 goto jmp_17e08
  r3 = *(u64 *)(r10 - 0xff0)
  goto jmp_17e08

jmp_17de8:
  if r2 != 0x2 goto jmp_17e08
  r3 = *(u64 *)(r10 - 0xff0)
  r3 &= 0xfffe
  r3 >>= 0x1

jmp_17e08:
  r6 &= 0x1fffff
  r9 = r6
  r7 = 0x0
  r2 = *(u64 *)(r1 + 0x8)
  *(u64 *)(r10 - 0x1000) = r2
  r1 = *(u64 *)(r1 + 0x0)
  *(u64 *)(r10 - 0xff8) = r1
  *(u64 *)(r10 - 0xfe0) = r3
  r6 = r3
  r6 &= 0xffff

jmp_17e58:
  r1 = r7
  r1 &= 0xffff
  if r1 >= r6 goto jmp_17eb8
  r1 = *(u64 *)(r10 - 0x1000)
  r3 = *(u64 *)(r1 + 0x20)
  r1 = *(u64 *)(r10 - 0xff8)
  r2 = r9
  callx r3
  r7 += 0x1
  if r0 == 0x0 goto jmp_17e58
  r7 = 0x1
  goto jmp_18040

jmp_17eb8:
  r1 = *(u64 *)(r10 - 0x1000)
  r4 = *(u64 *)(r1 + 0x18)
  r1 = *(u64 *)(r10 - 0xff8)
  r2 = *(u64 *)(r10 - 0xfe8)
  r3 = r8
  callx r4
  r7 = 0x1
  r6 = r9
  r9 = *(u64 *)(r10 - 0xff0)
  if r0 != 0x0 goto jmp_18040
  r1 = *(u64 *)(r10 - 0xfe0)
  r9 -= r1
  r8 = 0x0
  r9 &= 0xffff

jmp_17f28:
  r1 = r8
  r1 &= 0xffff
  r7 = 0x1
  if r1 < r9 goto jmp_17f50
  r7 = 0x0

jmp_17f50:
  if r1 >= r9 goto jmp_18040
  r1 = *(u64 *)(r10 - 0x1000)
  r3 = *(u64 *)(r1 + 0x20)
  r1 = *(u64 *)(r10 - 0xff8)
  r2 = r6
  callx r3
  r8 += 0x1
  if r0 == 0x0 goto jmp_17f28
  goto jmp_18040

jmp_17f98:
  if r2 != 0x0 goto jmp_17fa8
  r2 = 0x0

jmp_17fa8:
  r8 = r4
  r6 = *(u64 *)(r10 - 0x1000)
  r0 -= r2
  w2 = *(u16 *)(r1 + 0x14)
  if r0 < r2 goto jmp_17d90
  goto jmp_18000

jmp_17fd8:
  r2 = 0x0
  r6 = *(u64 *)(r10 - 0x1000)
  r0 -= r2
  w2 = *(u16 *)(r1 + 0x14)
  if r0 < r2 goto jmp_17d90

jmp_18000:
  r2 = *(u64 *)(r1 + 0x0)
  r1 = *(u64 *)(r1 + 0x8)
  r4 = *(u64 *)(r1 + 0x18)
  r1 = r2
  r2 = r9
  r3 = r8
  callx r4
  r7 = r0

jmp_18040:
  r7 &= 0x1
  r0 = r7
  exit

fn_18058:
  call fn_18060

fn_18060:
  *(u64 *)(r10 - 0xf78) = r4
  *(u64 *)(r10 - 0xf70) = r3
  if r2 >= 0x101 goto jmp_18090
  *(u64 *)(r10 - 0xf80) = r2
  *(u64 *)(r10 - 0xf88) = r1
  goto jmp_18120

jmp_18090:
  r0 = 0x100

jmp_18098:
  r6 = r1
  r6 += r0
  w6 = *(u8 *)(r6 + 0x0)
  r6 <<= 0x38
  r6 s>>= 0x38
  if r6 s> -0x41 goto jmp_180e0
  r0 += -0x1
  if r0 != 0x0 goto jmp_18098
  r0 = 0x0

jmp_180e0:
  *(u64 *)(r10 - 0xf88) = r1
  *(u64 *)(r10 - 0xf80) = r0
  if r0 >= r2 goto jmp_18120
  r0 = data_0d28 ll
  *(u64 *)(r10 - 0xf98) = r0
  *(u64 *)(r10 - 0xf90) = 0x5
  goto jmp_18130

jmp_18120:
  *(u64 *)(r10 - 0xf90) = 0x0
  *(u64 *)(r10 - 0xf98) = 0x1

jmp_18130:
  if r3 > r2 goto jmp_18968
  if r4 > r2 goto jmp_18280
  if r3 > r4 goto jmp_18a18
  if r3 == 0x0 goto jmp_18188
  if r3 >= r2 goto jmp_18188
  r0 = r1
  r0 += r3
  w0 = *(u8 *)(r0 + 0x0)
  r0 <<= 0x38
  r0 s>>= 0x38
  if r0 s<= -0x41 goto jmp_18330

jmp_18188:
  if r4 == 0x0 goto jmp_18280
  if r4 >= r2 goto jmp_18280
  r3 = r1
  r3 += r4
  w3 = *(u8 *)(r3 + 0x0)
  r3 <<= 0x38
  r3 s>>= 0x38
  if r3 s> -0x41 goto jmp_18280
  r3 = r4

jmp_181d0:
  r0 = r1
  r0 += r3
  w0 = *(u8 *)(r0 + 0x0)
  r0 <<= 0x38
  r0 s>>= 0x38
  if r0 s> -0x41 goto jmp_18218
  r3 += -0x1
  if r3 != 0x0 goto jmp_181d0
  r3 = 0x0

jmp_18218:
  r0 = r1
  r0 += r4
  w0 = *(u8 *)(r0 + 0x0)
  r0 <<= 0x38
  r0 s>>= 0x38
  if r0 s> -0x41 goto jmp_18260
  r4 += 0x1
  if r4 < r2 goto jmp_18218
  r4 = r2

jmp_18260:
  *(u64 *)(r10 - 0xfa0) = r4
  *(u64 *)(r10 - 0xfa8) = r3
  if r3 <= r4 goto jmp_183f8

jmp_18278:
  call fn_18058

jmp_18280:
  r1 = r10
  r1 += -0xf98
  *(u64 *)(r10 - 0xfe0) = r1
  r1 = 0x316f ll
  *(u64 *)(r10 - 0xfd8) = r1
  *(u64 *)(r10 - 0xfe8) = r1
  r1 = r10
  r1 += -0xf88
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xf78
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_0898 ll
  r3 = r5
  call fn_18bb0

jmp_18330:
  r0 = r3

jmp_18338:
  r4 = r1
  r4 += r0
  w4 = *(u8 *)(r4 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s> -0x41 goto jmp_18380
  r0 += -0x1
  if r0 != 0x0 goto jmp_18338
  r0 = 0x0

jmp_18380:
  r4 = r1
  r4 += r3
  w4 = *(u8 *)(r4 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s> -0x41 goto jmp_183c8
  r3 += 0x1
  if r3 < r2 goto jmp_18380
  r3 = r2

jmp_183c8:
  *(u64 *)(r10 - 0xfa0) = r3
  *(u64 *)(r10 - 0xfa8) = r0
  if r0 <= r3 goto jmp_18440

jmp_183e0:
  r4 = r3
  r3 = r0
  call fn_18058

jmp_183f8:
  if r3 != 0x0 goto jmp_18488

jmp_18400:
  if r4 >= r2 goto jmp_184c8
  r0 = r1
  r0 += r4
  w0 = *(u8 *)(r0 + 0x0)
  r0 <<= 0x38
  r0 s>>= 0x38
  if r0 s<= -0x41 goto jmp_18278
  goto jmp_184d0

jmp_18440:
  if r0 != 0x0 goto jmp_18510

jmp_18448:
  if r3 >= r2 goto jmp_18550
  r4 = r1
  r4 += r3
  w4 = *(u8 *)(r4 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s<= -0x41 goto jmp_183e0
  goto jmp_18558

jmp_18488:
  if r3 >= r2 goto jmp_18570
  r0 = r1
  r0 += r3
  w0 = *(u8 *)(r0 + 0x0)
  r0 <<= 0x38
  r0 s>>= 0x38
  if r0 s< -0x40 goto jmp_18278
  goto jmp_18400

jmp_184c8:
  if r4 != r2 goto jmp_18278

jmp_184d0:
  if r3 == r4 goto jmp_18560
  r1 += r3
  w4 = *(u8 *)(r1 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s<= -0x1 goto jmp_185c8
  r2 = r4
  goto jmp_18720

jmp_18510:
  if r0 >= r2 goto jmp_18580
  r4 = r1
  r4 += r0
  w4 = *(u8 *)(r4 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s< -0x40 goto jmp_183e0
  goto jmp_18448

jmp_18550:
  if r3 != r2 goto jmp_183e0

jmp_18558:
  if r0 != r3 goto jmp_18590

jmp_18560:
  r1 = r5
  call fn_18ae8

jmp_18570:
  if r3 != r2 goto jmp_18278
  goto jmp_18400

jmp_18580:
  if r0 != r2 goto jmp_183e0
  goto jmp_18448

jmp_18590:
  r1 += r0
  w4 = *(u8 *)(r1 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  if r4 s<= -0x1 goto jmp_18650
  r2 = r4
  goto jmp_18850

jmp_185c8:
  w3 = *(u8 *)(r1 + 0x1)
  r3 &= 0x3f
  r2 = r4
  r2 &= 0x1f
  if r4 <= -0x21 goto jmp_186d8
  r3 <<= 0x6
  w0 = *(u8 *)(r1 + 0x2)
  r0 &= 0x3f
  r3 |= r0
  if r4 < -0x10 goto jmp_18708
  r3 <<= 0x6
  w1 = *(u8 *)(r1 + 0x3)
  r1 &= 0x3f
  r3 |= r1
  r2 <<= 0x12
  r2 &= 0x1c0000
  goto jmp_18710

jmp_18650:
  w3 = *(u8 *)(r1 + 0x1)
  r3 &= 0x3f
  r2 = r4
  r2 &= 0x1f
  if r4 <= -0x21 goto jmp_186f0
  r3 <<= 0x6
  w0 = *(u8 *)(r1 + 0x2)
  r0 &= 0x3f
  r3 |= r0
  if r4 < -0x10 goto jmp_18838
  r3 <<= 0x6
  w1 = *(u8 *)(r1 + 0x3)
  r1 &= 0x3f
  r3 |= r1
  r2 <<= 0x12
  r2 &= 0x1c0000
  goto jmp_18840

jmp_186d8:
  r2 <<= 0x6
  r2 |= r3
  goto jmp_18720

jmp_186f0:
  r2 <<= 0x6
  r2 |= r3
  goto jmp_18850

jmp_18708:
  r2 <<= 0xc

jmp_18710:
  r3 |= r2
  r2 = r3

jmp_18720:
  *(u32 *)(r10 - 0xfb0) = w2
  r1 = r10
  r1 += -0xf98
  *(u64 *)(r10 - 0xfc0) = r1
  r1 = 0x316f ll
  *(u64 *)(r10 - 0xfb8) = r1
  *(u64 *)(r10 - 0xfc8) = r1
  r1 = r10
  r1 += -0xf88
  *(u64 *)(r10 - 0xfd0) = r1
  r1 = 0x3175 ll
  *(u64 *)(r10 - 0xfd8) = r1
  r1 = r10
  r1 += -0xfa8
  *(u64 *)(r10 - 0xfe0) = r1
  r1 = 0x3243 ll
  *(u64 *)(r10 - 0xfe8) = r1
  r1 = r10
  r1 += -0xfb0
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xf78
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_08c8 ll
  r3 = r5
  call fn_18bb0

jmp_18838:
  r2 <<= 0xc

jmp_18840:
  r3 |= r2
  r2 = r3

jmp_18850:
  *(u32 *)(r10 - 0xfb0) = w2
  r1 = r10
  r1 += -0xf98
  *(u64 *)(r10 - 0xfc0) = r1
  r1 = 0x316f ll
  *(u64 *)(r10 - 0xfb8) = r1
  *(u64 *)(r10 - 0xfc8) = r1
  r1 = r10
  r1 += -0xf88
  *(u64 *)(r10 - 0xfd0) = r1
  r1 = 0x3175 ll
  *(u64 *)(r10 - 0xfd8) = r1
  r1 = r10
  r1 += -0xfa8
  *(u64 *)(r10 - 0xfe0) = r1
  r1 = 0x3243 ll
  *(u64 *)(r10 - 0xfe8) = r1
  r1 = r10
  r1 += -0xfb0
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xf70
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_0738 ll
  r3 = r5
  call fn_18bb0

jmp_18968:
  r1 = r10
  r1 += -0xf98
  *(u64 *)(r10 - 0xfe0) = r1
  r1 = 0x316f ll
  *(u64 *)(r10 - 0xfd8) = r1
  *(u64 *)(r10 - 0xfe8) = r1
  r1 = r10
  r1 += -0xf88
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xf70
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_07c8 ll
  r3 = r5
  call fn_18bb0

jmp_18a18:
  r1 = r10
  r1 += -0xf98
  *(u64 *)(r10 - 0xfd0) = r1
  r1 = 0x316f ll
  *(u64 *)(r10 - 0xfc8) = r1
  *(u64 *)(r10 - 0xfd8) = r1
  r1 = r10
  r1 += -0xf88
  *(u64 *)(r10 - 0xfe0) = r1
  r1 = r10
  r1 += -0xf78
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xfe8) = r1
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xf70
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_0958 ll
  r3 = r5
  call fn_18bb0

fn_18ae8:
  r3 = r1
  r1 = data_0d30 ll
  r2 = 0x2b
  call fn_18b98

fn_18b10:
  *(u64 *)(r10 - 0xfe0) = r2
  *(u64 *)(r10 - 0xfd8) = r1
  r1 = r10
  r1 += -0xfd8
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xfe8) = r1
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xfe0
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_0790 ll
  call fn_18bb0

fn_18b98:
  r2 <<= 0x1
  r2 |= 0x1
  call fn_18bb0

fn_18bb0:
  *(u64 *)(r10 - 0xfe0) = r2
  *(u64 *)(r10 - 0xfe8) = r1
  *(u64 *)(r10 - 0xff8) = r3
  r1 = r10
  r1 += -0xfe8
  *(u64 *)(r10 - 0x1000) = r1
  *(u16 *)(r10 - 0xff0) = 0x1
  r1 = r10
  r1 += -0x1000
  call fn_0000

fn_18c00:
  r8 = r1
  r8 += 0x7
  r8 &= -0x8
  r5 = r8
  r5 -= r1
  if r2 >= r5 goto jmp_18ca0

jmp_18c30:
  r0 = 0x0
  if r2 != 0x0 goto jmp_18c68
  goto jmp_191c8

jmp_18c48:
  r0 += r3
  r1 += 0x1
  r2 += -0x1
  if r2 == 0x0 goto jmp_191c8

jmp_18c68:
  w4 = *(u8 *)(r1 + 0x0)
  r4 <<= 0x38
  r4 s>>= 0x38
  r3 = 0x1
  if r4 s> -0x41 goto jmp_18c48
  r3 = 0x0
  goto jmp_18c48

jmp_18ca0:
  r4 = r2
  r4 -= r5
  r3 = r4
  r3 >>= 0x3
  if r3 == 0x0 goto jmp_18c30
  *(u64 *)(r10 - 0x1000) = r5
  *(u64 *)(r10 - 0xff8) = r4
  r2 = r4
  r2 &= 0x7
  r0 = 0x0
  r4 = 0x0
  if r8 != r1 goto jmp_19028

jmp_18d00:
  r5 = *(u64 *)(r10 - 0x1000)
  r1 += r5
  if r2 == 0x0 goto jmp_18db0
  r5 = 0x7ffffffffffffff8 ll
  r0 = *(u64 *)(r10 - 0xff8)
  r0 &= r5
  r6 = r1
  r6 += r0
  r0 = 0x0
  goto jmp_18d78

jmp_18d58:
  r0 += r5
  r6 += 0x1
  r2 += -0x1
  if r2 == 0x0 goto jmp_18db0

jmp_18d78:
  w7 = *(u8 *)(r6 + 0x0)
  r7 <<= 0x38
  r7 s>>= 0x38
  r5 = 0x1
  if r7 s> -0x41 goto jmp_18d58
  r5 = 0x0
  goto jmp_18d58

jmp_18db0:
  r0 += r4
  r7 = 0x101010101010101 ll
  goto jmp_18e78

jmp_18dd0:
  r8 = 0x0

jmp_18dd8:
  r3 = *(u64 *)(r10 - 0x1000)
  r9 = *(u64 *)(r10 - 0xff8)
  r3 -= r9
  r1 = r5
  r2 = *(u64 *)(r10 - 0xff0)
  r1 += r2
  r2 = r8
  r6 = 0xff00ff00ff00ff ll
  r2 &= r6
  r8 >>= 0x8
  r8 &= r6
  r8 += r2
  r2 = 0x1000100010001 ll
  r8 *= r2
  r8 >>= 0x30
  r8 += r0
  r0 = r8
  if r4 != 0x0 goto jmp_190d0

jmp_18e78:
  r5 = r1
  if r3 == 0x0 goto jmp_191c8
  r1 = r3
  if r3 < 0xc0 goto jmp_18ea0
  r1 = 0xc0

jmp_18ea0:
  *(u64 *)(r10 - 0x1000) = r3
  r4 = r1
  r4 &= 0x3
  *(u64 *)(r10 - 0xff8) = r1
  r9 = r1
  r2 = r9
  r2 <<= 0x3
  *(u64 *)(r10 - 0xff0) = r2
  r2 &= 0x7e0
  if r2 == 0x0 goto jmp_18dd0
  r1 = r5
  r1 += r2
  r8 = 0x0
  r2 = r5

jmp_18f10:
  r6 = *(u64 *)(r2 + 0x0)
  r3 = r6
  r3 >>= 0x6
  r6 ^= -0x1
  r6 >>= 0x7
  r6 |= r3
  r6 &= r7
  r6 += r8
  r8 = *(u64 *)(r2 + 0x8)
  r3 = r8
  r3 >>= 0x6
  r8 ^= -0x1
  r8 >>= 0x7
  r8 |= r3
  r8 &= r7
  r8 += r6
  r6 = *(u64 *)(r2 + 0x10)
  r3 = r6
  r3 >>= 0x6
  r6 ^= -0x1
  r6 >>= 0x7
  r6 |= r3
  r6 &= r7
  r6 += r8
  r8 = *(u64 *)(r2 + 0x18)
  r3 = r8
  r3 >>= 0x6
  r8 ^= -0x1
  r8 >>= 0x7
  r8 |= r3
  r8 &= r7
  r8 += r6
  r2 += 0x20
  if r2 != r1 goto jmp_18f10
  goto jmp_18dd8

jmp_19028:
  r7 = r1
  r7 -= r8
  r8 = r1
  goto jmp_19060

jmp_19048:
  r4 += r5
  r8 += 0x1
  if r9 == 0x1 goto jmp_18d00

jmp_19060:
  w6 = *(u8 *)(r8 + 0x0)
  r6 <<= 0x38
  r6 s>>= 0x38
  r9 = 0x1
  r5 = 0x1
  if r6 s<= -0x41 goto jmp_190a8
  r7 += 0x1
  if r7 == 0x0 goto jmp_19048
  goto jmp_190c0

jmp_190a8:
  r5 = 0x0
  r7 += 0x1
  if r7 == 0x0 goto jmp_19048

jmp_190c0:
  r9 = 0x0
  goto jmp_19048

jmp_190d0:
  r9 &= 0xfc
  r9 <<= 0x3
  r5 += r9
  r0 = 0x0
  r4 <<= 0x3
  r1 = 0x101010101010101 ll

jmp_19108:
  r2 = r0
  r0 = *(u64 *)(r5 + 0x0)
  r3 = r0
  r3 >>= 0x6
  r0 ^= -0x1
  r0 >>= 0x7
  r0 |= r3
  r0 &= r1
  r0 += r2
  r5 += 0x8
  r4 += -0x8
  if r4 != 0x0 goto jmp_19108
  r1 = 0xff00ff00ff00ff ll
  r2 = r0
  r2 &= r1
  r0 >>= 0x8
  r0 &= r1
  r0 += r2
  r1 = 0x1000100010001 ll
  r0 *= r1
  r0 >>= 0x30
  r0 += r8

jmp_191c8:
  exit

fn_191d0:
  r0 = r2
  *(u64 *)(r10 - 0x1000) = r1
  r1 = r3
  r1 += -0xf
  r5 = 0x0
  r4 = 0x1
  if r1 > r3 goto jmp_19228
  r4 = 0x0
  if r4 == 0x0 goto jmp_19230

jmp_19218:
  if r3 != 0x0 goto jmp_19240
  goto jmp_196a8

jmp_19228:
  if r4 != 0x0 goto jmp_19218

jmp_19230:
  r5 = r1
  if r3 == 0x0 goto jmp_196a8

jmp_19240:
  r1 = r0
  r1 += 0x7
  r1 &= -0x8
  r1 -= r0
  r4 = 0x0
  r2 = -0x7f7f7f7f7f7f7f80 ll
  goto jmp_192a8

jmp_19280:
  r9 += 0x1
  r4 = r9
  r2 = -0x7f7f7f7f7f7f7f80 ll
  if r4 >= r3 goto jmp_196a8

jmp_192a8:
  r6 = r0
  r6 += r4
  w9 = *(u8 *)(r6 + 0x0)
  r6 = r9
  r6 <<= 0x38
  r6 s>>= 0x38
  if r6 s< 0x0 goto jmp_19310
  r6 = r1
  r6 -= r4
  r6 &= 0x7
  if r6 == 0x0 goto jmp_193a8
  r4 += 0x1
  goto jmp_19448

jmp_19310:
  r6 = data_0e28 ll
  r6 += r9
  r7 = 0x1
  w6 = *(u8 *)(r6 + 0x0)
  if r6 == 0x4 goto jmp_194c0
  if r6 == 0x3 goto jmp_19458
  if r6 != 0x2 goto jmp_196d8
  r9 = r4
  r9 += 0x1
  if r9 >= r3 goto jmp_196e8
  r6 = r0
  r6 += r9
  w6 = *(u8 *)(r6 + 0x0)
  r6 <<= 0x38
  r6 s>>= 0x38
  r8 = 0x1
  if r6 s<= -0x41 goto jmp_19280
  goto jmp_196f0

jmp_193a8:
  if r4 >= r5 goto jmp_193f8

jmp_193b0:
  r6 = r0
  r6 += r4
  r7 = *(u64 *)(r6 + 0x0)
  r6 = *(u64 *)(r6 + 0x8)
  r6 |= r7
  r6 &= r2
  if r6 != 0x0 goto jmp_193f8
  r4 += 0x10
  if r4 < r5 goto jmp_193b0

jmp_193f8:
  if r4 >= r3 goto jmp_19448

jmp_19400:
  r6 = r0
  r6 += r4
  w6 = *(u8 *)(r6 + 0x0)
  r6 <<= 0x38
  r6 s>>= 0x38
  if r6 s< 0x0 goto jmp_19448
  r4 += 0x1
  if r4 < r3 goto jmp_19400
  goto jmp_196a8

jmp_19448:
  if r4 < r3 goto jmp_192a8
  goto jmp_196a8

jmp_19458:
  r8 = 0x0
  r6 = r4
  r6 += 0x1
  if r6 >= r3 goto jmp_196f0
  r2 = r0
  r2 += r6
  w6 = *(u8 *)(r2 + 0x0)
  r6 <<= 0x38
  r6 s>>= 0x38
  if r9 == 0xe0 goto jmp_19528
  if r9 != 0xed goto jmp_19560
  if r6 s<= -0x61 goto jmp_19598
  goto jmp_196d8

jmp_194c0:
  r8 = 0x0
  r6 = r4
  r6 += 0x1
  if r6 >= r3 goto jmp_196f0
  r2 = r0
  r2 += r6
  w6 = *(u8 *)(r2 + 0x0)
  r6 <<= 0x38
  r6 s>>= 0x38
  if r9 == 0xf0 goto jmp_19540
  if r9 != 0xf4 goto jmp_195e8
  if r6 s<= -0x71 goto jmp_19608
  goto jmp_196d8

jmp_19528:
  r6 &= -0x20
  if r6 == -0x60 goto jmp_19598
  goto jmp_196d8

jmp_19540:
  r6 += 0x70
  r6 &= 0xff
  if r6 < 0x30 goto jmp_19608
  goto jmp_196d8

jmp_19560:
  r2 = r9
  r2 += 0x1f
  r2 &= 0xff
  if r2 < 0xc goto jmp_19590
  r9 &= 0xfe
  if r9 != 0xee goto jmp_196d8

jmp_19590:
  if r6 s>= -0x40 goto jmp_196d8

jmp_19598:
  r9 = r4
  r9 += 0x2
  if r9 >= r3 goto jmp_196f0
  r2 = r0
  r2 += r9
  w2 = *(u8 *)(r2 + 0x0)
  r2 <<= 0x38
  r2 s>>= 0x38
  if r2 s<= -0x41 goto jmp_19280
  goto jmp_196d0

jmp_195e8:
  r9 += 0xf
  r9 &= 0xff
  if r9 > 0x2 goto jmp_196d8
  if r6 s>= -0x40 goto jmp_196d8

jmp_19608:
  r6 = r4
  r6 += 0x2
  if r6 >= r3 goto jmp_196f0
  r2 = r0
  r2 += r6
  w2 = *(u8 *)(r2 + 0x0)
  r2 <<= 0x38
  r2 s>>= 0x38
  if r2 s> -0x41 goto jmp_196d0
  r9 = r4
  r9 += 0x3
  if r9 >= r3 goto jmp_196f0
  r2 = r0
  r2 += r9
  w2 = *(u8 *)(r2 + 0x0)
  r2 <<= 0x38
  r2 s>>= 0x38
  if r2 s< -0x40 goto jmp_19280
  r7 = 0x3
  goto jmp_196d8

jmp_196a8:
  r2 = *(u64 *)(r10 - 0x1000)
  *(u64 *)(r2 + 0x10) = r3
  *(u64 *)(r2 + 0x8) = r0
  r1 = 0x0
  goto jmp_19718

jmp_196d0:
  r7 = 0x2

jmp_196d8:
  r8 = 0x1
  goto jmp_196f0

jmp_196e8:
  r8 = 0x0

jmp_196f0:
  r2 = *(u64 *)(r10 - 0x1000)
  *(u8 *)(r2 + 0x11) = w7
  *(u8 *)(r2 + 0x10) = w8
  *(u64 *)(r2 + 0x8) = r4
  r1 = 0x1

jmp_19718:
  *(u64 *)(r2 + 0x0) = r1
  exit

fn_19728:
  if r1 <= r3 goto jmp_197c0
  *(u64 *)(r10 - 0xfd8) = r1
  *(u64 *)(r10 - 0xfe0) = r3
  r1 = r10
  r1 += -0xfe0
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xfe8) = r1
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xfd8
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_0858 ll
  r3 = r4
  call fn_18bb0

jmp_197c0:
  if r2 > r3 goto jmp_19860
  if r1 <= r2 goto jmp_19860
  *(u64 *)(r10 - 0xfd8) = r1
  *(u64 *)(r10 - 0xfe0) = r2
  r1 = r10
  r1 += -0xfe0
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xfe8) = r1
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xfd8
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_0710 ll
  r3 = r4
  call fn_18bb0

jmp_19860:
  *(u64 *)(r10 - 0xfd8) = r2
  *(u64 *)(r10 - 0xfe0) = r3
  r1 = r10
  r1 += -0xfe0
  *(u64 *)(r10 - 0xff0) = r1
  r1 = 0x31ec ll
  *(u64 *)(r10 - 0xfe8) = r1
  *(u64 *)(r10 - 0xff8) = r1
  r1 = r10
  r1 += -0xfd8
  *(u64 *)(r10 - 0x1000) = r1
  r2 = r10
  r2 += -0x1000
  r1 = data_0820 ll
  r3 = r4
  call fn_18bb0

fn_198f0:
  r4 = r1
  r1 = 0x0
  r0 = r2
  r0 += 0x7
  r0 &= -0x8
  r4 &= 0xff
  if r0 == r2 goto jmp_19988
  r0 -= r2
  r5 = r3
  if r3 < r0 goto jmp_19948
  r5 = r0

jmp_19948:
  if r3 == 0x0 goto jmp_19980

jmp_19950:
  r0 = r2
  r0 += r1
  w0 = *(u8 *)(r0 + 0x0)
  if r0 == r4 goto jmp_19ad0
  r1 += 0x1
  if r1 < r5 goto jmp_19950

jmp_19980:
  r1 = r5

jmp_19988:
  r5 = r3
  r5 += -0x10
  if r1 > r5 goto jmp_19a68
  r6 = 0x101010101010101 ll
  r0 = r4
  r0 *= r6
  r6 = -0x7f7f7f7f7f7f7f80 ll

jmp_199d0:
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
  if r8 != r6 goto jmp_19a68
  r1 += 0x10
  if r1 <= r5 goto jmp_199d0

jmp_19a68:
  if r3 == r1 goto jmp_19ab8
  r3 -= r1
  r2 += r1
  r5 = 0x0

jmp_19a88:
  r0 = r2
  r0 += r5
  w0 = *(u8 *)(r0 + 0x0)
  if r0 == r4 goto jmp_19ac8
  r5 += 0x1
  if r5 < r3 goto jmp_19a88

jmp_19ab8:
  r0 = 0x0
  goto jmp_19ad8

jmp_19ac8:
  r1 += r5

jmp_19ad0:
  r0 = 0x1

jmp_19ad8:
  exit

fn_19ae0:
  r0 = 0x0
  r2 = r1
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 < 0x20 goto jmp_19f20
  r0 = 0x1
  if r2 < 0x7f goto jmp_19f20
  if r2 >= 0x10000 goto jmp_19c38
  r2 = 0xffffff00 ll
  r4 = r1
  r4 &= r2
  r3 = 0x0
  r4 >>= 0x8
  r4 &= 0xff
  r5 = 0x0
  goto jmp_19b80

jmp_19b68:
  if r6 > r4 goto jmp_19f30

jmp_19b70:
  r3 = r2
  if r5 == 0x4c goto jmp_19f30

jmp_19b80:
  r6 = data_1258 ll
  r6 += r5
  r5 += 0x2
  w0 = *(u8 *)(r6 + 0x1)
  r2 = r3
  r2 += r0
  w6 = *(u8 *)(r6 + 0x0)
  if r6 != r4 goto jmp_19b68
  if r2 < r3 goto jmp_1a148
  if r2 > 0x11c goto jmp_1a148
  if r0 == 0x0 goto jmp_19b70
  r6 = data_12a8 ll
  r6 += r3

jmp_19bf8:
  r3 = r1
  r3 &= 0xff
  w7 = *(u8 *)(r6 + 0x0)
  if r7 == r3 goto jmp_19f18
  r6 += 0x1
  r0 += -0x1
  if r0 != 0x0 goto jmp_19bf8
  goto jmp_19b70

jmp_19c38:
  if r2 >= 0x20000 goto jmp_19d58
  r2 = 0xffffff00 ll
  r4 = r1
  r4 &= r2
  r3 = 0x0
  r4 >>= 0x8
  r4 &= 0xff
  r5 = 0x0
  goto jmp_19ca0

jmp_19c88:
  if r6 > r4 goto jmp_1a038

jmp_19c90:
  r3 = r2
  if r5 == 0x5c goto jmp_1a038

jmp_19ca0:
  r6 = data_0f28 ll
  r6 += r5
  r5 += 0x2
  w0 = *(u8 *)(r6 + 0x1)
  r2 = r3
  r2 += r0
  w6 = *(u8 *)(r6 + 0x0)
  if r6 != r4 goto jmp_19c88
  if r2 < r3 goto jmp_1a170
  if r2 > 0xd4 goto jmp_1a170
  if r0 == 0x0 goto jmp_19c90
  r6 = data_0f88 ll
  r6 += r3

jmp_19d18:
  r3 = r1
  r3 &= 0xff
  w7 = *(u8 *)(r6 + 0x0)
  if r7 == r3 goto jmp_19f18
  r6 += 0x1
  r0 += -0x1
  if r0 != 0x0 goto jmp_19d18
  goto jmp_19c90

jmp_19d58:
  r4 = r1
  r4 += -0x2fa1e
  r4 <<= 0x20
  r4 >>= 0x20
  r0 = 0x0
  r3 = 0x1
  r5 = 0x1
  if r4 < 0x5e2 goto jmp_19da0
  r5 = 0x0

jmp_19da0:
  r6 = r1
  r6 += -0x3134b
  r6 <<= 0x20
  r6 >>= 0x20
  r4 = 0x1
  if r6 < 0x5 goto jmp_19dd8
  r4 = 0x0

jmp_19dd8:
  r5 <<= 0x2
  r4 <<= 0x3
  r7 = r1
  r7 += -0x2ebe1
  r7 <<= 0x20
  r7 >>= 0x20
  r6 = 0x1
  if r7 < 0xf goto jmp_19e20
  r6 = 0x0

jmp_19e20:
  r4 |= r5
  r7 = r1
  r7 += -0x2ee5e
  r7 <<= 0x20
  r7 >>= 0x20
  r5 = 0x1
  if r7 < 0x9a2 goto jmp_19e60
  r5 = 0x0

jmp_19e60:
  r5 <<= 0x1
  r6 |= r5
  r6 |= r4
  r4 = 0x1
  if r6 != 0x0 goto jmp_19e90
  r4 = 0x0

jmp_19e90:
  r5 = r1
  r5 += -0x3347a
  r5 <<= 0x20
  r5 >>= 0x20
  if r5 < 0xacc86 goto jmp_19ec0
  r3 = 0x0

jmp_19ec0:
  r4 |= r3
  r4 &= 0x1
  if r4 != 0x0 goto jmp_19f20
  r3 = r1
  r3 &= 0x1fffe0
  if r3 == 0x2a6e0 goto jmp_19f20
  r1 &= 0x1ffffe
  if r1 == 0x2b81e goto jmp_19f20
  if r1 == 0x2ceae goto jmp_19f20
  r0 = 0x1
  if r2 < 0xe01f0 goto jmp_19f20

jmp_19f18:
  r0 = 0x0

jmp_19f20:
  r0 &= 0x1
  exit

jmp_19f30:
  r2 = 0x0
  r0 = 0x1
  goto jmp_19f80

jmp_19f48:
  r2 = r4
  r1 -= r3
  r1 <<= 0x20
  r1 s>>= 0x20
  if r1 s< 0x0 goto jmp_19f20

jmp_19f70:
  r0 ^= 0x1
  if r2 == 0x124 goto jmp_19f20

jmp_19f80:
  r3 = data_13c8 ll
  r3 += r2
  r4 = r2
  r4 += 0x1
  w3 = *(u8 *)(r3 + 0x0)
  r3 <<= 0x38
  r3 s>>= 0x38
  if r3 s>= 0x0 goto jmp_19f48
  if r4 == 0x124 goto jmp_1a198
  r5 = data_13c8 ll
  r5 += r4
  w4 = *(u8 *)(r5 + 0x0)
  r3 &= 0x7f
  r3 <<= 0x8
  r3 |= r4
  r2 += 0x2
  r1 -= r3
  r1 <<= 0x20
  r1 s>>= 0x20
  if r1 s>= 0x0 goto jmp_19f70
  goto jmp_19f20

jmp_1a038:
  r2 = 0x0
  r0 = 0x1
  r1 &= 0xffff
  goto jmp_1a090

jmp_1a058:
  r2 = r4
  r1 -= r3
  r1 <<= 0x20
  r1 s>>= 0x20
  if r1 s< 0x0 goto jmp_19f20

jmp_1a080:
  r0 ^= 0x1
  if r2 == 0x1f8 goto jmp_19f20

jmp_1a090:
  r3 = data_1060 ll
  r3 += r2
  r4 = r2
  r4 += 0x1
  w3 = *(u8 *)(r3 + 0x0)
  r3 <<= 0x38
  r3 s>>= 0x38
  if r3 s>= 0x0 goto jmp_1a058
  if r4 == 0x1f8 goto jmp_1a198
  r5 = data_1060 ll
  r5 += r4
  w4 = *(u8 *)(r5 + 0x0)
  r3 &= 0x7f
  r3 <<= 0x8
  r3 |= r4
  r2 += 0x2
  r1 -= r3
  r1 <<= 0x20
  r1 s>>= 0x20
  if r1 s>= 0x0 goto jmp_1a080
  goto jmp_19f20

jmp_1a148:
  r1 = r3
  r3 = 0x11c
  r4 = data_1670 ll
  call fn_19728

jmp_1a170:
  r1 = r3
  r3 = 0xd4
  r4 = data_1670 ll
  call fn_19728

jmp_1a198:
  r1 = data_1688 ll
  call fn_18ae8

fn_1a1b0:
  r2 = r1
  r2 <<= 0x20
  r2 >>= 0x20
  r3 = 0x0
  if r2 < 0x10eab goto jmp_1a1e0
  r3 = 0x10

jmp_1a1e0:
  r5 = r3
  r5 |= 0x8
  r4 = r5
  r4 <<= 0x2
  r2 = data_14f0 ll
  r0 = data_14f0 ll
  r0 += r4
  w0 = *(u32 *)(r0 + 0x0)
  r0 <<= 0xb
  r4 = r1
  r4 <<= 0xb
  r4 <<= 0x20
  r0 <<= 0x20
  r4 >>= 0x20
  r0 >>= 0x20
  if r0 > r4 goto jmp_1a278
  r3 = r5

jmp_1a278:
  r5 = r3
  r5 |= 0x4
  r0 = r5
  r0 <<= 0x2
  r6 = data_14f0 ll
  r6 += r0
  w0 = *(u32 *)(r6 + 0x0)
  r0 <<= 0xb
  r0 <<= 0x20
  r0 >>= 0x20
  if r0 > r4 goto jmp_1a2e0
  r3 = r5

jmp_1a2e0:
  r5 = r3
  r5 |= 0x2
  r0 = r5
  r0 <<= 0x2
  r6 = data_14f0 ll
  r6 += r0
  w0 = *(u32 *)(r6 + 0x0)
  r0 <<= 0xb
  r0 <<= 0x20
  r0 >>= 0x20
  if r0 > r4 goto jmp_1a348
  r3 = r5

jmp_1a348:
  r5 = r3
  r5 += 0x1
  r0 = r5
  r0 <<= 0x2
  r6 = data_14f0 ll
  r6 += r0
  w0 = *(u32 *)(r6 + 0x0)
  r0 <<= 0xb
  r0 <<= 0x20
  r0 >>= 0x20
  if r0 > r4 goto jmp_1a3b0
  r3 = r5

jmp_1a3b0:
  r5 = r3
  r5 += 0x1
  r0 = r5
  r0 <<= 0x2
  r6 = data_14f0 ll
  r6 += r0
  w0 = *(u32 *)(r6 + 0x0)
  r0 <<= 0xb
  r0 <<= 0x20
  r0 >>= 0x20
  if r0 > r4 goto jmp_1a418
  r3 = r5

jmp_1a418:
  r5 = r3
  r5 <<= 0x2
  r0 = data_14f0 ll
  r0 += r5
  w0 = *(u32 *)(r0 + 0x0)
  r0 <<= 0xb
  r0 <<= 0x20
  r0 >>= 0x20
  r5 = 0x1
  r6 = 0x1
  if r0 < r4 goto jmp_1a480
  r6 = 0x0

jmp_1a480:
  if r0 == r4 goto jmp_1a490
  r5 = 0x0

jmp_1a490:
  r5 += r6
  r5 += r3
  r3 = r5
  r3 <<= 0x2
  r2 += r3
  r3 = 0x2ff
  w0 = *(u32 *)(r2 + 0x0)
  r0 >>= 0x15
  if r5 > 0x1f goto jmp_1a4f0
  w3 = *(u32 *)(r2 + 0x4)
  r3 >>= 0x15
  if r5 == 0x0 goto jmp_1a5c8

jmp_1a4f0:
  w2 = *(u32 *)(r2 - 0x4)
  r2 &= 0x1fffff
  r4 = r0
  r4 ^= -0x1
  r3 += r4
  if r3 == 0x0 goto jmp_1a5b8

jmp_1a520:
  r1 -= r2
  r2 = data_0a28 ll
  r2 += r0
  r4 = 0x0
  r1 <<= 0x20
  r1 >>= 0x20
  r5 = 0x0

jmp_1a560:
  r6 = r2
  r6 += r5
  w6 = *(u8 *)(r6 + 0x0)
  r4 += r6
  r6 = r4
  r6 <<= 0x20
  r6 >>= 0x20
  if r6 > r1 goto jmp_1a5b0
  r5 += 0x1
  if r5 < r3 goto jmp_1a560

jmp_1a5b0:
  r0 += r5

jmp_1a5b8:
  r0 &= 0x1
  exit

jmp_1a5c8:
  r2 = 0x0
  r4 = r0
  r4 ^= -0x1
  r3 += r4
  if r3 != 0x0 goto jmp_1a520
  goto jmp_1a5b8

fn_1a5f8:
  r6 = r5
  r7 = r4
  r8 = r2
  r2 = r3
  r2 <<= 0x20
  r2 >>= 0x20
  if r2 == 0x110000 goto jmp_1a670
  r4 = *(u64 *)(r8 + 0x20)
  r9 = r1
  r2 = r3
  callx r4
  r1 = r9
  r2 = r0
  r0 = 0x1
  if r2 != 0x0 goto jmp_1a6a8

jmp_1a670:
  if r7 == 0x0 goto jmp_1a6a0
  r4 = *(u64 *)(r8 + 0x18)
  r2 = r7
  r3 = r6
  callx r4
  goto jmp_1a6a8

jmp_1a6a0:
  r0 = 0x0

jmp_1a6a8:
  exit
  r4 = r2
  r3 = *(u64 *)(r1 + 0x8)
  r2 = *(u64 *)(r1 + 0x0)
  r1 = r4
  call fn_17b28
  exit
  r6 = r2
  r7 = r1
  w1 = *(u32 *)(r6 + 0x10)
  r2 = r1
  r2 &= 0x2000000
  if r2 != 0x0 goto jmp_1a750
  r1 &= 0x4000000
  if r1 != 0x0 goto jmp_1a7d0
  r1 = r7
  r2 = r6
  call fn_1aad0
  r8 = 0x1
  if r0 == 0x0 goto jmp_1a8c0
  goto jmp_1aac0

jmp_1a750:
  r1 = 0x0
  r2 = *(u64 *)(r7 + 0x0)

jmp_1a760:
  r3 = r2
  r3 &= 0xf
  r4 = str_0348 ll
  r4 += r3
  r3 = r10
  r3 += -0x1000
  r3 += r1
  w4 = *(u8 *)(r4 + 0x0)
  *(u8 *)(r3 + 0xf) = w4
  r1 += -0x1
  r2 >>= 0x4
  if r2 != 0x0 goto jmp_1a760
  goto jmp_1a848

jmp_1a7d0:
  r1 = 0x0
  r2 = *(u64 *)(r7 + 0x0)

jmp_1a7e0:
  r3 = r2
  r3 &= 0xf
  r4 = str_0328 ll
  r4 += r3
  r3 = r10
  r3 += -0x1000
  r3 += r1
  w4 = *(u8 *)(r4 + 0x0)
  *(u8 *)(r3 + 0xf) = w4
  r1 += -0x1
  r2 >>= 0x4
  if r2 != 0x0 goto jmp_1a7e0

jmp_1a848:
  r2 = r1
  r2 = -r2
  *(u64 *)(r10 + 0x0) = r2
  r5 = r10
  r5 += -0x1000
  r5 += r1
  r5 += 0x10
  r8 = 0x1
  r1 = r6
  r2 = 0x1
  r3 = data_1580 ll
  r4 = 0x2
  call fn_17510
  if r0 != 0x0 goto jmp_1aac0

jmp_1a8c0:
  r1 = *(u64 *)(r6 + 0x0)
  r2 = *(u64 *)(r6 + 0x8)
  r4 = *(u64 *)(r2 + 0x18)
  r2 = data_1578 ll
  r3 = 0x2
  callx r4
  if r0 != 0x0 goto jmp_1aac0
  r7 += 0x8
  w1 = *(u32 *)(r6 + 0x10)
  r2 = r1
  r2 &= 0x2000000
  if r2 != 0x0 goto jmp_1a958
  r1 &= 0x4000000
  if r1 != 0x0 goto jmp_1a9d8
  r1 = r7
  r2 = r6
  call fn_1aad0
  goto jmp_1aab8

jmp_1a958:
  r1 = 0x0
  r2 = *(u64 *)(r7 + 0x0)

jmp_1a968:
  r3 = r2
  r3 &= 0xf
  r4 = str_0348 ll
  r4 += r3
  r3 = r10
  r3 += -0x1000
  r3 += r1
  w4 = *(u8 *)(r4 + 0x0)
  *(u8 *)(r3 + 0xf) = w4
  r1 += -0x1
  r2 >>= 0x4
  if r2 != 0x0 goto jmp_1a968
  goto jmp_1aa50

jmp_1a9d8:
  r1 = 0x0
  r2 = *(u64 *)(r7 + 0x0)

jmp_1a9e8:
  r3 = r2
  r3 &= 0xf
  r4 = str_0328 ll
  r4 += r3
  r3 = r10
  r3 += -0x1000
  r3 += r1
  w4 = *(u8 *)(r4 + 0x0)
  *(u8 *)(r3 + 0xf) = w4
  r1 += -0x1
  r2 >>= 0x4
  if r2 != 0x0 goto jmp_1a9e8

jmp_1aa50:
  r2 = r1
  r2 = -r2
  *(u64 *)(r10 + 0x0) = r2
  r5 = r10
  r5 += -0x1000
  r5 += r1
  r5 += 0x10
  r1 = r6
  r2 = 0x1
  r3 = data_1580 ll
  r4 = 0x2
  call fn_17510

jmp_1aab8:
  r8 = r0

jmp_1aac0:
  r0 = r8
  exit

fn_1aad0:
  r3 = 0x14
  r1 = *(u64 *)(r1 + 0x0)
  r4 = r1
  if r1 < 0x3e8 goto jmp_1ac20
  r3 = 0x0
  r5 = r10
  r5 += -0xfed
  r4 = r1

jmp_1ab10:
  r0 = r4
  r4 /= 0x2710
  r6 = r4
  r6 *= 0x2710
  r7 = r0
  r7 -= r6
  r6 = r7
  r6 &= 0xffff
  r6 /= 0x64
  r8 = r6
  r8 *= 0x64
  r7 -= r8
  r7 <<= 0x1
  r7 &= 0xfffe
  r6 <<= 0x1
  r8 = str_0d60 ll
  r8 += r7
  r7 = str_0d60 ll
  r7 += r6
  r6 = r5
  r6 += r3
  w9 = *(u8 *)(r7 + 0x1)
  *(u8 *)(r6 - 0x2) = w9
  w7 = *(u8 *)(r7 + 0x0)
  *(u8 *)(r6 - 0x3) = w7
  w7 = *(u8 *)(r8 + 0x1)
  *(u8 *)(r6 + 0x0) = w7
  w7 = *(u8 *)(r8 + 0x0)
  *(u8 *)(r6 - 0x1) = w7
  r3 += -0x4
  if r0 > 0x98967f goto jmp_1ab10
  r3 += 0x14

jmp_1ac20:
  if r4 <= 0x9 goto jmp_1ace0
  r5 = r4
  r5 &= 0xffff
  r5 /= 0x64
  r0 = r5
  r0 *= 0x64
  r4 -= r0
  r4 <<= 0x1
  r4 &= 0xfffe
  r0 = str_0d60 ll
  r0 += r4
  r4 = r10
  r4 += -0x1000
  r6 = r4
  r6 += r3
  w7 = *(u8 *)(r0 + 0x1)
  *(u8 *)(r6 - 0x1) = w7
  r3 += -0x2
  r4 += r3
  w0 = *(u8 *)(r0 + 0x0)
  *(u8 *)(r4 + 0x0) = w0
  if r1 != 0x0 goto jmp_1acf0
  goto jmp_1acf8

jmp_1ace0:
  r5 = r4
  if r1 == 0x0 goto jmp_1acf8

jmp_1acf0:
  if r5 == 0x0 goto jmp_1ad48

jmp_1acf8:
  r5 <<= 0x1
  r1 = str_0d60 ll
  r1 += r5
  r3 += -0x1
  r4 = r10
  r4 += -0x1000
  r4 += r3
  w1 = *(u8 *)(r1 + 0x1)
  *(u8 *)(r4 + 0x0) = w1

jmp_1ad48:
  r1 = 0x14
  r1 -= r3
  *(u64 *)(r10 + 0x0) = r1
  r5 = r10
  r5 += -0x1000
  r5 += r3
  r1 = r2
  r2 = 0x1
  r3 = 0x1
  r4 = 0x0
  call fn_17510
  exit
  r7 = r1
  r6 = *(u64 *)(r2 + 0x0)
  r9 = *(u64 *)(r2 + 0x8)
  r8 = *(u64 *)(r9 + 0x20)
  r1 = r6
  r2 = 0x27
  callx r8
  r1 = r0
  r0 = 0x1
  if r1 != 0x0 goto jmp_1aed8
  w2 = *(u32 *)(r7 + 0x0)
  r1 = r10
  r1 += -0x1000
  r3 = 0x101
  call fn_16c10
  w3 = *(u8 *)(r10 - 0xff3)
  if r3 < 0x81 goto jmp_1ae68
  w2 = *(u32 *)(r10 - 0x1000)
  r1 = r6
  callx r8
  r1 = r0
  r0 = 0x1
  if r1 == 0x0 goto jmp_1aec0
  goto jmp_1aed8

jmp_1ae68:
  w1 = *(u8 *)(r10 - 0xff4)
  r2 = r10
  r2 += -0x1000
  r2 += r1
  r3 -= r1
  r4 = *(u64 *)(r9 + 0x18)
  r1 = r6
  callx r4
  r1 = r0
  r0 = 0x1
  if r1 != 0x0 goto jmp_1aed8

jmp_1aec0:
  r1 = r6
  r2 = 0x27
  callx r8

jmp_1aed8:
  exit

fn_1aee0:
  r6 = r1
  r2 &= 0xff
  call sol_memset_
  r0 = r6
  exit

fn_1af08:
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
  if r9 < r6 goto jmp_1afb8
  r8 = 0x0

jmp_1afb8:
  r6 = r9
  r6 <<= 0x20
  r7 = r0
  r7 += r6
  if r7 < r0 goto jmp_1afe8
  r2 = 0x0

jmp_1afe8:
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

fn_1b060:
  r3 = 0x3
  r0 = 0x7fffffffffffffff ll
  r4 = r1
  r4 &= r0
  r6 = 0x7ff0000000000000 ll
  if r4 > r6 goto jmp_1b130
  r5 = r2
  r5 &= r0
  if r5 > r6 goto jmp_1b130
  r5 |= r4
  if r5 == 0x0 goto jmp_1b0f8
  r3 = r2
  r3 &= r1
  if r3 s<= -0x1 goto jmp_1b108
  r3 = 0x0
  if r1 s>= r2 goto jmp_1b118
  goto jmp_1b130

jmp_1b0f8:
  r3 = 0x1
  goto jmp_1b130

jmp_1b108:
  r3 = 0x0
  if r1 s> r2 goto jmp_1b130

jmp_1b118:
  r3 = 0x1
  if r1 == r2 goto jmp_1b130
  r3 = 0x2

jmp_1b130:
  r3 <<= 0x3
  r1 = data_00e8 ll
  r1 += r3
  r0 = *(u64 *)(r1 + 0x0)
  exit

fn_1b160:
  r0 = r1
  r6 = r2
  r6 ^= r0
  r1 = -0x8000000000000000 ll
  r6 &= r1
  r4 = 0xfffffffffffff ll
  r1 = r2
  r1 &= r4
  r3 = r0
  r3 &= r4
  r7 = r2
  r7 >>= 0x34
  r7 &= 0x7ff
  r8 = r0
  r8 >>= 0x34
  r8 &= 0x7ff
  r4 = r8
  r4 += -0x7ff
  if r4 < -0x7fe goto jmp_1b360
  r4 = r7
  r4 += -0x7ff
  if r4 < -0x7fe goto jmp_1b360
  *(u64 *)(r10 - 0x1000) = r6
  r6 = 0x0

jmp_1b230:
  r1 <<= 0xb
  r2 = -0x8000000000000000 ll
  r1 |= r2
  r9 = 0x10000000000000 ll
  r3 |= r9
  r2 = 0x0
  r4 = 0x0
  call fn_1af08
  r7 += r8
  r7 += r6
  r2 = r1
  r2 &= r9
  if r2 != 0x0 goto jmp_1b3b8
  r1 <<= 0x1
  r2 = r0
  r2 >>= 0x3f
  r1 |= r2
  r0 <<= 0x1
  r7 += -0x3ff
  r5 = *(u64 *)(r10 - 0x1000)
  if r7 s> 0x7fe goto jmp_1b3d0

jmp_1b2e8:
  if r7 s< 0x1 goto jmp_1b478
  r2 = 0xfffffffffffff ll
  r1 &= r2
  r7 <<= 0x34
  r7 |= r1
  r1 = r7
  r2 = r1
  r2 |= r5
  r3 = -0x8000000000000000 ll
  if r0 <= r3 goto jmp_1b560

jmp_1b348:
  r0 = r2
  r0 += 0x1
  goto jmp_1b590

jmp_1b360:
  r9 = 0x7fffffffffffffff ll
  r5 = r0
  r5 &= r9
  r4 = 0x7ff0000000000000 ll
  if r5 <= r4 goto jmp_1b3f8
  r1 = 0x8000000000000 ll
  r0 |= r1
  goto jmp_1b590

jmp_1b3b8:
  r7 += -0x3fe
  r5 = *(u64 *)(r10 - 0x1000)
  if r7 s<= 0x7fe goto jmp_1b2e8

jmp_1b3d0:
  r1 = 0x7ff0000000000000 ll
  r5 |= r1
  r0 = r5
  goto jmp_1b590

jmp_1b3f8:
  r0 = r2
  r0 &= r9
  if r0 <= r4 goto jmp_1b430
  r1 = 0x8000000000000 ll
  r2 |= r1
  goto jmp_1b588

jmp_1b430:
  r2 = 0x7ff0000000000000 ll
  if r5 != r2 goto jmp_1b4a8
  if r0 == 0x0 goto jmp_1b4b8

jmp_1b450:
  r1 = 0x7ff0000000000000 ll
  r6 |= r1

jmp_1b468:
  r0 = r6
  goto jmp_1b590

jmp_1b478:
  r3 = 0x1
  r2 = 0x1
  r2 -= r7
  if r2 <= 0x3f goto jmp_1b4d0
  r0 = r5
  goto jmp_1b590

jmp_1b4a8:
  if r0 != r2 goto jmp_1b598
  if r5 != 0x0 goto jmp_1b450

jmp_1b4b8:
  r0 = 0x7ff8000000000000 ll
  goto jmp_1b590

jmp_1b4d0:
  r7 += 0x3f
  r7 <<= 0x20
  r7 >>= 0x20
  r4 = r0
  r4 <<= r7
  if r4 != 0x0 goto jmp_1b508
  r3 = 0x0

jmp_1b508:
  r0 >>= r2
  r4 = r1
  r4 <<= r7
  r0 |= r4
  r0 |= r3
  r1 >>= r2
  r2 = r1
  r2 |= r5
  r3 = -0x8000000000000000 ll
  if r0 > r3 goto jmp_1b348

jmp_1b560:
  if r0 != r3 goto jmp_1b588
  r1 &= 0x1
  r0 = r2
  r0 += r1
  goto jmp_1b590

jmp_1b588:
  r0 = r2

jmp_1b590:
  exit

jmp_1b598:
  if r5 == 0x0 goto jmp_1b468
  if r0 == 0x0 goto jmp_1b468
  r9 = 0x0
  r2 = 0x10000000000000 ll
  if r5 >= r2 goto jmp_1b760
  if r3 == 0x0 goto jmp_1b730
  r4 = r3
  r4 >>= 0x1
  r2 = r3
  r2 |= r4
  r4 = r2
  r4 >>= 0x2
  r2 |= r4
  r4 = r2
  r4 >>= 0x4
  r2 |= r4
  r4 = r2
  r4 >>= 0x8
  r2 |= r4
  r4 = r2
  r4 >>= 0x10
  r2 |= r4
  r4 = r2
  r4 >>= 0x20
  r2 |= r4
  r2 ^= -0x1
  r4 = 0x5555555555555555 ll
  r5 = r2
  r5 >>= 0x1
  r5 &= r4
  r2 -= r5
  r4 = 0x3333333333333333 ll
  r5 = r2
  r5 &= r4
  r2 >>= 0x2
  r2 &= r4
  r5 += r2
  r2 = r5
  r2 >>= 0x4
  r5 += r2
  r2 = 0xf0f0f0f0f0f0f0f ll
  r5 &= r2
  r2 = 0x101010101010101 ll
  r5 *= r2
  r5 >>= 0x38
  goto jmp_1b738

jmp_1b730:
  r5 = 0x40

jmp_1b738:
  r9 = 0xc
  r9 -= r5
  r5 += 0x35
  r5 &= 0x3f
  r3 <<= r5

jmp_1b760:
  r2 = 0xfffffffffffff ll
  *(u64 *)(r10 - 0x1000) = r6
  if r0 > r2 goto jmp_1b8e8
  if r1 == 0x0 goto jmp_1b8f8
  r4 = r1
  r4 >>= 0x1
  r2 = r1
  r2 |= r4
  r4 = r2
  r4 >>= 0x2
  r2 |= r4
  r4 = r2
  r4 >>= 0x4
  r2 |= r4
  r4 = r2
  r4 >>= 0x8
  r2 |= r4
  r4 = r2
  r4 >>= 0x10
  r2 |= r4
  r4 = r2
  r4 >>= 0x20
  r2 |= r4
  r2 ^= -0x1
  r4 = 0x5555555555555555 ll
  r5 = r2
  r5 >>= 0x1
  r5 &= r4
  r2 -= r5
  r5 = 0x3333333333333333 ll
  r4 = r2
  r4 &= r5
  r2 >>= 0x2
  r2 &= r5
  r4 += r2
  r2 = r4
  r2 >>= 0x4
  r4 += r2
  r2 = 0xf0f0f0f0f0f0f0f ll
  r4 &= r2
  r2 = 0x101010101010101 ll
  r4 *= r2
  r4 >>= 0x38
  goto jmp_1b900

jmp_1b8e8:
  r6 = r9
  goto jmp_1b230

jmp_1b8f8:
  r4 = 0x40

jmp_1b900:
  r9 -= r4
  r4 += 0x35
  r4 &= 0x3f
  r1 <<= r4
  r9 += 0xc
  r6 = r9
  goto jmp_1b230

fn_1b938:
  if r1 == 0x0 goto jmp_1bb28
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
  goto jmp_1bb30

jmp_1bb28:
  r0 = 0x0

jmp_1bb30:
  exit

fn_1bb38:
  r0 = 0x0
  r2 = 0x3ff0000000000000 ll
  if r1 < r2 goto jmp_1bbe8
  r2 = 0x43f0000000000000 ll
  if r1 >= r2 goto jmp_1bbc8
  r0 = r1
  r0 <<= 0xb
  r2 = -0x8000000000000000 ll
  r0 |= r2
  r1 >>= 0x34
  r2 = 0x3e
  r2 -= r1
  r2 &= 0x3f
  r0 >>= r2
  goto jmp_1bbe8

jmp_1bbc8:
  r2 = 0x7ff0000000000001 ll
  if r1 >= r2 goto jmp_1bbe8
  r0 = -0x1

jmp_1bbe8:
  exit

fn_1bbf0:
  call fn_1b160
  exit

fn_1bc00:
  r3 = 0x3
  r0 = 0x7fffffffffffffff ll
  r4 = r1
  r4 &= r0
  r6 = 0x7ff0000000000000 ll
  if r4 > r6 goto jmp_1bcd0
  r5 = r2
  r5 &= r0
  if r5 > r6 goto jmp_1bcd0
  r5 |= r4
  if r5 == 0x0 goto jmp_1bc98
  r3 = r2
  r3 &= r1
  if r3 s<= -0x1 goto jmp_1bca8
  r3 = 0x0
  if r1 s>= r2 goto jmp_1bcb8
  goto jmp_1bcd0

jmp_1bc98:
  r3 = 0x1
  goto jmp_1bcd0

jmp_1bca8:
  r3 = 0x0
  if r1 s> r2 goto jmp_1bcd0

jmp_1bcb8:
  r3 = 0x1
  if r1 == r2 goto jmp_1bcd0
  r3 = 0x2

jmp_1bcd0:
  r3 <<= 0x3
  r1 = data_00e8 ll
  r1 += r3
  r0 = *(u64 *)(r1 + 0x0)
  exit

.rodata
  data_0000: .quad 0x0000000000000000
  data_0008: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x55, 0x6e, 0x6b, 0x6e, 0x6f, 0x77, 0x6e, 0x00, 0x00
  data_0018: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x41, 0x72, 0x67, 0x75, 0x6d, 0x65, 0x6e, 0x74, 0x00, 0x00
  data_0030: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x49, 0x6e, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x44, 0x61, 0x74, 0x61, 0x00, 0x00, 0x00
  data_0050: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x44, 0x61, 0x74, 0x61, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0070: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x44, 0x61, 0x74, 0x61, 0x54, 0x6f, 0x6f, 0x53, 0x6d, 0x61, 0x6c, 0x6c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  str_0090: .ascii "Error: InsufficientFunds"
  data_00a8: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x63, 0x6f, 0x72, 0x72, 0x65, 0x63, 0x74, 0x50, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 0x49, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_00c8: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x4d, 0x69, 0x73, 0x73, 0x69, 0x6e, 0x67, 0x52, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x53, 0x69, 0x67, 0x6e, 0x61, 0x74, 0x75, 0x72, 0x65, 0x00
  data_00e8: .byte 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
  str_0108: .ascii "Error: AccountAlreadyInitialized"
  data_0128: .byte 0x06, 0xa7, 0xd5, 0x17, 0x19, 0x2c, 0x5c, 0x51, 0x21, 0x8c, 0xc9, 0x4c, 0x3d, 0x4a, 0xf1, 0x7f, 0x58, 0xda, 0xee, 0x08, 0x9b, 0xa1, 0xfd, 0x44, 0xe3, 0xdb, 0xd9, 0x8a, 0x00, 0x00, 0x00, 0x00
  data_0148: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x55, 0x6e, 0x69, 0x6e, 0x69, 0x74, 0x69, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x64, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0168: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x4e, 0x6f, 0x74, 0x45, 0x6e, 0x6f, 0x75, 0x67, 0x68, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x4b, 0x65, 0x79, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0188: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x42, 0x6f, 0x72, 0x72, 0x6f, 0x77, 0x46, 0x61, 0x69, 0x6c, 0x65, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_01a8: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x4d, 0x61, 0x78, 0x53, 0x65, 0x65, 0x64, 0x4c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x45, 0x78, 0x63, 0x65, 0x65, 0x64, 0x65, 0x64, 0x00, 0x00, 0x00, 0x00
  data_01c8: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x53, 0x65, 0x65, 0x64, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00
  data_01e0: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x42, 0x6f, 0x72, 0x73, 0x68, 0x49, 0x6f, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00
  data_01f8: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x4e, 0x6f, 0x74, 0x52, 0x65, 0x6e, 0x74, 0x45, 0x78, 0x65, 0x6d, 0x70, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00
  str_0218: .ascii "Error: UnsupportedSysvar"
  data_0230: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6c, 0x6c, 0x65, 0x67, 0x61, 0x6c, 0x4f, 0x77, 0x6e, 0x65, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0248: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x4d, 0x61, 0x78, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x44, 0x61, 0x74, 0x61, 0x41, 0x6c, 0x6c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x45, 0x78, 0x63, 0x65, 0x65, 0x64, 0x65, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0278: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x52, 0x65, 0x61, 0x6c, 0x6c, 0x6f, 0x63, 0x00, 0x00, 0x00
  str_0290: .ascii "Error: MaxInstructionTraceLengthExceeded"
  data_02b8: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x42, 0x75, 0x69, 0x6c, 0x74, 0x69, 0x6e, 0x50, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 0x73, 0x4d, 0x75, 0x73, 0x74, 0x43, 0x6f, 0x6e, 0x73, 0x75, 0x6d, 0x65, 0x43, 0x6f, 0x6d, 0x70, 0x75, 0x74, 0x65, 0x55, 0x6e, 0x69, 0x74, 0x73, 0x00, 0x00, 0x00
  data_02e8: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x4f, 0x77, 0x6e, 0x65, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0308: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x41, 0x72, 0x69, 0x74, 0x68, 0x6d, 0x65, 0x74, 0x69, 0x63, 0x4f, 0x76, 0x65, 0x72, 0x66, 0x6c, 0x6f, 0x77, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  str_0328: .ascii "0123456789ABCDEF"
  str_0338: .ascii "Error: Immutable"
  str_0348: .ascii "0123456789abcdef"
  data_0358: .byte 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x63, 0x6f, 0x72, 0x72, 0x65, 0x63, 0x74, 0x41, 0x75, 0x74, 0x68, 0x6f, 0x72, 0x69, 0x74, 0x79, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x4c, 0x61, 0x6d, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x62, 0x61, 0x6c, 0x61, 0x6e, 0x63, 0x65, 0x20, 0x62, 0x65, 0x6c, 0x6f, 0x77, 0x20, 0x72, 0x65, 0x6e, 0x74, 0x2d, 0x65, 0x78, 0x65, 0x6d, 0x70, 0x74, 0x20, 0x74, 0x68, 0x72, 0x65, 0x73, 0x68, 0x6f, 0x6c, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x69, 0x6e, 0x73, 0x75, 0x66, 0x66, 0x69, 0x63, 0x69, 0x65, 0x6e, 0x74, 0x20, 0x66, 0x75, 0x6e, 0x64, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x4d, 0x69, 0x6e, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x61, 0x73, 0x73, 0x6f, 0x63, 0x69, 0x61, 0x74, 0x65, 0x64, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x74, 0x68, 0x69, 0x73, 0x20, 0x4d, 0x69, 0x6e, 0x74, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x6f, 0x77, 0x6e, 0x65, 0x72, 0x20, 0x64, 0x6f, 0x65, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x74, 0x68, 0x65, 0x20, 0x74, 0x6f, 0x74, 0x61, 0x6c, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6c, 0x79, 0x20, 0x6f, 0x66, 0x20, 0x74, 0x68, 0x69, 0x73, 0x20, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x20, 0x69, 0x73, 0x20, 0x66, 0x69, 0x78, 0x65, 0x64, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x6f, 0x72, 0x20, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x20, 0x61, 0x6c, 0x72, 0x65, 0x61, 0x64, 0x79, 0x20, 0x69, 0x6e, 0x20, 0x75, 0x73, 0x65, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x20, 0x6f, 0x66, 0x20, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x64, 0x65, 0x64, 0x20, 0x73, 0x69, 0x67, 0x6e, 0x65, 0x72, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x6e, 0x75, 0x6d, 0x62, 0x65, 0x72, 0x20, 0x6f, 0x66, 0x20, 0x72, 0x65, 0x71, 0x75, 0x69, 0x72, 0x65, 0x64, 0x20, 0x73, 0x69, 0x67, 0x6e, 0x65, 0x72, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x53, 0x74, 0x61, 0x74, 0x65, 0x20, 0x69, 0x73, 0x20, 0x75, 0x6e, 0x69, 0x6e, 0x69, 0x74, 0x69, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x64, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x64, 0x6f, 0x65, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x6e, 0x61, 0x74, 0x69, 0x76, 0x65, 0x20, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x4e, 0x6f, 0x6e, 0x2d, 0x6e, 0x61, 0x74, 0x69, 0x76, 0x65, 0x20, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x63, 0x61, 0x6e, 0x20, 0x6f, 0x6e, 0x6c, 0x79, 0x20, 0x62, 0x65, 0x20, 0x63, 0x6c, 0x6f, 0x73, 0x65, 0x64, 0x20, 0x69, 0x66, 0x20, 0x69, 0x74, 0x73, 0x20, 0x62, 0x61, 0x6c, 0x61, 0x6e, 0x63, 0x65, 0x20, 0x69, 0x73, 0x20, 0x7a, 0x65, 0x72, 0x6f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x69, 0x6e, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x20, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x73, 0x74, 0x61, 0x74, 0x65, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x6f, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x4f, 0x70, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x6f, 0x76, 0x65, 0x72, 0x66, 0x6c, 0x6f, 0x77, 0x65, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x64, 0x6f, 0x65, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x73, 0x70, 0x65, 0x63, 0x69, 0x66, 0x69, 0x65, 0x64, 0x20, 0x61, 0x75, 0x74, 0x68, 0x6f, 0x72, 0x69, 0x74, 0x79, 0x20, 0x74, 0x79, 0x70, 0x65, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x54, 0x68, 0x69, 0x73, 0x20, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x20, 0x6d, 0x69, 0x6e, 0x74, 0x20, 0x63, 0x61, 0x6e, 0x6e, 0x6f, 0x74, 0x20, 0x66, 0x72, 0x65, 0x65, 0x7a, 0x65, 0x20, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x00, 0x00, 0x00, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x20, 0x69, 0x73, 0x20, 0x66, 0x72, 0x6f, 0x7a, 0x65, 0x6e, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x64, 0x65, 0x63, 0x69, 0x6d, 0x61, 0x6c, 0x73, 0x20, 0x64, 0x69, 0x66, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x74, 0x20, 0x66, 0x72, 0x6f, 0x6d, 0x20, 0x74, 0x68, 0x65, 0x20, 0x4d, 0x69, 0x6e, 0x74, 0x20, 0x64, 0x65, 0x63, 0x69, 0x6d, 0x61, 0x6c, 0x73, 0x45, 0x72, 0x72, 0x6f, 0x72, 0x3a, 0x20, 0x49, 0x6e, 0x73, 0x74, 0x72, 0x75, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x20, 0x64, 0x6f, 0x65, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x73, 0x75, 0x70, 0x70, 0x6f, 0x72, 0x74, 0x20, 0x6e, 0x6f, 0x6e, 0x2d, 0x6e, 0x61, 0x74, 0x69, 0x76, 0x65, 0x20, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x73, 0x00, 0x00, 0x00, 0x70, 0x69, 0x6e, 0x6f, 0x63, 0x63, 0x68, 0x69, 0x6f, 0x2f, 0x70, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x70, 0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x6f, 0x72, 0x2f, 0x6d, 0x6f, 0x64, 0x2e, 0x72, 0x73, 0x00, 0x00
  data_0710: .byte 0x16, 0x73, 0x6c, 0x69, 0x63, 0x65, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x73, 0x74, 0x61, 0x72, 0x74, 0x73, 0x20, 0x61, 0x74, 0x20, 0xc0, 0x0d, 0x20, 0x62, 0x75, 0x74, 0x20, 0x65, 0x6e, 0x64, 0x73, 0x20, 0x61, 0x74, 0x20, 0xc0, 0x00
  data_0738: .byte 0x11, 0x73, 0x74, 0x61, 0x72, 0x74, 0x20, 0x62, 0x79, 0x74, 0x65, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0xc0, 0x26, 0x20, 0x69, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x61, 0x20, 0x63, 0x68, 0x61, 0x72, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x61, 0x72, 0x79, 0x3b, 0x20, 0x69, 0x74, 0x20, 0x69, 0x73, 0x20, 0x69, 0x6e, 0x73, 0x69, 0x64, 0x65, 0x20, 0xc0, 0x08, 0x20, 0x28, 0x62, 0x79, 0x74, 0x65, 0x73, 0x20, 0xc0, 0x06, 0x29, 0x20, 0x6f, 0x66, 0x20, 0x60, 0xc0, 0x01, 0x60, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0790: .byte 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x3a, 0x20, 0x74, 0x68, 0x65, 0x20, 0x6c, 0x65, 0x6e, 0x20, 0x69, 0x73, 0x20, 0xc0, 0x12, 0x20, 0x62, 0x75, 0x74, 0x20, 0x74, 0x68, 0x65, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0x69, 0x73, 0x20, 0xc0, 0x00, 0x00
  data_07c8: .byte 0x11, 0x73, 0x74, 0x61, 0x72, 0x74, 0x20, 0x62, 0x79, 0x74, 0x65, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0xc0, 0x16, 0x20, 0x69, 0x73, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x20, 0x6f, 0x66, 0x20, 0x60, 0xc0, 0x01, 0x60, 0xc0, 0x00, 0x00, 0x6c, 0x69, 0x62, 0x72, 0x61, 0x72, 0x79, 0x2f, 0x63, 0x6f, 0x72, 0x65, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x75, 0x6e, 0x69, 0x63, 0x6f, 0x64, 0x65, 0x2f, 0x70, 0x72, 0x69, 0x6e, 0x74, 0x61, 0x62, 0x6c, 0x65, 0x2e, 0x72, 0x73, 0x00, 0x00, 0x00
  data_0820: .byte 0x10, 0x72, 0x61, 0x6e, 0x67, 0x65, 0x20, 0x65, 0x6e, 0x64, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0xc0, 0x22, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x72, 0x61, 0x6e, 0x67, 0x65, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x73, 0x6c, 0x69, 0x63, 0x65, 0x20, 0x6f, 0x66, 0x20, 0x6c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x20, 0xc0, 0x00, 0x00
  data_0858: .byte 0x12, 0x72, 0x61, 0x6e, 0x67, 0x65, 0x20, 0x73, 0x74, 0x61, 0x72, 0x74, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0xc0, 0x22, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x72, 0x61, 0x6e, 0x67, 0x65, 0x20, 0x66, 0x6f, 0x72, 0x20, 0x73, 0x6c, 0x69, 0x63, 0x65, 0x20, 0x6f, 0x66, 0x20, 0x6c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x20, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0898: .byte 0x0f, 0x65, 0x6e, 0x64, 0x20, 0x62, 0x79, 0x74, 0x65, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0xc0, 0x16, 0x20, 0x69, 0x73, 0x20, 0x6f, 0x75, 0x74, 0x20, 0x6f, 0x66, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x73, 0x20, 0x6f, 0x66, 0x20, 0x60, 0xc0, 0x01, 0x60, 0xc0, 0x00, 0x00, 0x00, 0x00
  data_08c8: .byte 0x0f, 0x65, 0x6e, 0x64, 0x20, 0x62, 0x79, 0x74, 0x65, 0x20, 0x69, 0x6e, 0x64, 0x65, 0x78, 0x20, 0xc0, 0x26, 0x20, 0x69, 0x73, 0x20, 0x6e, 0x6f, 0x74, 0x20, 0x61, 0x20, 0x63, 0x68, 0x61, 0x72, 0x20, 0x62, 0x6f, 0x75, 0x6e, 0x64, 0x61, 0x72, 0x79, 0x3b, 0x20, 0x69, 0x74, 0x20, 0x69, 0x73, 0x20, 0x69, 0x6e, 0x73, 0x69, 0x64, 0x65, 0x20, 0xc0, 0x08, 0x20, 0x28, 0x62, 0x79, 0x74, 0x65, 0x73, 0x20, 0xc0, 0x06, 0x29, 0x20, 0x6f, 0x66, 0x20, 0x60, 0xc0, 0x01, 0x60, 0xc0, 0x00, 0x00, 0x70, 0x69, 0x6e, 0x6f, 0x63, 0x63, 0x68, 0x69, 0x6f, 0x2f, 0x70, 0x72, 0x6f, 0x67, 0x72, 0x61, 0x6d, 0x2f, 0x73, 0x72, 0x63, 0x2f, 0x70, 0x72, 0x6f, 0x63, 0x65, 0x73, 0x73, 0x6f, 0x72, 0x2f, 0x73, 0x68, 0x61, 0x72, 0x65, 0x64, 0x2f, 0x69, 0x6e, 0x69, 0x74, 0x69, 0x61, 0x6c, 0x69, 0x7a, 0x65, 0x5f, 0x6d, 0x75, 0x6c, 0x74, 0x69, 0x73, 0x69, 0x67, 0x2e, 0x72, 0x73, 0x00, 0x00, 0x00
  data_0958: .byte 0x0d, 0x62, 0x65, 0x67, 0x69, 0x6e, 0x20, 0x3e, 0x20, 0x65, 0x6e, 0x64, 0x20, 0x28, 0xc0, 0x03, 0x20, 0x3e, 0x20, 0xc0, 0x10, 0x29, 0x20, 0x77, 0x68, 0x65, 0x6e, 0x20, 0x73, 0x6c, 0x69, 0x63, 0x69, 0x6e, 0x67, 0x20, 0x60, 0xc0, 0x01, 0x60, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0988: .byte 0x32, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0a28: .byte 0x00, 0x70, 0x00, 0x07, 0x00, 0x2d, 0x01, 0x01, 0x01, 0x02, 0x01, 0x02, 0x01, 0x01, 0x48, 0x0b, 0x30, 0x15, 0x10, 0x01, 0x65, 0x07, 0x02, 0x06, 0x02, 0x02, 0x01, 0x04, 0x23, 0x01, 0x1e, 0x1b, 0x5b, 0x0b, 0x3a, 0x09, 0x09, 0x01, 0x18, 0x04, 0x01, 0x09, 0x01, 0x03, 0x01, 0x05, 0x2b, 0x03, 0x3b, 0x09, 0x2a, 0x18, 0x01, 0x20, 0x37, 0x01, 0x01, 0x01, 0x04, 0x08, 0x04, 0x01, 0x03, 0x07, 0x0a, 0x02, 0x1d, 0x01, 0x3a, 0x01, 0x01, 0x01, 0x02, 0x04, 0x08, 0x01, 0x09, 0x01, 0x0a, 0x02, 0x1a, 0x01, 0x02, 0x02, 0x39, 0x01, 0x04, 0x02, 0x04, 0x02, 0x02, 0x03, 0x03, 0x01, 0x1e, 0x02, 0x03, 0x01, 0x0b, 0x02, 0x39, 0x01, 0x04, 0x05, 0x01, 0x02, 0x04, 0x01, 0x14, 0x02, 0x16, 0x06, 0x01, 0x01, 0x3a, 0x01, 0x01, 0x02, 0x01, 0x04, 0x08, 0x01, 0x07, 0x03, 0x0a, 0x02, 0x1e, 0x01, 0x3b, 0x01, 0x01, 0x01, 0x0c, 0x01, 0x09, 0x01, 0x28, 0x01, 0x03, 0x01, 0x37, 0x01, 0x01, 0x03, 0x05, 0x03, 0x01, 0x04, 0x07, 0x02, 0x0b, 0x02, 0x1d, 0x01, 0x3a, 0x01, 0x02, 0x02, 0x01, 0x01, 0x03, 0x03, 0x01, 0x04, 0x07, 0x02, 0x0b, 0x02, 0x1c, 0x02, 0x39, 0x02, 0x01, 0x01, 0x02, 0x04, 0x08, 0x01, 0x09, 0x01, 0x0a, 0x02, 0x1d, 0x01, 0x48, 0x01, 0x04, 0x01, 0x02, 0x03, 0x01, 0x01, 0x08, 0x01, 0x51, 0x01, 0x02, 0x07, 0x0c, 0x08, 0x62, 0x01, 0x02, 0x09, 0x0b, 0x07, 0x49, 0x02, 0x1b, 0x01, 0x01, 0x01, 0x01, 0x01, 0x37, 0x0e, 0x01, 0x05, 0x01, 0x02, 0x05, 0x0b, 0x01, 0x24, 0x09, 0x01, 0x66, 0x04, 0x01, 0x06, 0x01, 0x02, 0x02, 0x02, 0x19, 0x02, 0x04, 0x03, 0x10, 0x04, 0x0d, 0x01, 0x02, 0x02, 0x06, 0x01, 0x0f, 0x01, 0x00, 0x03, 0x00, 0x04, 0x1c, 0x03, 0x1d, 0x02, 0x1e, 0x02, 0x40, 0x02, 0x01, 0x07, 0x08, 0x01, 0x02, 0x0b, 0x09, 0x01, 0x2d, 0x03, 0x01, 0x01, 0x75, 0x02, 0x22, 0x01, 0x76, 0x03, 0x04, 0x02, 0x09, 0x01, 0x06, 0x03, 0xdb, 0x02, 0x02, 0x01, 0x3a, 0x01, 0x01, 0x07, 0x01, 0x01, 0x01, 0x01, 0x02, 0x08, 0x06, 0x0a, 0x02, 0x01, 0x30, 0x2e, 0x02, 0x0c, 0x14, 0x04, 0x30, 0x0a, 0x04, 0x03, 0x26, 0x09, 0x0c, 0x02, 0x20, 0x04, 0x02, 0x06, 0x38, 0x01, 0x01, 0x02, 0x03, 0x01, 0x01, 0x05, 0x38, 0x08, 0x02, 0x02, 0x98, 0x03, 0x01, 0x0d, 0x01, 0x07, 0x04, 0x01, 0x06, 0x01, 0x03, 0x02, 0xc6, 0x40, 0x00, 0x01, 0xc3, 0x21, 0x00, 0x03, 0x8d, 0x01, 0x60, 0x20, 0x00, 0x06, 0x69, 0x02, 0x00, 0x04, 0x01, 0x0a, 0x20, 0x02, 0x50, 0x02, 0x00, 0x01, 0x03, 0x01, 0x04, 0x01, 0x19, 0x02, 0x05, 0x01, 0x97, 0x02, 0x1a, 0x12, 0x0d, 0x01, 0x26, 0x08, 0x19, 0x0b, 0x01, 0x01, 0x2c, 0x03, 0x30, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x01, 0x24, 0x01, 0x43, 0x06, 0x02, 0x02, 0x02, 0x02, 0x0c, 0x01, 0x08, 0x01, 0x2f, 0x01, 0x33, 0x01, 0x01, 0x03, 0x02, 0x02, 0x05, 0x02, 0x01, 0x01, 0x2a, 0x02, 0x08, 0x01, 0xee, 0x01, 0x02, 0x01, 0x04, 0x01, 0x00, 0x01, 0x00, 0x10, 0x10, 0x10, 0x00, 0x02, 0x00, 0x01, 0xe2, 0x01, 0x95, 0x05, 0x00, 0x03, 0x01, 0x02, 0x05, 0x04, 0x28, 0x03, 0x04, 0x01, 0xa5, 0x02, 0x00, 0x04, 0x41, 0x05, 0x00, 0x02, 0x4d, 0x06, 0x46, 0x0b, 0x31, 0x04, 0x7b, 0x01, 0x36, 0x0f, 0x29, 0x01, 0x02, 0x02, 0x0a, 0x03, 0x31, 0x04, 0x02, 0x02, 0x07, 0x01, 0x3d, 0x03, 0x24, 0x05, 0x01, 0x08, 0x3e, 0x01, 0x0c, 0x02, 0x34, 0x09, 0x01, 0x01, 0x08, 0x04, 0x02, 0x01, 0x5f, 0x03, 0x02, 0x04, 0x06, 0x01, 0x02, 0x01, 0x9d, 0x01, 0x03, 0x08, 0x15, 0x02, 0x39, 0x02, 0x01, 0x01, 0x01, 0x01, 0x0c, 0x01, 0x09, 0x01, 0x0e, 0x07, 0x03, 0x05, 0x43, 0x01, 0x02, 0x06, 0x01, 0x01, 0x02, 0x01, 0x01, 0x03, 0x04, 0x03, 0x01, 0x01, 0x0e, 0x02, 0x55, 0x08, 0x02, 0x03, 0x01, 0x01, 0x17, 0x01, 0x51, 0x01, 0x02, 0x06, 0x01, 0x01, 0x02, 0x01, 0x01, 0x02, 0x01, 0x02, 0xeb, 0x01, 0x02, 0x04, 0x06, 0x02, 0x01, 0x02, 0x1b, 0x02, 0x55, 0x08, 0x02, 0x01, 0x01, 0x02, 0x6a, 0x01, 0x01, 0x01, 0x02, 0x08, 0x65, 0x01, 0x01, 0x01, 0x02, 0x04, 0x01, 0x05, 0x00, 0x09, 0x01, 0x02, 0xf5, 0x01, 0x0a, 0x04, 0x04, 0x01, 0x90, 0x04, 0x02, 0x02, 0x04, 0x01, 0x20, 0x0a, 0x28, 0x06, 0x02, 0x04, 0x08, 0x01, 0x09, 0x06, 0x02, 0x03, 0x2e, 0x0d, 0x01, 0x02, 0xc6, 0x01, 0x01, 0x03, 0x01, 0x01, 0xc9, 0x07, 0x01, 0x06, 0x01, 0x01, 0x52, 0x16, 0x02, 0x07, 0x01, 0x02, 0x01, 0x02, 0x7a, 0x06, 0x03, 0x01, 0x01, 0x02, 0x01, 0x07, 0x01, 0x01, 0x48, 0x02, 0x03, 0x01, 0x01, 0x01, 0x00, 0x02, 0x0b, 0x02, 0x34, 0x05, 0x05, 0x03, 0x17, 0x01, 0x00, 0x01, 0x06, 0x0f, 0x00, 0x0c, 0x03, 0x03, 0x00, 0x05, 0x3b, 0x07, 0x00, 0x01, 0x3f, 0x04, 0x51, 0x01, 0x0b, 0x02, 0x00, 0x02, 0x00, 0x2e, 0x02, 0x17, 0x00, 0x05, 0x03, 0x06, 0x08, 0x08, 0x02, 0x07, 0x1e, 0x04, 0x94, 0x03, 0x00, 0x37, 0x04, 0x32, 0x08, 0x01, 0x0e, 0x01, 0x16, 0x05, 0x01, 0x0f, 0x00, 0x07, 0x01, 0x11, 0x02, 0x07, 0x01, 0x02, 0x01, 0x05, 0x64, 0x01, 0xa0, 0x07, 0x00, 0x01, 0x3d, 0x04, 0x00, 0x04, 0xfe, 0x02, 0xf3, 0x01, 0x02, 0x01, 0x07, 0x02, 0x05, 0x01, 0x00, 0x07, 0x6d, 0x07, 0x00, 0x60, 0x80, 0xf0, 0x00, 0x00
  data_0d28: .quad 0x0000005d2e2e2e5b
  data_0d30: .byte 0x63, 0x61, 0x6c, 0x6c, 0x65, 0x64, 0x20, 0x60, 0x4f, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x3a, 0x3a, 0x75, 0x6e, 0x77, 0x72, 0x61, 0x70, 0x28, 0x29, 0x60, 0x20, 0x6f, 0x6e, 0x20, 0x61, 0x20, 0x60, 0x4e, 0x6f, 0x6e, 0x65, 0x60, 0x20, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00
  str_0d60: .ascii "00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
  data_0e28: .byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x04, 0x04, 0x04, 0x04, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_0f28: .byte 0x00, 0x06, 0x01, 0x01, 0x03, 0x01, 0x04, 0x02, 0x05, 0x07, 0x07, 0x02, 0x08, 0x08, 0x09, 0x02, 0x0a, 0x05, 0x0b, 0x02, 0x0e, 0x04, 0x10, 0x01, 0x11, 0x02, 0x12, 0x05, 0x13, 0x1c, 0x14, 0x01, 0x15, 0x02, 0x17, 0x02, 0x19, 0x0d, 0x1c, 0x05, 0x1d, 0x08, 0x1f, 0x01, 0x24, 0x01, 0x6a, 0x04, 0x6b, 0x02, 0x6e, 0x02, 0xaf, 0x03, 0xb1, 0x02, 0xbc, 0x02, 0xcf, 0x02, 0xd1, 0x02, 0xd4, 0x0c, 0xd5, 0x09, 0xd6, 0x02, 0xd7, 0x02, 0xda, 0x01, 0xe0, 0x05, 0xe1, 0x02, 0xe6, 0x01, 0xe7, 0x04, 0xe8, 0x02, 0xee, 0x20, 0xf0, 0x04, 0xf8, 0x02, 0xfa, 0x05, 0xfb, 0x01, 0x00, 0x00, 0x00, 0x00
  data_0f88: .byte 0x0c, 0x27, 0x3b, 0x3e, 0x4e, 0x4f, 0x8f, 0x9e, 0x9e, 0x9f, 0x7b, 0x8b, 0x93, 0x96, 0xa2, 0xb2, 0xba, 0x86, 0xb1, 0x06, 0x07, 0x09, 0x36, 0x3d, 0x3e, 0x56, 0xf3, 0xd0, 0xd1, 0x04, 0x14, 0x18, 0x36, 0x37, 0x56, 0x57, 0x7f, 0xaa, 0xae, 0xaf, 0xbd, 0x35, 0xe0, 0x12, 0x87, 0x89, 0x8e, 0x9e, 0x04, 0x0d, 0x0e, 0x11, 0x12, 0x29, 0x31, 0x34, 0x3a, 0x45, 0x46, 0x49, 0x4a, 0x4e, 0x4f, 0x64, 0x65, 0x8a, 0x8c, 0x8d, 0x8f, 0xb6, 0xc1, 0xc3, 0xc4, 0xc6, 0xcb, 0xd6, 0x5c, 0xb6, 0xb7, 0x1b, 0x1c, 0x07, 0x08, 0x0a, 0x0b, 0x14, 0x17, 0x36, 0x39, 0x3a, 0xa8, 0xa9, 0xd8, 0xd9, 0x09, 0x37, 0x90, 0x91, 0xa8, 0x07, 0x0a, 0x3b, 0x3e, 0x66, 0x69, 0x8f, 0x92, 0x11, 0x6f, 0x5f, 0xbf, 0xee, 0xef, 0x5a, 0x62, 0xb9, 0xba, 0xf4, 0xfc, 0xff, 0x53, 0x54, 0x9a, 0x9b, 0x2e, 0x2f, 0x27, 0x28, 0x55, 0x9d, 0xa0, 0xa1, 0xa3, 0xa4, 0xa7, 0xa8, 0xad, 0xba, 0xbc, 0xc4, 0x06, 0x0b, 0x0c, 0x15, 0x1d, 0x3a, 0x3f, 0x45, 0x51, 0xa6, 0xa7, 0xcc, 0xcd, 0xa0, 0x07, 0x19, 0x1a, 0x22, 0x25, 0x3e, 0x3f, 0xdf, 0xe7, 0xec, 0xef, 0xff, 0xc5, 0xc6, 0x04, 0x20, 0x23, 0x25, 0x26, 0x28, 0x33, 0x38, 0x3a, 0x48, 0x4a, 0x4c, 0x50, 0x53, 0x55, 0x56, 0x58, 0x5a, 0x5c, 0x5e, 0x60, 0x63, 0x65, 0x66, 0x6b, 0x73, 0x78, 0x7d, 0x7f, 0x8a, 0xa4, 0xaa, 0xaf, 0xb0, 0xc0, 0xd0, 0xae, 0xaf, 0x6e, 0x6f, 0xc7, 0xdd, 0xde, 0x93, 0x00, 0x00, 0x00, 0x00
  data_1060: .byte 0x5e, 0x22, 0x7b, 0x05, 0x03, 0x04, 0x2d, 0x03, 0x66, 0x03, 0x01, 0x2f, 0x2e, 0x80, 0x82, 0x1d, 0x03, 0x31, 0x0f, 0x1c, 0x04, 0x24, 0x09, 0x1e, 0x05, 0x2b, 0x05, 0x44, 0x04, 0x0e, 0x2a, 0x80, 0xaa, 0x06, 0x24, 0x04, 0x24, 0x04, 0x28, 0x08, 0x34, 0x0b, 0x4e, 0x03, 0x34, 0x0c, 0x81, 0x37, 0x09, 0x16, 0x0a, 0x08, 0x18, 0x3b, 0x45, 0x39, 0x03, 0x63, 0x08, 0x09, 0x30, 0x16, 0x05, 0x21, 0x03, 0x1b, 0x05, 0x1b, 0x26, 0x38, 0x04, 0x4b, 0x05, 0x2f, 0x04, 0x0a, 0x07, 0x09, 0x07, 0x40, 0x20, 0x27, 0x04, 0x0c, 0x09, 0x36, 0x03, 0x3a, 0x05, 0x1a, 0x07, 0x04, 0x0c, 0x07, 0x50, 0x49, 0x37, 0x33, 0x0d, 0x33, 0x07, 0x2e, 0x08, 0x0a, 0x06, 0x26, 0x03, 0x1d, 0x08, 0x02, 0x80, 0xd0, 0x52, 0x10, 0x06, 0x08, 0x09, 0x21, 0x2e, 0x08, 0x2a, 0x16, 0x1a, 0x26, 0x1c, 0x14, 0x17, 0x09, 0x4e, 0x04, 0x24, 0x09, 0x44, 0x0d, 0x19, 0x07, 0x0a, 0x06, 0x48, 0x08, 0x27, 0x09, 0x75, 0x0b, 0x42, 0x3e, 0x2a, 0x06, 0x3b, 0x05, 0x0a, 0x06, 0x51, 0x06, 0x01, 0x05, 0x10, 0x03, 0x05, 0x0b, 0x59, 0x08, 0x02, 0x1d, 0x62, 0x1e, 0x48, 0x08, 0x0a, 0x80, 0xa6, 0x5e, 0x22, 0x45, 0x0b, 0x0a, 0x06, 0x0d, 0x13, 0x3a, 0x06, 0x0a, 0x06, 0x14, 0x1c, 0x2c, 0x04, 0x17, 0x80, 0xb9, 0x3c, 0x64, 0x53, 0x0c, 0x48, 0x09, 0x0a, 0x46, 0x45, 0x1b, 0x48, 0x08, 0x53, 0x0d, 0x49, 0x07, 0x0a, 0x56, 0x08, 0x58, 0x22, 0x0e, 0x0a, 0x06, 0x46, 0x0a, 0x1d, 0x03, 0x47, 0x49, 0x37, 0x03, 0x0e, 0x08, 0x0a, 0x06, 0x39, 0x07, 0x0a, 0x06, 0x2c, 0x04, 0x0a, 0x80, 0xf6, 0x19, 0x07, 0x3b, 0x03, 0x1d, 0x55, 0x01, 0x0f, 0x32, 0x0d, 0x83, 0x9b, 0x66, 0x75, 0x0b, 0x80, 0xc4, 0x8a, 0x4c, 0x63, 0x0d, 0x84, 0x30, 0x10, 0x16, 0x0a, 0x8f, 0x9b, 0x05, 0x82, 0x47, 0x9a, 0xb9, 0x3a, 0x86, 0xc6, 0x82, 0x39, 0x07, 0x2a, 0x04, 0x5c, 0x06, 0x26, 0x0a, 0x46, 0x0a, 0x28, 0x05, 0x13, 0x81, 0xb0, 0x3a, 0x80, 0xc6, 0x5b, 0x05, 0x34, 0x2c, 0x4b, 0x04, 0x39, 0x07, 0x11, 0x40, 0x05, 0x0b, 0x07, 0x09, 0x9c, 0xd6, 0x29, 0x20, 0x61, 0x73, 0xa1, 0xfd, 0x81, 0x33, 0x0f, 0x01, 0x1d, 0x06, 0x0e, 0x04, 0x08, 0x81, 0x8c, 0x89, 0x04, 0x6b, 0x05, 0x0d, 0x03, 0x09, 0x07, 0x10, 0x8f, 0x60, 0x80, 0xfd, 0x03, 0x81, 0xb4, 0x06, 0x17, 0x0f, 0x11, 0x0f, 0x47, 0x09, 0x74, 0x3c, 0x80, 0xf6, 0x0a, 0x73, 0x08, 0x70, 0x15, 0x46, 0x7a, 0x14, 0x0c, 0x14, 0x0c, 0x57, 0x09, 0x19, 0x80, 0x87, 0x81, 0x47, 0x03, 0x85, 0x42, 0x0f, 0x15, 0x84, 0x50, 0x1f, 0x06, 0x06, 0x80, 0xd5, 0x2b, 0x05, 0x3e, 0x21, 0x01, 0x70, 0x2d, 0x03, 0x1a, 0x04, 0x02, 0x81, 0x40, 0x1f, 0x11, 0x3a, 0x05, 0x01, 0x81, 0xd0, 0x2a, 0x80, 0xd6, 0x2b, 0x04, 0x01, 0x80, 0xc0, 0x36, 0x08, 0x02, 0x80, 0xe0, 0x80, 0xf7, 0x29, 0x4c, 0x04, 0x0a, 0x04, 0x02, 0x83, 0x11, 0x44, 0x4c, 0x3d, 0x80, 0xc2, 0x3c, 0x06, 0x01, 0x04, 0x55, 0x05, 0x1b, 0x34, 0x02, 0x81, 0x0e, 0x2c, 0x04, 0x64, 0x0c, 0x56, 0x0a, 0x80, 0xae, 0x38, 0x1d, 0x0d, 0x2c, 0x04, 0x09, 0x07, 0x02, 0x0e, 0x06, 0x80, 0x9a, 0x83, 0xd9, 0x03, 0x11, 0x03, 0x0d, 0x03, 0x80, 0xda, 0x06, 0x0c, 0x04, 0x01, 0x0f, 0x0c, 0x04, 0x38, 0x08, 0x0a, 0x06, 0x28, 0x08, 0x2c, 0x04, 0x02, 0x0e, 0x09, 0x27, 0x81, 0x58, 0x08, 0x1d, 0x03, 0x0b, 0x03, 0x3b, 0x04, 0x1e, 0x04, 0x0a, 0x07, 0x80, 0xfb, 0x84, 0x05
  data_1258: .byte 0x00, 0x01, 0x03, 0x05, 0x05, 0x06, 0x06, 0x02, 0x07, 0x06, 0x08, 0x07, 0x09, 0x11, 0x0a, 0x1c, 0x0b, 0x19, 0x0c, 0x19, 0x0d, 0x10, 0x0e, 0x0c, 0x0f, 0x04, 0x10, 0x03, 0x12, 0x12, 0x13, 0x09, 0x16, 0x01, 0x17, 0x04, 0x18, 0x01, 0x19, 0x03, 0x1a, 0x09, 0x1b, 0x01, 0x1c, 0x02, 0x1f, 0x16, 0x20, 0x03, 0x2b, 0x02, 0x2d, 0x0b, 0x2e, 0x01, 0x30, 0x04, 0x31, 0x02, 0x32, 0x01, 0xa9, 0x02, 0xaa, 0x04, 0xab, 0x08, 0xfa, 0x02, 0xfb, 0x05, 0xfe, 0x03, 0xff, 0x09, 0x00, 0x00, 0x00, 0x00
  data_12a8: .byte 0xad, 0x78, 0x79, 0x8b, 0x8d, 0xa2, 0x30, 0x57, 0x58, 0x8b, 0x8c, 0x90, 0x1c, 0xdd, 0x0e, 0x0f, 0x4b, 0x4c, 0xfb, 0xfc, 0x2e, 0x2f, 0x3f, 0x5c, 0x5d, 0x5f, 0xe2, 0x84, 0x8d, 0x8e, 0x91, 0x92, 0xa9, 0xb1, 0xba, 0xbb, 0xc5, 0xc6, 0xc9, 0xca, 0xde, 0xe4, 0xe5, 0xff, 0x00, 0x04, 0x11, 0x12, 0x29, 0x31, 0x34, 0x37, 0x3a, 0x3b, 0x3d, 0x49, 0x4a, 0x5d, 0x84, 0x8e, 0x92, 0xa9, 0xb1, 0xb4, 0xba, 0xbb, 0xc6, 0xca, 0xce, 0xcf, 0xe4, 0xe5, 0x00, 0x04, 0x0d, 0x0e, 0x11, 0x12, 0x29, 0x31, 0x34, 0x3a, 0x3b, 0x45, 0x46, 0x49, 0x4a, 0x5e, 0x64, 0x65, 0x84, 0x91, 0x9b, 0x9d, 0xc9, 0xce, 0xcf, 0x0d, 0x11, 0x29, 0x3a, 0x3b, 0x45, 0x49, 0x57, 0x5b, 0x5e, 0x5f, 0x64, 0x65, 0x8d, 0x91, 0xa9, 0xb4, 0xba, 0xbb, 0xc5, 0xc9, 0xdf, 0xe4, 0xe5, 0xf0, 0x0d, 0x11, 0x45, 0x49, 0x64, 0x65, 0x80, 0x84, 0xb2, 0xbc, 0xbe, 0xbf, 0xd5, 0xd7, 0xf0, 0xf1, 0x83, 0x85, 0x8b, 0xa4, 0xa6, 0xbe, 0xbf, 0xc5, 0xc7, 0xcf, 0xda, 0xdb, 0x48, 0x98, 0xbd, 0xcd, 0xc6, 0xce, 0xcf, 0x49, 0x4e, 0x4f, 0x57, 0x59, 0x5e, 0x5f, 0x89, 0x8e, 0x8f, 0xb1, 0xb6, 0xb7, 0xbf, 0xc1, 0xc6, 0xc7, 0xd7, 0x11, 0x16, 0x17, 0x5b, 0x5c, 0xf6, 0xf7, 0xfe, 0xff, 0x80, 0x6d, 0x71, 0xde, 0xdf, 0x0e, 0x1f, 0x6e, 0x6f, 0x1c, 0x1d, 0x5f, 0x7d, 0x7e, 0xae, 0xaf, 0xde, 0xdf, 0x4d, 0xbb, 0xbc, 0x16, 0x17, 0x1e, 0x1f, 0x46, 0x47, 0x4e, 0x4f, 0x58, 0x5a, 0x5c, 0x5e, 0x7e, 0x7f, 0xb5, 0xc5, 0xd4, 0xd5, 0xdc, 0xf0, 0xf1, 0xf5, 0x72, 0x73, 0x8f, 0x74, 0x75, 0x26, 0x2e, 0x2f, 0xa7, 0xaf, 0xb7, 0xbf, 0xc7, 0xcf, 0xd7, 0xdf, 0x9a, 0x00, 0x40, 0x97, 0x98, 0x30, 0x8f, 0x1f, 0xce, 0xff, 0x4e, 0x4f, 0x5a, 0x5b, 0x07, 0x08, 0x0f, 0x10, 0x27, 0x2f, 0xee, 0xef, 0x6e, 0x6f, 0x37, 0x3d, 0x3f, 0x42, 0x45, 0x53, 0x67, 0x75, 0xc8, 0xc9, 0xd0, 0xd1, 0xd8, 0xd9, 0xe7, 0xfe, 0xff, 0x00, 0x00, 0x00, 0x00
  data_13c8: .byte 0x00, 0x20, 0x5f, 0x22, 0x82, 0xdf, 0x04, 0x82, 0x44, 0x08, 0x1b, 0x04, 0x06, 0x11, 0x81, 0xac, 0x0e, 0x80, 0xab, 0x05, 0x20, 0x07, 0x81, 0x1c, 0x03, 0x19, 0x08, 0x01, 0x04, 0x2f, 0x04, 0x34, 0x04, 0x07, 0x03, 0x01, 0x07, 0x06, 0x07, 0x11, 0x0a, 0x50, 0x0f, 0x12, 0x07, 0x55, 0x07, 0x03, 0x04, 0x1c, 0x0a, 0x09, 0x03, 0x08, 0x03, 0x07, 0x03, 0x02, 0x03, 0x03, 0x03, 0x0c, 0x04, 0x05, 0x03, 0x0b, 0x06, 0x01, 0x0e, 0x15, 0x05, 0x4e, 0x07, 0x1b, 0x07, 0x57, 0x07, 0x02, 0x05, 0x18, 0x0c, 0x50, 0x04, 0x43, 0x03, 0x2d, 0x03, 0x01, 0x04, 0x11, 0x06, 0x0f, 0x0c, 0x3a, 0x04, 0x1d, 0x25, 0x5f, 0x20, 0x6d, 0x04, 0x6a, 0x25, 0x80, 0xc8, 0x05, 0x82, 0xb0, 0x03, 0x1a, 0x06, 0x82, 0xfd, 0x03, 0x59, 0x07, 0x16, 0x09, 0x18, 0x09, 0x14, 0x0c, 0x14, 0x0c, 0x6a, 0x06, 0x0a, 0x06, 0x1a, 0x06, 0x59, 0x07, 0x2b, 0x05, 0x46, 0x0a, 0x2c, 0x04, 0x0c, 0x04, 0x01, 0x03, 0x31, 0x0b, 0x2c, 0x04, 0x1a, 0x06, 0x0b, 0x03, 0x80, 0xac, 0x06, 0x0a, 0x06, 0x4c, 0x14, 0x80, 0xf4, 0x08, 0x3c, 0x03, 0x0f, 0x03, 0x3e, 0x05, 0x38, 0x08, 0x2b, 0x05, 0x82, 0xff, 0x11, 0x18, 0x08, 0x2f, 0x11, 0x2d, 0x03, 0x22, 0x0e, 0x21, 0x0f, 0x80, 0x8c, 0x04, 0x82, 0x9a, 0x16, 0x0b, 0x15, 0x88, 0x94, 0x05, 0x2f, 0x05, 0x3b, 0x07, 0x02, 0x0e, 0x18, 0x09, 0x80, 0xbe, 0x22, 0x74, 0x0c, 0x80, 0xd6, 0x1a, 0x81, 0x10, 0x05, 0x80, 0xe1, 0x09, 0xf2, 0x9e, 0x03, 0x37, 0x09, 0x81, 0x5c, 0x14, 0x80, 0xb8, 0x08, 0x80, 0xdd, 0x14, 0x3c, 0x03, 0x0a, 0x06, 0x38, 0x08, 0x46, 0x08, 0x0c, 0x06, 0x74, 0x0b, 0x1e, 0x03, 0x5a, 0x04, 0x59, 0x09, 0x80, 0x83, 0x18, 0x1c, 0x0a, 0x16, 0x09, 0x4c, 0x04, 0x80, 0x8a, 0x06, 0xab, 0xa4, 0x0c, 0x17, 0x04, 0x31, 0xa1, 0x04, 0x81, 0xda, 0x26, 0x07, 0x0c, 0x05, 0x05, 0x82, 0xb3, 0x20, 0x2a, 0x06, 0x4c, 0x04, 0x80, 0x8d, 0x04, 0x80, 0xbe, 0x03, 0x1b, 0x03, 0x0f, 0x0d, 0x00, 0x00, 0x00, 0x00
  data_14f0: .byte 0x00, 0x03, 0x00, 0x00, 0x83, 0x04, 0x20, 0x00, 0x91, 0x05, 0x60, 0x00, 0x5d, 0x13, 0xa0, 0x00, 0x12, 0x17, 0x20, 0x1f, 0x0c, 0x20, 0x60, 0x1f, 0xef, 0x2c, 0x60, 0x2b, 0x2a, 0x30, 0xe0, 0x2b, 0x6f, 0xa6, 0xa0, 0x2c, 0x02, 0xa8, 0x20, 0x2d, 0x1e, 0xfb, 0x20, 0x2e, 0x00, 0xfe, 0x60, 0x36, 0x9e, 0xff, 0xa0, 0x36, 0xfd, 0x01, 0x21, 0x37, 0x01, 0x0a, 0x61, 0x37, 0x24, 0x0d, 0x21, 0x38, 0xab, 0x0e, 0xa1, 0x39, 0x2f, 0x18, 0x21, 0x3a, 0xf3, 0x1e, 0x21, 0x4b, 0x40, 0x34, 0xa1, 0x53, 0x1e, 0x61, 0xe1, 0x54, 0xf0, 0x6a, 0x61, 0x55, 0x4f, 0x6f, 0xe1, 0x55, 0x9d, 0xbc, 0x61, 0x56, 0x00, 0xcf, 0x61, 0x57, 0x65, 0xd1, 0xa1, 0x57, 0x00, 0xda, 0x21, 0x58, 0x00, 0xe0, 0xa1, 0x59, 0xae, 0xe2, 0x21, 0x5b, 0xec, 0xe4, 0xe1, 0x5c, 0xd0, 0xe8, 0x61, 0x5d, 0x20, 0x00, 0xee, 0x5e, 0xf0, 0x01, 0x7f, 0x5f, 0x00, 0x00, 0x00, 0x00
  data_1578: .quad 0x0000000000002e2e
  data_1580: .quad 0x0000000000007830
  data_1588: .byte 0xe8, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00
  data_15a0: .byte 0xe8, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9f, 0x00, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00
  data_15b8: .byte 0x18, 0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3d, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
  data_15d0: .byte 0x78, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xd0, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe8, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x48, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x90, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xb0, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
  data_1670: .byte 0xf8, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x00, 0x00, 0x00, 0x2b, 0x00, 0x00, 0x00
  data_1688: .byte 0xf8, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1a, 0x00, 0x00, 0x00, 0x36
