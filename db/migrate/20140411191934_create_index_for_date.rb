class CreateIndexForDate < ActiveRecord::Migration
  def change
    add_index :water_data, :time
  end
end
