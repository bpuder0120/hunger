require 'spec_helper'

describe Sponsorship do
  context "validations" do
    it { should belong_to(:tribute) }
    it { should belong_to(:sponsor) }
  end
end