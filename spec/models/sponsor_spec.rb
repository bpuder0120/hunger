require 'spec_helper'

describe Sponsor do
  context "validations" do
    it { should have_many(:sponsorships) }
  end
end