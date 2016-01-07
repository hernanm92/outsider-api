class AddIndexes < ActiveRecord::Migration
  def change
  	add_index :comments, :video
  	add_index :users, :alias
  	add_index :videos, :sport
  	add_index :videos, :owner
  end
end
