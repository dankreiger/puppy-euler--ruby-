Dir["ruby/*pup*"].each{|file| require_relative "../#{file}"}

class PupEuler

  def pup_files
    Dir["ruby/*pup*"]
  end

  def pup_method(n)
    if pup_files.include?("ruby/pup_euler#{n}.rb")
      self.send("pup_euler#{n}".to_sym)
    else
      puts "pup_euler#{n} is pending"
    end
  end

  def answers
    {
      1 => 233168,
      2 => 4613732,
      6 => 25164150,
      7 => 104743,
      13 => 5537376230
    }
  end
end
