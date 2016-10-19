require_relative 'output'

# 1000 - 13 = 987


def pup_euler8
  a=[];0.upto(987) {|n| a << Vars::P8_NUM[n...n+13].split("").map(&:to_i).inject(:*)};a.max
end

pup(pup_euler8, 8)
