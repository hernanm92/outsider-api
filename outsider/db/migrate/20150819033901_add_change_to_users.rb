class AddChangeToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :al3ias
  end
end
