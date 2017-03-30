require_relative 'output'

def sum_of_digits number
  number.to_s.split("").map(&:to_i).inject(:+)
end

def pup_euler56
  max_sum = 0
  (95..99).each do |a|
    (95..99).each do |b|
      max_sum = sum_of_digits(a**b) if (a**b).to_s.split("").map(&:to_i).inject(:+) > max_sum
    end
  end
  max_sum
end
pup(pup_euler56, 56)
