$:.push File.expand_path("../../SimpleAsm/lib", __FILE__)
require 'simple_asm'
include SimpleAsm
# アドレスは12ビット
# r0, r1
# length: 4
SWAP_LENGTH = 4

Simple.define_function(:swap) do |address_reg0, address_reg1|
  ld r6, address_reg0, 0
  ld r7, address_reg1, 0
  st r7, address_reg0, 0
  st r6, address_reg1, 0
end
Simple.define_function(:pop_left) do |reg, stack_pos|
end
Simple.define_function(:pop_right) do |reg, stack_pos|
end

# 0x400 ~ 0x7ffまでのクイックソート
# 0x000 ~ 0x1ff: leftのstack
# 0x200 ~ 0x3ff: rightのstack
s = Simple.new do
  left = r0
  right = r1
  pivot = r2
  i = r3
  j = r4
  stack_pos = r5

  # left = 0x400
  li left, 1
  sll left, 10

  # right = 0x7ff
  li right, 1
  sll right, 11
  addi right, -1

  # stack_pos = 0
  li stack_pos, 0

  # stack left, right
  stack_left stack_pos, left
  stack_right stack_pos, right

  label :for
    # fetch left, right from stack
    pop_left left, stack_pos
    pop_right right, stack_pos
    addi stack_pos, -1

    # if (right < left) continue
    cmp right, left
    jlt :for

    mov i, left
    mov j, right
    ld pivot, i, 0

    label :divide_by_pivot

      # while (a[i] < pivot) i++
      label :larger_than_pivot
        ld r5, i, 0
        cmp pivot, r5
        jlt :less_than_pivot
        addi i, 1
        j :larger_than_pivot

      # while (pivot < a[j]) j++
      label :less_than_pivot
        ld r5, j, 0
        cmp r5, pivot
        jlt :check_position
        addi j, -1
        j :less_than_pivot

      # if (i >= j) break
      label :check_position
        cmp j, i
        jlt :recursive_quicksort

      swap i, j

      addi i, 1
      addi j, -1

    label :recursive_quicksort
      # stack left, i-1
      addi stack_pos, 1
      stack_left stack_pos, left
      mov r6, i
      addi r6, -1
      stack_right stack_pos, r6

      # stack j+1, right
      addi stack_pos, 1
      mov r6, j
      addi j, 1
      stack_left stack_pos, r6
      stack_right stack_pos, right

    j :for
end

puts s.to_mif(0x400)
