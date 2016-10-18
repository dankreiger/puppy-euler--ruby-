require_relative "../lib/pup_euler"

describe PupEuler do
  before do
    @problem = PupEuler.new
  end

  1.upto(564) do |n|
    context "pup_euler#{n}" do
      it{expect(@problem.pup_method(n)).to eq(@problem.answers[n]) unless @problem.answers[n].nil?}
      # it "" do
      #   if @problem.answers[n].nil?
      #     pending("not ready")
      #     fail
      #   else
      #     expect(@problem.pup_method(n)).to eq(@problem.answers[n])
      #   end
      #
      # end

    end
  end
end
