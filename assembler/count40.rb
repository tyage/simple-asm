$:.push File.expand_path("../../SimpleAsm/lib", __FILE__)
require 'simple_asm'
include SimpleAsm

s = Simple.new do
  i = r1
  one = r2
  li i, 0
  li one, 1

  label :for_i
  add i, one
  out i 
  li r0, 64
  cmp i, r0
  jlt :for_i
end

puts s.to_mif
