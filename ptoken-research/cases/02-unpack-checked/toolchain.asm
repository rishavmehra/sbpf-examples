.globl entrypoint

fn_0000:
  *(u8 *)(r1 + 0x10) = w3
  *(u64 *)(r1 + 0x8) = r2
  *(u64 *)(r1 + 0x0) = 0x0
  exit

entrypoint:
  r6 = r1
  r8 = 0x0
  w7 = *(u8 *)(r6 + 0x10)
  goto jmp_00b8

jmp_0040:
  w2 = *(u8 *)(r10 - 0xff0)
  r3 = r2
  r3 &= 0x3f
  r6 = r1
  r6 <<= r3
  r2 = -r2
  r2 &= 0x3f
  r1 >>= r2
  r6 |= r1

jmp_0088:
  r1 = r8
  r1 += 0x1
  r2 = r8
  r2 &= 0xff
  r8 = r1
  if r2 >= 0x3f goto jmp_0118

jmp_00b8:
  r3 = r8
  r3 += r7
  r1 = r10
  r1 += -0x1000
  r2 = r6
  call fn_0000
  r1 = *(u64 *)(r10 - 0xff8)
  r2 = *(u64 *)(r10 - 0x1000)
  if r2 != 0x1 goto jmp_0040
  r1 ^= r6
  r6 = r1
  goto jmp_0088

jmp_0118:
  *(u64 *)(r10 - 0x1000) = r6
  r1 = r10
  r1 += -0x1000
  r0 = 0x0
  exit
