require 'rspec'
require 'part3'

describe "Part 3 tests" do
  context "Anagram tests" do
    it "should be defined" do
      expect {
        combine_anagrams "a b c"
      }.not_to raise_error
    end
  end
end
