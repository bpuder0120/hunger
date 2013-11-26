require 'spec_helper'

describe Tribute do
  context "validation" do
    it "can be instantiated" do
      expect(Tribute.new).to be_an_instance_of(Tribute)
    end
  end
end