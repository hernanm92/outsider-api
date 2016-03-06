class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :sport
      t.datetime :date

      t.string :other_spot
      t.references :spot, index: true

      t.text :other_riders, array: true, default: []
      t.references :rider, index: true

      t.timestamps null: false
    end
  end
end
