class ChangeSponsorshipsAgain < ActiveRecord::Migration
  def change
    drop_table :sponsorships
    create_table :sponsorships do |t|
      t.belongs_to :tribute
      t.belongs_to :sponsor
    end
  end
end
