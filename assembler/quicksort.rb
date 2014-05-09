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

Simple.define_function(:plus_one) do |register|
  add register, r4
end

# 0x00 ~ 0x10までの数字ソート
# r0, r1: swap, length
# r2: i
# r3: j
# r4: 1
# r5: size
# r6, r7
s = Simple.new do
  i = r2
  j = r3
  size = r5

  # r4 = 1
  li r4, 1

  # i = 0
  li i, 0

  # size = 0x10
  li size, 1
  sll size, 4

  label :for_i
    li j, 1

    label :for_j
      # r7 = A[j-1]
      sub j, r4
      ld r7, j, 0

      # r6 = A[j]
      plus_one j
      ld r6, j, 0

      sub r7, r6
      blt SWAP_LENGTH + 2
      # r6 = j - 1
      mov r6, j
      sub r6, r4
      swap j, r6

    # r1 = size - i
    mov r1, size
    sub r1, i

    plus_one j
    cmp j, r1
    jlt :for_j

  # r1 = size
  mov r1, size

  plus_one i
  cmp i, r1
  jlt :for_i
end

puts s.to_mif(0x400)
