require 'spec_helper'

describe Tribute, "a male or female District representative in the Game" do

  describe "validations" do
    it { should validate_presence_of(:rating) }

    it { should have_and_belong_to_many(:rounds) }
    it { should belong_to(:game) }
    it { should have_many(:sponsorships) }
  end

end