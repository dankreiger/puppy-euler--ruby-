require_relative 'output'

# Bark 6
#
# The sum of the squares of the first ten natural numbers is,
#
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def pup_euler6
  sum_of_squares = (1..100).inject{|sum, ele| sum + ele**2}
  square_of_sum  = (1..100).inject(:+)**2

  square_of_sum - sum_of_squares
end

pup(pup_euler6)
