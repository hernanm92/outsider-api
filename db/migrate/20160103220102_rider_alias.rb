class RiderAlias < ActiveRecord::Migration
  def change
    add_column :riders, :alias, :string
  end
end
