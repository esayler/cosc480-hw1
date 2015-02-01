require 'rspec'
require 'part1'

describe "Part 1 tests" do
  context "Palindrome tests" do
    it "should be defined" do
      expect {
        palindrome? ""
      }.not_to raise_error
    end
  end

  context "Count words tests" do
    it "should be defined" do
      expect {
        count_words "a b c"
      }.not_to raise_error
    end
  end

  context "Date string parsing tests" do
    it "should be defined" do
      expect {
        date_string_to_day_seconds "Ain't no time like Mon, 15 Jun 2009 20:45:30 GMT"
      }.not_to raise_error
    end
  end
end
