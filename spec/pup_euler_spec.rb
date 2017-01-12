require 'spec_helper'
require 'benchmark'

describe PupEuler do
  let(:sniff)  { PupEuler.new }

  # 1.upto(564) do |n|
  1.upto(13) do |n|
    context "pup_euler#{n}" do
      solutions[n] ? it {expect(sniff.puppy_method(n)).to eq(solutions[n])} : pending(" ")

      it "does not exceed 40ms runtime" do
        pup_bench = Benchmark.realtime { sniff.puppy_method(n) }
        puts "\tpup_bench: #{pup_bench}"
        expect(pup_bench).to be <= 0.04
      end
    end
  end
end
