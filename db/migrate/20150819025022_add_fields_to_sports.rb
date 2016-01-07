class AddFieldsToSports < ActiveRecord::Migration
  def change
    add_column :sports, :name, :string
    add_column :sports, :description, :text
  end
end
