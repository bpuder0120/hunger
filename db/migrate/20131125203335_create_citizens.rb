class CreateCitizens < ActiveRecord::Migration
  def change
    create_table :citizens do |t|
      t.string :type
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, null: false
      t.string :sex, null: false
      t.boolean :alive?, default: true
      t.integer :rating
      t.belongs_to :sponsorship
      t.belongs_to :district
    end
  end
end
