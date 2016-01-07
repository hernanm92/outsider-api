class AddFieldsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_id, :integer
    add_column :comments, :video, :integer
    add_column :comments, :owner, :string
    add_column :comments, :description, :text
  end
end
