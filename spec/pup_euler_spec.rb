Dir["ruby/*pup*"].each{|file| require_relative "../#{file}"}


describe PupEuler do

  ENV['RACK_ENV'] = 'test'
  require "solutions"

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
