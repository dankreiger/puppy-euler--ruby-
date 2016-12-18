require "benchmark"
require "colorize"
require_relative "vars"
require_relative "../lib/questions"

def pup(method, num)
  unless ENV['RACK_ENV'] == 'test'
    s = Vars::Sentence.new
    puts "\n#{s.question(num).cyan}"
    puts s.solution(method)
    puts "\n\t\t\u{1f436}\s\spup stats\n\n"
    #pupmark the puppies
    Benchmark.bm do |bm|
      bm.report {method}
    end
  end


end
