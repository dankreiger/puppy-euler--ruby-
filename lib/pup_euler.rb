class PupEuler
  def puppy_method(n)
    if wau(n)
      pup(n)
    else
      puts pending_pup(n)
    end
  end

  private

  def wau(n)
    Dir["ruby/*pup*"].include?("ruby/pup_euler#{n}.rb")
  end

  def pup(n)
    self.send("pup_euler#{n}".to_sym)
  end

  def pending_pup(n)
    "pup_euler#{n} is pending".yellow.underline
  end

end
