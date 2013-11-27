class ChnageCitie < ActiveRecord::Migration
  def change
    rename_column :citizens, :alive?, :alive
  end
end
