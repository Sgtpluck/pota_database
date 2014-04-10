class CreateWaterData < ActiveRecord::Migration
  def change
    create_table :water_data do |t|
      t.string :lat
      t.string :long
      t.date :date
      t.time :time
      t.integer :serial
      t.integer :vbatt
      t.integer :cycles
      t.integer :failed_cycles

      t.timestamps
    end
  end
end
