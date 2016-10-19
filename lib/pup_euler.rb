class PupEuler
  def puppy_method(n)
    pup(n) if wau(n)
  end

  private

  def wau(n)
    Dir["ruby/*pup*"].include?("ruby/pup_euler#{n}.rb")
  end

  def pup(n)
    self.send("pup_euler#{n}".to_sym)
  end
end
