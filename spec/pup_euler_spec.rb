describe PupEuler do
  before do
    @sniff = PupEuler.new
  end
  # 1.upto(564) do |n|
  1.upto(13) do |n|
    context "pup_euler#{n}" do
      solutions[n] ? it {expect(@sniff.puppy_method(n)).to eq(solutions[n])} : pending(" ")
    end
  end
end
