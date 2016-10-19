require "colorize"
require_relative "vars"
require_relative "../lib/questions"

def pup(method, num)
  unless ENV['RACK_ENV'] == 'test'
    s = Vars::Sentence.new
    puts "\n#{s.question(num).cyan}"
    puts s.solution(method)
  end
end
