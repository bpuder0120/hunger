require 'spec_helper'

describe Tribute, "a male or female District representative in the Game" do
  context "validation" do
    it "can be instantiated" do
      expect(Tribute.new).to be_an_instance_of(Tribute)
    end

    it "is invalid without" do
      t = Tribute.new
      expect(t).to have(1).errors_on(:rating)
    end

    it "is valid" do
      t = Tribute.new(rating: 9, :alive? => true)
      # we should change the rating from an integer to a float
      expect(t).to have(0).errors_on(:rating)
      expect(t).to have(0).errors_on(:alive?)
    end     
  end
end