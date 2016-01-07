class AddFields2ToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :points, :float
    add_column :videos, :views, :integer
  end
end
