require 'spec_helper'

describe Round, "one of six rounds in the Game" do
  let(:round) { Round.new }
  let(:districts) { [] }
  let(:citizens) { [] }
  let(:game) { Game.new }

  context "validation" do
    it { should belong_to(:game) }
    it { should have_and_belong_to_many(:citizens)}
  end

  before do
    
    12.times do |n|
      districts << District.create(number: n+1)
    end

    districts.each do |district|
      70.times { citizens << FactoryGirl.create(:citizen, district: district) }
    end

    game.reaping

  end

  describe "round one" do
    it "begins" do
      round1 = Round.find_by(number: 1)
      expect(round1.citizens.length).to eq(24)
    end
  end

  describe '#arena' do
    context "round 1 or 2" do

    end
  end


end