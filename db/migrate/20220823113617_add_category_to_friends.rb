class AddCategoryToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :category, :string
  end
end
