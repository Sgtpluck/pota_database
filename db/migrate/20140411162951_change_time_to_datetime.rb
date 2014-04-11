class ChangeTimeToDatetime < ActiveRecord::Migration
  def change
    remove_column :water_data, :time
    add_column :water_data, :time, :datetime
  end
end
