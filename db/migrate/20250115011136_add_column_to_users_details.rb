class AddColumnToUsersDetails < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :account_id, :string, null: false
    add_column :users, :name, :string, null: false
    add_column :users, :birthday, :date

    add_index :users, :account_id, unique: true
  end
end
