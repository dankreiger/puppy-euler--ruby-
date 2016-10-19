require_relative 'output'

def pup_euler4
  a = nil
  990.upto(999) do |i|
    910.upto(999) do |n|
      a = n * i if (n * i).to_s == (n * i).to_s.reverse
    end
  end
  a
end

pup(pup_euler4, 4)
