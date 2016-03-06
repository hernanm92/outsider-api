class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :url, null: false
      t.string :sport, null: false
      t.datetime :date
      t.jsonb :spot, default: {}
      t.jsonb :riders, default: []

      t.timestamps null: false
    end
  end
end
