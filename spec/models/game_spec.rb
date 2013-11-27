require 'spec_helper'

describe Game do  
  let(:game) {Game.new}
  context "validation" do
    it { should have_many(:rounds) }
    it { should have_many(:citizens) }
  end

  describe '#reaping' do
    let(:districts) { [] }
    let(:citizens) { [] }

    before do
      12.times do |n|
        districts << District.create(number: n+1)
      end

      districts.each do |district|
        120.times { citizens << FactoryGirl.create(:citizen, district: district) }
      end

      # testing for 2 tributes per district per game
      count = 0
      correct = true

      while (count < game.citizens.length - 1) do
        if (game.citizens[count].district_id != game.citizens[count + 1].district_id)
          correct = false
        end
        count += 2
      end
    end

    it "finds eligible candidates" do
      game.reaping
      expect(game.citizens.length).to eq(24)
      females = game.citizens.select { |citizen| citizen.sex == "F" }
      expect(females.length).to eq(12)
      males = game.citizens.select { |citizen| citizen.sex == "M" }
      expect(males.length).to eq(12)
      age = game.citizens.select { |citizen| citizen.age > 11 || citizen.age < 19}
      expect(age.length).to eq(24)
      expect(correct).to eq(true)

      # expect(game.citizens.where(district_id).length.)to eq(2)
    end
  end
end
