require_relative 'output'

def pup_euler13
  Vars::P13_NUM.split.map(&:to_i).inject(&:+).to_s[0...10].to_i
end

pup(pup_euler13, 13)
