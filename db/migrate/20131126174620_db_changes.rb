class DbChanges < ActiveRecord::Migration
  def change
    drop_table :rounds_tributes
    create_table :citizens_rounds do |t|
      t.belongs_to :citizen
      t.belongs_to :round
    end
  end
end
