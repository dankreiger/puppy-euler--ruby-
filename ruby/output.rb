require_relative "vars"

def pup(method)
  unless ENV['RACK_ENV'] == 'test'
    s = Vars::Sentence.new
    puts s.solution(method)
  end
end
