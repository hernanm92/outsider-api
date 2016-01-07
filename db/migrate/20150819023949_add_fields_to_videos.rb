class AddFieldsToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :sport, :string
    add_column :videos, :owner, :string
    add_column :videos, :title, :string
  end
end
