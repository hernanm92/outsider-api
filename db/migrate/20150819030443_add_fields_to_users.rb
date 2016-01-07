class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :alias, :string
    add_column :users, :password, :string
    add_column :users, :private, :boolean
    add_column :users, :followers, :array
    add_column :users, :following, :array
  end
end
