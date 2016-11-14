class AddDefaultCoordsToLocations < ActiveRecord::Migration[5.0]
    def change
        change_column :locations, :altitude, :float, nil: false, default: 0.0
        change_column :locations, :latitude, :float, nil: false, default: 0.0
        change_column :locations, :longitude, :float, nil: false, default: 0.0
    end
end
