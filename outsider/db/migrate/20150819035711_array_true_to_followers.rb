class ArrayTrueToFollowers < ActiveRecord::Migration
  def change
  	change_column :users , :followers , :string , array: true , default: []
  end
end
