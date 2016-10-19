require_relative 'output'

def pup_euler1
  (1...1000).to_a.delete_if{ |x| x % 5 !=0 && x % 3 != 0 }.inject(:+)
end

pup(pup_euler1, 1)
