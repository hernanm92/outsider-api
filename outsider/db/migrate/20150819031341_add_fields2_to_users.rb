class AddFields2ToUsers < ActiveRecord::Migration
  def change
    #change_column :users, :followers,  :string
    #remove_column :users, :followers
    drop_table :users
  end
end
