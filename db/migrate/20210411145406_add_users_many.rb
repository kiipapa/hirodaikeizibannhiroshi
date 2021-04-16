class AddUsersMany < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :expert, :string
    add_column :users, :grade, :string

  end
end
