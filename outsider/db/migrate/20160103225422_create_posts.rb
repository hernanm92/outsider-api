class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :sport
      t.string :photo_url
      t.text :description

      t.timestamps null: false
    end
  end
end
