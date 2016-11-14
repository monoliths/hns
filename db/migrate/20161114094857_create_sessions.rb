class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.references :consumer, null: false
      t.references :producer, null:false
      t.boolean :approval, default: false, null:false 
    end
  end
end
