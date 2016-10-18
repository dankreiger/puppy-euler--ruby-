require_relative "../lib/pup_euler"

describe PupEuler do
  describe "#woof, woof, and waggle for ruby" do

    before do
      @problem = PupEuler.new
    end

    describe "pup_euler1" do
      it "returns 233168" do
        expect(@problem.send(:pup_euler1)).to eq(233168)
      end
    end

    describe "pup_euler2" do
      it "returns 4613732" do
        expect(@problem.send(:pup_euler2)).to eq(4613732)
      end
    end

    describe "pup_euler7" do
      it "returns 104743" do
        expect(@problem.send(:pup_euler7)).to eq(104743)
      end
    end

    describe "pup_euler13" do
      it "returns 5537376230" do
        expect(@problem.send(:pup_euler13)).to eq(5537376230)
      end
    end
  end
end



# future implementation

# 1.upto(200) do |n|
#   context "pup_euler#{n}" do
#     let(:inst)     { PupEuler.new }
#     it{expect(inst.send("pup_euler#{n}" )).to equal('answer')}
#   end
# end
