class DropColumn < ActiveRecord::Migration
  def change
    remove_column :citizens, :sponsorship_id
  end
end
