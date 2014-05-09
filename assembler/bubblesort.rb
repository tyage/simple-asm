$:.push File.expand_path("../../SimpleAsm/lib", __FILE__)
require 'simple_asm'
include SimpleAsm
# アドレスは12ビット
# r0, r1
# length: 4
SWAP_LENGTH = 4

Simple.define_function(:swap) do |address_reg0, address_reg1|
  ld r0, address_reg0, 0
  ld r1, address_reg1, 0
  st r1, address_reg0, 0
  st r0, address_reg1, 0
end

# 0x400 ~ 0x7ffまでのバブルソート
# r0, r1
# r2: i
# r3: j
# r4
# r5: size
# r6, r7
s = Simple.new do
  i = r2
  j = r3
  size = r5

  # i = 0
  li i, 0

  # size = 0x7ff
  li size, 1
  sll size, 11
  addi size, -1
  out size

  label :for_i
    # j = 0x401
    li j, 1
    sll j, 10
    addi j, 1

    label :for_j
      # r7 = A[j-1]
      addi j, -1
      ld r7, j, 0

      # r6 = A[j]
      addi j, 1
      ld r6, j, 0

      out r7
      out r6
      sub r7, r6
      blt SWAP_LENGTH + 2
      # r6 = j - 1
      mov r6, j
      addi r6, -1
      swap j, r6

    # r0 = size - i
    mov r0, size
    sub r0, i

    addi j, 1
    cmp j, r0
    jlt :for_j

  # r0 = 0x3ff
  li r0, 1
  sll r0, 10
  addi r0, -1

  addi i, 1
  cmp i, r0
  jlt :for_i
end

puts s.to_mif(0x400)
