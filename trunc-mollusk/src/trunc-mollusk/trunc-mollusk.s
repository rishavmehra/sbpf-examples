.globl entrypoint
entrypoint:
  mov64 r1, 5000000000
  stxdw [r10-8], r1
  mov64 r1, r10
  add64 r1, -8
  mov64 r2, 8
  call sol_set_return_data
  mov64 r0, 0
  exit
