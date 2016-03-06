class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name, null: false
      t.string :alias, index: true, unique: true, null: false
      t.string :sport, null: false
      t.string :photo_url, null: false
      t.datetime :birthdate
      t.text :description
      t.string :nickname
      t.string :procedence
      t.string :residence
      t.string :stance
      t.text :quote
      t.string :facebook
      t.string :instagram
      t.string :twitter

      t.text :other_spots, array: true, default: []
      t.references :spot, index: true

      t.timestamps null: false
    end
  end
end