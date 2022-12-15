class ChangeUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email
    rename_column :users, :name, :username
    add_index :users, :username, unique: true
    change_column_null :users, :username, false
  end
end
