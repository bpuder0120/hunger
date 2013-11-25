class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.belongs_to :tribute
      t.belongs_to :sponsor
    end
  end
end
