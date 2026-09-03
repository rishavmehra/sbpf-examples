.globl entrypoint

fn_0000:
  r0 = r2
  r2 = r1
  r2 &= 0xff
  if r2 s> 0xb goto jmp_0068
  if r2 s> 0x6 goto jmp_0098
  if r2 == 0x0 goto jmp_0100
  if r2 == 0x1 goto jmp_0158
  if r2 != 0x3 goto jmp_0198
  r1 = r0
  r1 >>= 0x3d
  r0 <<= 0x3
  r0 |= r1
  goto jmp_01a8

jmp_0068:
  if r2 s> 0x11 goto jmp_00d8
  if r2 == 0xc goto jmp_0110
  if r2 == 0xf goto jmp_0168
  if r2 != 0x11 goto jmp_0198
  r0 ^= 0x11
  goto jmp_01a8

jmp_0098:
  if r2 == 0x7 goto jmp_0120
  if r2 == 0x8 goto jmp_0178
  if r2 != 0x9 goto jmp_0198
  r1 = r0
  r1 >>= 0x9
  r0 <<= 0x37
  r0 |= r1
  goto jmp_01a8

jmp_00d8:
  if r2 == 0x12 goto jmp_0130
  if r2 == 0x14 goto jmp_0188
  if r2 != 0x16 goto jmp_0198
  r0 += 0x16
  goto jmp_01a8

jmp_0100:
  r0 += 0x1
  goto jmp_01a8

jmp_0110:
  r0 += 0xc
  goto jmp_01a8

jmp_0120:
  r0 *= 0x7
  goto jmp_01a8

jmp_0130:
  r1 = r0
  r1 >>= 0x2e
  r0 <<= 0x12
  r0 |= r1
  goto jmp_01a8

jmp_0158:
  r0 += -0x1
  goto jmp_01a8

jmp_0168:
  r0 += -0xf
  goto jmp_01a8

jmp_0178:
  r0 ^= 0x8
  goto jmp_01a8

jmp_0188:
  r0 *= 0x14
  goto jmp_01a8

jmp_0198:
  r2 = r0
  call fn_01b0

jmp_01a8:
  exit

fn_01b0:
  r0 = -0x1
  r1 &= 0xff
  if r1 s<= 0x9 goto jmp_0210
  if r1 s<= 0x16 goto jmp_0270
  if r1 == 0x17 goto jmp_02b0
  if r1 == 0x26 goto jmp_02e8
  if r1 != 0x2d goto jmp_02f8
  r1 = r2
  r1 >>= 0x33
  r2 <<= 0xd
  r2 |= r1
  goto jmp_02f0

jmp_0210:
  if r1 s> 0x4 goto jmp_0250
  if r1 == 0x2 goto jmp_0290
  if r1 != 0x4 goto jmp_02f8
  r1 = r2
  r1 >>= 0x3c
  r2 <<= 0x4
  r2 |= r1
  goto jmp_02f0

jmp_0250:
  if r1 == 0x5 goto jmp_02a0
  if r1 != 0x6 goto jmp_02f8
  r2 *= 0x6
  goto jmp_02f0

jmp_0270:
  if r1 == 0xa goto jmp_02c0
  if r1 != 0xd goto jmp_02f8
  r2 += 0xd
  goto jmp_02f0

jmp_0290:
  r2 += 0x2
  goto jmp_02f0

jmp_02a0:
  r2 ^= 0x5
  goto jmp_02f0

jmp_02b0:
  r2 ^= 0x17
  goto jmp_02f0

jmp_02c0:
  r1 = r2
  r1 >>= 0xa
  r2 <<= 0x36
  r2 |= r1
  goto jmp_02f0

jmp_02e8:
  r2 *= 0x26

jmp_02f0:
  r0 = r2

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
  call fn_0000
  r6 += 0x1
  if r6 != 0x40 goto jmp_0318
  *(u64 *)(r10 - 0x1000) = r0
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit
