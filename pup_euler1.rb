require_relative "vars";s = Vars::Sentence.new

def pup_euler1
  (1...1000).to_a.delete_if{ |x| x % 5 !=0 && x % 3 != 0 }.inject(:+)   
end

s.solution(pup_euler1)
