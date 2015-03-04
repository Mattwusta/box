class AddUserIdToYourboxes < ActiveRecord::Migration
  def change
    add_column :yourboxes, :user_id, :integer
    add_index :yourboxes, :user_id
  end
end
