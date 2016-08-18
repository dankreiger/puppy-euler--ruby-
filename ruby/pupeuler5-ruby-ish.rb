#not a very intelligent solution - but I'm still just a puppy

# until then

# runs very slowly

# def peuler5
#
# i = 3
# x = 2520
#
# while i <= 20
#   if x % i == 0
#     i+=1
#   else
#   	i = 2
#     x+=2
#     end
# end
#
# "#{x}"
# end
#
#
# puts peuler5
#
#
# def compute_lowest_dividing_number number
#   for i in 2..(number/2)
#     return i if number%i == 0
#   end
#   number
# end
#
# lcm = 1
# n = 20
# for i in 1..n
#   # look ahead appraoch
#   next_number = [i+1, n].min
#   lcm *= compute_lowest_dividing_number(next_number) if lcm % next_number != 0
# end
# puts lcm
