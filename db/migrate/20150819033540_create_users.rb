class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, index: true, unique: true, null: false
      t.string :password

      t.timestamps null: false
    end
  end
end
