class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :rating
      t.string :email_address

      t.timestamps
    end
  end
end
