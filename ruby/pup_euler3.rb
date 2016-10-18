require_relative 'output'

# What is the largest prime factor of the number 60085147514


def prime?(number)
  (2..number-1).each do |n|
    if number%n == 0
      return false
    end
  end
  return true
end



def get_first_prime_factor(number)
  (2..number-1).each do |n|
      return n if number%n == 0 && prime?(n)
  end
end


def pup_euler3
  number = 600851475143
  prime_factors = []
  n = number
  until prime?(n)
    prime_factor = get_first_prime_factor(n)
    prime_factors << prime_factor
    n = n / prime_factor
  end
  prime_factors << n
  (prime_factors.sort).at(prime_factors.length-1)
end

puts pup(pup_euler3)
