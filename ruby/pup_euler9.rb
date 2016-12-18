require_relative 'output'


def pup_euler9
1.upto(300) { |a| (a+1).upto(1000) { |b|
   c = 1000 - a - b
   if (a*a + b*b == c*c)
      return a*b*c
      break
   end
 }
}
end



pup(pup_euler9, 9)
