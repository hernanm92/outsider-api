class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :name, null: false
      t.string :alias, index: true, unique: true, null: false
      t.string :address, null: false
      t.decimal :latitude
      t.decimal :longuitude
      t.string :url, null: false
      t.text :description
      t.text :sports, array: true, default: []

      t.timestamps null: false
    end
  end
end
