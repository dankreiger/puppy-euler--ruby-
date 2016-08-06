require_relative "vars";s = Vars::Sentence.new


def pup_euler13
  Vars::P13_NUM.split.map(&:to_i).inject(&:+).to_s[0...10].to_i
end




s.solution(pup_euler13)

