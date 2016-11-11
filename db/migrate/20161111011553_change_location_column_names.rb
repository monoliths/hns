class ChangeLocationColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :locations, :x, :latitude
    rename_column :locations, :y, :longitude
    rename_column :locations, :z, :altitude
  end
end
