require 'spec_helper'

describe District, "one of thirteen in the state of Panem" do
  context "validation" do

    it "can be instantiated" do
      expect(District.new).to be_an_instance_of(District)
    end

    it "is invalid without" do
      d = District.new
      expect(d).to have(1).errors_on(:number)
    end

    it "is valid" do
      d = District.new(number: 1)
      expect(d).to have(0).errors_on(:number)
    end
  end

  context "it has exactly thirteen states" do
    d = District.new(number: 15)
    
    it "should be one of 13 states" do
      expect(d).to have(1).errors_on(:number)
    end


  end
end