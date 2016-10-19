require_relative 'output'
require 'prime'

def pup_euler7
  x = Prime.take(10001)[-1]
end

pup(pup_euler7, 7)
