require 'spec_helper'

describe Round, "one of six rounds in the Game" do
  context "validation" do
    let(:round) { Round.new }
    
    it "can be instantiated" do
      expect(Round.new).to be_an_instance_of(Round)
    end
  end
end