class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :user_type, :int, default: 1,null: false
  end
end
