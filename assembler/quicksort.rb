$:.push File.expand_path("../../SimpleAsm/lib", __FILE__)
require 'simple_asm'
include SimpleAsm

THRESHOLD = 10
LEFT_STACK_BASE = 0x300  # 1100000000
RIGHT_STACK_BASE = 0x380 # 1110000000

Simple.define_function(:load_left_stack_base) do |register|
  li register, 0b11
  sll register, 8
end

Simple.define_function(:load_right_stack_base) do |register|
  li register, 0b111
  sll register, 7
end

Simple.define_function(:load_array_base) do |register|
  li register, 1
  sll register, 10
end

Simple.define_function(:load_array_pointer) do |register, p|
  load_array_base register
  add register, p
end

Simple.define_function(:plus_one) do |register|
  addi register, 1
end

Simple.define_function(:minus_one) do |register|
  li r7, 1
  sub register, r7
end

Simple.define_function(:swap) do |reg1, reg2|
  t = r7
  ld t, reg1, 0
  st reg2, reg1, 0
  st t, reg2, 0
end

Simple.define_function(:inssort) do
  i = r0
  j = r1
  x = r2
  n = r3

  li n, 1
  sll n, 10

  li i, 1

  label :for_inssort_1
    # i < n;
    cmp n, i
    jle :end_for_inssort_1

    # x = a[i]
    load_array_pointer r7, i
    ld x, r7, 0

    # j = i - 1;
    mov j, i
    minus_one j
    label :for_inssort_2
      # j >= 0;
      li r7, 0
      cmp j, r7
      jlt :end_for_inssort_2 # jmp if j < 0

      # a[j] > x;
      load_array_pointer r7, j
      ld r6, r7, 0
      cmp r6, x

      jle :end_for_inssort_2 # jmp if a[j] - x <= 0

      # a[j+1] = a[j]
      load_array_pointer r7, j
      load_array_pointer r6, j
      plus_one r6

      ld r5, r7, 0
      st r5, r6, 0

      # j--;
      minus_one j
      jmp :for_inssort_2
    label :end_for_inssort_2

    # a[j+1] = x;
    load_array_pointer r6, j
    plus_one r6

    st x, r6, 0

    # i++;
    plus_one i
    jmp :for_inssort_1
  label :end_for_inssort_1
end

# 0x400 ~ 0x7FFまでの数字ソート
# r0, r1: left, right
# r2 : p
s = Simple.new do
  left = r0
  right = r1
  p = r2

  # left = 0x400
  li left, 1
  sll left, 10

  # right = 0x7FF
  li right, 0b01111111
  sll right, 4
  li r7, 0b1111
  add right, r7

  # p = 0
  li p, 0

  # for( ; ; )
  label :for
    # if (right - left <= THRESHOLD)
    li r7, THRESHOLD
    add r7, left
    cmp r7, right
    jlt :threshold
      # if (p == 0) break;
      li r7, 0
      cmp p, r7
      je :end_for

      # p--;
      minus_one p

      # left = leftstack[p]
      load_left_stack_base r7
      add r7, p
      mov left, r7

      # right = rightstack[p]
      load_right_stack_base r7
      add r7, p
      mov right, r7
    label :threshold

    # x = a[(left + right) / 2]
    x = r4
    mov r6, left
    add r6, right
    srl r6, 1
    st r6, x, 0

    # i = left; j = right
    i = r6
    j = r5
    mov i, left
    mov j, right

    # i, j = r6, r5
    label :for2
      # while(a[i] < x) i++;
      label :while_i
        a_i = r7
        ld a_i, i, 0
        cmp x, a_i
        jle :end_while_i

        plus_one i
        jmp :while_i
      label :end_while_i

      # while(x < a[j]) j--;
      label :while_j
        a_j = r7
        ld a_j, j, 0
        cmp a_j, x
        jle :end_while_j

        minus_one j
      label :end_while_j

      # if (i >= j) break;
      mov r7, i
      sub r7, j
      jlt :end_if_i_j
        jmp :end_for
      label :end_if_i_j

      # t = a[i]; a[i] = a[j]; a[j] = t;
      swap i, j

      # i++; j--;
      plus_one i
      minus_one j
    label :end_for2

    # if (i - left > right - j) {
    mov r7, i
    sub r7, left
    mov r4, right
    sub r4, j
    cmp r7, r4
    jle :else_1
      # if (i - left > THRESHOLD)
      mov r7, i
      sub r7, left
      li r4, THRESHOLD
      cmp r7, r4
      jle :end_if_1_1
        # leftstack[p] = left;
        load_left_stack_base r7
        add r7, p
        st left, r7, 0

        # rightstack[p] = i - 1;
        load_right_stack_base r7
        add r7, p
        mov r4, i
        minus_one r4
        st r4, r7, 0

        # p++;
        plus_one p
      label :end_if_1_1
      # left = j + 1;
      mov r7, j
      plus_one r7
      mov left, r7

      jmp :end_if_1
    # } else {
    label :else_1
      # if (right - j > THRESHOLD)
      mov r7, right
      sub r7, j
      li r4, THRESHOLD
      cmp r7, r4
      jle :end_if_1_2
        # leftstack[p] = j + 1;
        load_left_stack_base r7
        add r7, p
        mov r4, j
        plus_one r4
        st r4, r7, 0

        # rightstack[p] = right;
        load_right_stack_base r7
        add r7, p
        st right, r7, 0

        # p++;
        plus_one p
      label :end_if_1_2
      # right = i - 1;
      mov r7, i
      minus_one r7
      mov right, r7
    label :end_if_1

    jmp :for
  label :end_for

  inssort
  hlt
end

puts s.to_mif
