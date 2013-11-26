require 'spec_helper'

describe Citizen, "a member of the population of Panem" do 
  context "validation" do
    it "can be instantiated" do
      expect(Citizen.new).to be_an_instance_of(Citizen)
    end

    it "is invalid without" do
      c = Citizen.new
      expect(c).to have(1).errors_on(:first_name)
      expect(c).to have(1).errors_on(:last_name)
      expect(c).to have(1).errors_on(:age)
      expect(c).to have(1).errors_on(:sex)
      expect(c).to have(1).errors_on(:district_id)
    end

    it "is valid" do
      c = Citizen.new(first_name: "Katniss", last_name: "Everdeen", age: 16, sex: "F", district_id: 1)
      expect(c).to have(0).errors_on(:first_name)
      expect(c).to have(0).errors_on(:last_name)
      expect(c).to have(0).errors_on(:age)
      expect(c).to have(0).errors_on(:sex)
      expect(c).to have(0).errors_on(:district_id)
    end
  end
end

