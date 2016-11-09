class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.float :x, null: false
      t.float :y, null: false
      t.float :z, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
