require_relative 'output'

def pup_euler6
  sum_of_squares = (1..100).inject{|sum, ele| sum + ele**2}
  square_of_sum  = (1..100).inject(:+)**2

  square_of_sum - sum_of_squares
end

pup(pup_euler6, 6)
