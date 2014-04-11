class CreateWaterData < ActiveRecord::Migration
  def change
    create_table :water_data do |t|
      t.string :lat
      t.string :long
      t.time :time
      t.integer :serial
      t.float :vbatt
      t.integer :cycles
      t.integer :failed_cycles
      t.integer :downloads

      t.timestamps
    end
  end
end
