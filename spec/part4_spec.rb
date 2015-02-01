require 'rspec'
require 'part4'

describe "Part 4 tests" do
  context "Dessert class tests" do
    it "should be defined" do
      expect {
        Dessert.new "cake", 500
      }.not_to raise_error
    end
  end

  context "JellyBean class tests" do
    it "should be defined" do
      expect {
        JellyBean.new "licorice"
      }.not_to raise_error
    end
  end

  context "Car class tests" do
    it "should be defined" do
      expect {
        Car.new "Studebaker"
      }.not_to raise_error
    end
  end
end
