class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name
      t.string :sport
      t.string :photo_url
      t.text :description
      t.integer :age
      t.string :nickname
      t.string :location
      t.text :comment

      t.timestamps null: false
    end
  end
end
