describe PupEuler do
  before do
    @sniff = PupEuler.new
  end
  # 1.upto(564) do |n|
  1.upto(13) do |n|
    context "pup_euler#{n}" do
      solutions[n] ? it {expect(@sniff.puppy_method(n)).to eq(solutions[n])} : pending(" ")

      it "does not exceed 50ms runtime" do
        start_time = Time.now
        @sniff.puppy_method(n)
        pup_bench = Time.now - start_time
        puts "\tpup_bench: #{pup_bench}"
        expect(pup_bench).to be <= 0.05

      end
    end
  end
end
