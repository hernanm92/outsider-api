class PostsType < ActiveRecord::Migration
  def change
    remove_column :posts, :photo_url
    add_column :posts, :url, :string
    add_column :posts, :type, :string
  end
end
