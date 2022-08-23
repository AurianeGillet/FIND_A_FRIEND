class AddDescritpionToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :description, :text
  end
end
