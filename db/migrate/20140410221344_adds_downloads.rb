class AddsDownloads < ActiveRecord::Migration
  def change
    add_column :water_data, :downloads, :integer
  end
end
