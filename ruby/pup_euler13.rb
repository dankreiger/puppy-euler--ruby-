require_relative "vars"

def pup_euler13
  Vars::P13_NUM.split.map(&:to_i).inject(&:+).to_s[0...10].to_i
end

unless ENV['RACK_ENV'] == 'test'
  s=Vars::Sentence.new;require 'prime'
  puts s.solution(pup_euler13)
end
