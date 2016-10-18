describe PupEuler do
  before do
    @sniff = PupEuler.new
  end
  1.upto(564) do |n|
    context "pup_euler#{n}" do
      it {
        expect(@sniff
          .puppy_method(n))
          .to eq(solutions[n])
      }
    end
  end
end
