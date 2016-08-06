require_relative "vars";s = Vars::Sentence.new

def pup_euler2
a = [1,2] 

#Puponacci Series
a << a[-2] + a[-1] while a[-2] + a[-1] < 4_000_000
# Sum of puponacci numbers 
a.delete_if(&:odd?).inject(:+)
end

s.solution(pup_euler2)


