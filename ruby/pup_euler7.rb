require 'prime'

def pup_euler7
  x = Prime.take(10001)[-1]
end

unless ENV['RACK_ENV'] == 'test'
  require_relative "vars";s=Vars::Sentence.new
  puts s.solution(pup_euler7)
end
