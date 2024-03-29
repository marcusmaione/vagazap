class AddAvatarToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar, :string, default: "default-user-avatar.png"
    add_column :users, :phone, :string
    add_column :users, :city, :string
  end
end
