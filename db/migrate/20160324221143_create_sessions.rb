class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :username, unique: true, null: false
      t.string :password, null: false
      t.string :token
      t.datetime :expiration

      t.timestamps null: false
    end
  end
end
