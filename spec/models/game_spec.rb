require 'spec_helper'

describe Game do  
  context "validation" do
    it { should have_many(:rounds) }
    it { should have_many(:tributes) }
  end

  describe '#reaping' do
    before do
      
    end

  end
end