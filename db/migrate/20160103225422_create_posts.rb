class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :sport, null: false
      t.string :url, null: false
      t.string :post_type, null: false
      t.datetime :date
      t.text :description

      t.timestamps null: false
    end

  end
end
