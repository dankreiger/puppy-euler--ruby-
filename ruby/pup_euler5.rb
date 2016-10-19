require_relative 'output'
require 'rational'

def pup_euler5
  num = (1..20).inject(1) { |result, n| result.lcm n }
end

pup(pup_euler5, 5)



# bark bark bark solution
#
# def pup_euler5
#   i = 50400
#   j = 1
#   while j <= 20
#     if i % j == 0
#       j+=1
#     else
#       j=1
#       i+=2520
#     end
#   end
#
#   i
# end
