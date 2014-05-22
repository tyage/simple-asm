$:.push File.expand_path("../../SimpleAsm/lib", __FILE__)
require 'simple_asm'
include SimpleAsm

s = Simple.new do
  li r1, 10
  addi r1, 4
  out r1
end

puts s.to_mif
