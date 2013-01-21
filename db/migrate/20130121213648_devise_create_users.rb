class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :nickname,              :null => false
      t.string :github_uid,            :null => false
      t.string :email,                 :null => false
      t.datetime :remember_created_at

      t.timestamps
    end

    add_index :users, :nickname,   :unique => true
    add_index :users, :github_uid, :unique => true
    add_index :users, :email,      :unique => true
  end
end
