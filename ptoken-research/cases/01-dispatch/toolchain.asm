.globl entrypoint

fn_0000:
  r0 = -0x1
  r1 &= 0xff
  if r1 s<= 0x9 goto jmp_0060
  if r1 s<= 0x16 goto jmp_00c0
  if r1 == 0x17 goto jmp_0100
  if r1 == 0x26 goto jmp_0138
  if r1 != 0x2d goto jmp_0148
  r1 = r2
  r1 >>= 0x33
  r2 <<= 0xd
  r2 |= r1
  goto jmp_0140

jmp_0060:
  if r1 s> 0x4 goto jmp_00a0
  if r1 == 0x2 goto jmp_00e0
  if r1 != 0x4 goto jmp_0148
  r1 = r2
  r1 >>= 0x3c
  r2 <<= 0x4
  r2 |= r1
  goto jmp_0140

jmp_00a0:
  if r1 == 0x5 goto jmp_00f0
  if r1 != 0x6 goto jmp_0148
  r2 *= 0x6
  goto jmp_0140

jmp_00c0:
  if r1 == 0xa goto jmp_0110
  if r1 != 0xd goto jmp_0148
  r2 += 0xd
  goto jmp_0140

jmp_00e0:
  r2 += 0x2
  goto jmp_0140

jmp_00f0:
  r2 ^= 0x5
  goto jmp_0140

jmp_0100:
  r2 ^= 0x17
  goto jmp_0140

jmp_0110:
  r1 = r2
  r1 >>= 0xa
  r2 <<= 0x36
  r2 |= r1
  goto jmp_0140

jmp_0138:
  r2 *= 0x26

jmp_0140:
  r0 = r2

jmp_0148:
  exit

fn_0150:
  r0 = r2
  r2 = r1
  r2 &= 0xff
  if r2 s> 0xb goto jmp_01b8
  if r2 s> 0x6 goto jmp_01e8
  if r2 == 0x0 goto jmp_0250
  if r2 == 0x1 goto jmp_02a8
  if r2 != 0x3 goto jmp_02e8
  r1 = r0
  r1 >>= 0x3d
  r0 <<= 0x3
  r0 |= r1
  goto jmp_02f8

jmp_01b8:
  if r2 s> 0x11 goto jmp_0228
  if r2 == 0xc goto jmp_0260
  if r2 == 0xf goto jmp_02b8
  if r2 != 0x11 goto jmp_02e8
  r0 ^= 0x11
  goto jmp_02f8

jmp_01e8:
  if r2 == 0x7 goto jmp_0270
  if r2 == 0x8 goto jmp_02c8
  if r2 != 0x9 goto jmp_02e8
  r1 = r0
  r1 >>= 0x9
  r0 <<= 0x37
  r0 |= r1
  goto jmp_02f8

jmp_0228:
  if r2 == 0x12 goto jmp_0280
  if r2 == 0x14 goto jmp_02d8
  if r2 != 0x16 goto jmp_02e8
  r0 += 0x16
  goto jmp_02f8

jmp_0250:
  r0 += 0x1
  goto jmp_02f8

jmp_0260:
  r0 += 0xc
  goto jmp_02f8

jmp_0270:
  r0 *= 0x7
  goto jmp_02f8

jmp_0280:
  r1 = r0
  r1 >>= 0x2e
  r0 <<= 0x12
  r0 |= r1
  goto jmp_02f8

jmp_02a8:
  r0 += -0x1
  goto jmp_02f8

jmp_02b8:
  r0 += -0xf
  goto jmp_02f8

jmp_02c8:
  r0 ^= 0x8
  goto jmp_02f8

jmp_02d8:
  r0 *= 0x14
  goto jmp_02f8

jmp_02e8:
  r2 = r0
  call fn_0000

jmp_02f8:
  exit

entrypoint:
  r0 = r1
  r6 = 0x0
  w7 = *(u8 *)(r0 + 0x10)

jmp_0318:
  r0 ^= r6
  r1 = r7
  r1 += r6
  r1 &= 0xff
  r1 %= 0x2e
  r2 = r0
  call fn_0150
  r6 += 0x1
  if r6 != 0x40 goto jmp_0318
  *(u64 *)(r10 - 0x1000) = r0
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit
