class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :sport
      t.datetime :date
      t.jsonb :spot, default: {}
      t.jsonb :riders, default: []

      t.timestamps null: false
    end
  end
end
