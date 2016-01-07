class FixTablesColumns < ActiveRecord::Migration
  def change
  	add_column :comments, :points, :float
  	add_column :videos, :difficulty, :integer
  	remove_column :videos, :video_id
  	remove_column :comments, :comment_id
  end
end
