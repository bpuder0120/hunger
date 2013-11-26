require 'spec_helper'

describe Citizen, "a member of the population of Panem" do 
  context "validation" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:age) }
    it { should validate_presence_of(:sex) }
    it { should validate_presence_of(:district_id)}

    it { should belong_to(:district)}
  end
end

