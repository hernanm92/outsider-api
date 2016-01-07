class ChangeFollowersAndFollowingFields < ActiveRecord::Migration
  def change
  	remove_column :users, :followers
  	remove_column :users, :following
  	add_column :users, :followers, :string, array: true, default: []
  	add_column :users, :following, :string, array: true, default: []
  end
end
