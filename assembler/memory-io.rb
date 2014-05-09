$:.push File.expand_path("../../SimpleAsm/lib", __FILE__)
require 'simple_asm'
include SimpleAsm

s = Simple.new do
  li 1, 3
  ld 0, 0, 0
  add r0, r1
  out r0
  li 1, 0
  st 0, 1, 0
end

puts s.to_mif
