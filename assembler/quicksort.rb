$:.push File.expand_path("../../SimpleAsm/lib", __FILE__)
require 'simple_asm'
include SimpleAsm

Simple.define_function(:swap) do |address_reg0, address_reg1|
  ld r6, address_reg0, 0
  ld r7, address_reg1, 0
  st r7, address_reg0, 0
  st r6, address_reg1, 0
end

Simple.define_function(:pop_left) do |reg, stack_pos|
  ld reg, stack_pos, 0
end
Simple.define_function(:pop_right) do |reg, stack_pos|
  li r7, 1
  sll r7, 9
  add r7, stack_pos
  ld reg, r7, 0
end
Simple.define_function(:push_left) do |reg, stack_pos|
  st reg, stack_pos, 0
end
Simple.define_function(:push_right) do |reg, stack_pos|
  li r7, 1
  sll r7, 9
  add r7, stack_pos
  st reg, r7, 0
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
  push_left left, stack_pos
  push_right right, stack_pos

  label :for
    # if (stack_pos < 0) exit
    li r7, 0
    cmp stack_pos, r7
    jlt :exit

    # fetch left, right from stack
    pop_left left, stack_pos
    pop_right right, stack_pos
    addi stack_pos, -1

    # if (right <= left) continue
    cmp right, left
    jle :for

    # pivot = left
    mov i, left
    mov j, right
    ld pivot, i, 0

    label :divide_by_pivot

      # while (i <= right && a[i] < pivot) i++
      label :larger_than_pivot
        cmp right, i
        jlt :less_than_pivot
        ld r6, i, 0
        cmp pivot, r6
        jle :less_than_pivot
        addi i, 1
        jmp :larger_than_pivot

      # while (left <= j && pivot < a[j]) j--
      label :less_than_pivot
        cmp j, left
        jlt :check_position
        ld r6, j, 0
        cmp r6, pivot
        jle :check_position
        addi j, -1
        jmp :less_than_pivot

      # if (j <= i) break
      label :check_position
        cmp j, i
        jle :recursive_quicksort

      swap i, j

      addi i, 1
      addi j, -1

      jmp :divide_by_pivot

    label :recursive_quicksort
      # stack left, i-1
      addi stack_pos, 1
      push_left left, stack_pos
      mov r6, i
      addi r6, -1
      push_right r6, stack_pos

      # stack j+1, right
      addi stack_pos, 1
      mov r6, j
      addi r6, 1
      push_left r6, stack_pos
      push_right right, stack_pos

    jmp :for

  label :exit
    hlt
end

puts s.to_mif(0x400)
