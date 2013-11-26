require 'spec_helper'

describe District, "one of thirteen in the state of Panem" do
    describe "validations" do
      it { should validate_presence_of(:number) }

      it { should have_many(:citizens) }
    end
end