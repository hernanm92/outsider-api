class AddFields3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :al3ias, :string
    add_column :users, :password, :string
    add_column :users, :private, :boolean
    add_column :users, :followers, :string
    add_column :users, :following, :string
  end
end
