class AddUsersToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :user_1, :integer
    add_column :chatrooms, :user_2, :integer
  end
end
