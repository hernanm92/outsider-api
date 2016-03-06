class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :sport
      t.string :url
      t.string :post_type
      t.datetime :date
      t.text :description

      t.timestamps null: false
    end

  end
end
