class AddFields3ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :alias, :string
    add_column :users, :password, :string
    add_column :users, :private, :boolean
    add_column :users, :followers, :text , array: true , default: []
    add_column :users, :following, :text , array: true , default: []
  end
end
