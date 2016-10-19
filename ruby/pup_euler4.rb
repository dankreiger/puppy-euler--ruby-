require_relative 'output'
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def pup_euler4
  a = nil
  990.upto(999) do |i|
    910.upto(999) do |n|
      a = n * i if (n * i).to_s == (n * i).to_s.reverse
    end
  end
  a
end

pup(pup_euler4)
