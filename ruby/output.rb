def pup(method)
  unless ENV['RACK_ENV'] == 'test'
    require_relative "vars";s = Vars::Sentence.new
    puts s.solution(method)
  end
end
