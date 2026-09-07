.globl entrypoint

entrypoint:
  mov64 r3, 0x0
  mov64 r2, r1
  add64 r2, 0x8
  ldxdw r5, [r1+0x0]
  mov64 r6, r2
  jeq r5, 0x0, jmp_02a0
  stxdw [r10-0x18], r2
  ldxdw r3, [r1+0x58]
  add64 r1, r3
  mov64 r3, 0x1
  add64 r1, 0x286f
  and64 r1, -0x8
  mov64 r6, r1
  jeq r5, 0x1, jmp_02a0
  ldxb r4, [r1+0x0]
  mov64 r3, r5
  jlt r5, 0x3, jmp_0090
  mov64 r3, 0x3

jmp_0090:
  mov64 r0, r5
  sub64 r0, r3
  jne r5, 0x2, jmp_00f8
  jne32 r4, 0xff, jmp_0220
  stxdw [r10-0x10], r1
  ldxdw r4, [r1+0x50]
  mov64 r7, r1
  add64 r7, r4
  add64 r7, 0x2867
  and64 r7, -0x8
  mov64 r6, r7
  jeq r0, 0x0, jmp_02a0
  ja jmp_0270

jmp_00f8:
  jne32 r4, 0xff, jmp_0188
  ldxdw r6, [r1+0x50]
  mov64 r4, r1
  add64 r4, r6
  add64 r4, 0x2867
  and64 r4, -0x8

jmp_0128:
  stxdw [r10-0x10], r1
  ldxb r6, [r4+0x0]
  jne r6, 0xff, jmp_01c8
  stxdw [r10-0x8], r4
  ldxdw r6, [r4+0x50]
  mov64 r7, r4
  add64 r7, r6
  add64 r7, 0x2867
  and64 r7, -0x8
  mov64 r6, r7
  jeq r0, 0x0, jmp_02a0
  ja jmp_0270

jmp_0188:
  lsh64 r4, 0x3
  mov64 r6, r10
  add64 r6, -0x18
  add64 r6, r4
  mov64 r4, r1
  add64 r4, 0x8
  ldxdw r1, [r6+0x0]
  ja jmp_0128

jmp_01c8:
  lsh64 r6, 0x3
  mov64 r8, r10
  add64 r8, -0x18
  add64 r8, r6
  mov64 r7, r4
  add64 r7, 0x8
  ldxdw r4, [r8+0x0]
  stxdw [r10-0x8], r4
  mov64 r6, r7
  jeq r0, 0x0, jmp_02a0
  ja jmp_0270

jmp_0220:
  lsh64 r4, 0x3
  mov64 r6, r10
  add64 r6, -0x18
  add64 r6, r4
  mov64 r7, r1
  add64 r7, 0x8
  ldxdw r1, [r6+0x0]
  stxdw [r10-0x10], r1
  mov64 r6, r7
  jeq r0, 0x0, jmp_02a0

jmp_0270:
  mov64 r0, r3
  sub64 r0, r5
  mov64 r6, r7
  ja jmp_0428

jmp_0290:
  mov64 r7, r6
  jne32 r5, 0x1, jmp_0428

jmp_02a0:
  mov64 r0, 0xc
  ldxdw r5, [r6+0x0]
  jlt r5, 0x9, jmp_0490
  ldxb r5, [r6+0x8]
  jne32 r5, 0x4, jmp_0490
  lddw r0, 0xb00000000
  jne r3, 0x3, jmp_0490
  lddw r0, 0x400000000
  ldxdw r3, [r2+0x50]
  jne r3, 0xa5, jmp_0490
  ldxb r3, [r2+0xc4]
  jgt32 r3, 0x2, jmp_0490
  lddw r0, 0xa00000000
  jeq32 r3, 0x0, jmp_0490
  mov64 r0, 0x11
  jeq32 r3, 0x2, jmp_0490
  mov64 r0, 0x4
  ldxdw r3, [r4+0x8]
  ldxdw r5, [r2+0x78]
  jne r5, r3, jmp_0490
  ldxdw r3, [r4+0x10]
  ldxdw r5, [r2+0x80]
  jne r5, r3, jmp_0490
  ldxdw r3, [r4+0x18]
  ldxdw r5, [r2+0x88]
  jne r5, r3, jmp_0490
  ldxdw r3, [r4+0x20]
  ldxdw r5, [r2+0x90]
  jne r5, r3, jmp_0490
  lddw r0, 0x800000000
  ldxb r3, [r4+0x1]
  jeq32 r3, 0x0, jmp_0490
  ldxdw r3, [r6+0x9]
  stb [r2+0xa0], 0x1
  ldxdw r4, [r1+0x8]
  ldxdw r5, [r1+0x10]
  ldxdw r0, [r1+0x18]
  ldxdw r1, [r1+0x20]
  stxdw [r2+0xbc], r1
  stxdw [r2+0xb4], r0
  stxdw [r2+0xac], r5
  stxdw [r2+0xa4], r4
  stxdw [r2+0xd1], r3
  mov64 r0, 0x0
  ja jmp_0490

jmp_0428:
  add64 r6, 0x8
  ldxb r5, [r7+0x0]
  jne32 r5, 0xff, jmp_0468
  ldxdw r5, [r7+0x50]
  add64 r7, r5
  add64 r7, 0x2867
  and64 r7, -0x8
  mov64 r6, r7

jmp_0468:
  add64 r0, 0x1
  mov32 r5, 0x1
  jeq r0, 0x0, jmp_0290
  mov32 r5, 0x0
  ja jmp_0290

jmp_0490:
  exit
