class AddAgeAndPriceToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :age, :integer
    add_column :friends, :price, :float
  end
end
