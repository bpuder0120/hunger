class ChangeSponsorships < ActiveRecord::Migration
  def change
    drop_table :sponsorships
    create_table :sponsorships do |t|
      t.belongs_to :citizen
      t.belongs_to :citizen
    end
  end
end
