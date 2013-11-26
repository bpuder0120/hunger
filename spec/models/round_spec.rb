require 'spec_helper'

describe Round, "one of six rounds in the Game" do
  context "validation" do
    it { should belong_to(:game) }
    it { should have_and_belong_to_many(:tributes)}
  end
end