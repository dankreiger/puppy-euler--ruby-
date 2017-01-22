require_relative 'output'
require 'prime'

def pup_euler10
  Prime.each(2000000).inject(:+)
end

puts pup(pup_euler10, 10)
