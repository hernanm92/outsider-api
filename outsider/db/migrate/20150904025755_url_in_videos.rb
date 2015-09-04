class UrlInVideos < ActiveRecord::Migration
  def change
    add_column :videos, :url, :string
  end
end
