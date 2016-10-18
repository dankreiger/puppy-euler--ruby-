require "pup_euler"
require "solutions"

describe PupEuler do
  before do
    @problem = PupEuler.new
  end
  1.upto(564) do |n|
    context "pup_euler#{n}" do
      it {
        expect(@problem
          .puppy_method(n))
          .to eq(solutions[n])
      }
    end
  end
end
