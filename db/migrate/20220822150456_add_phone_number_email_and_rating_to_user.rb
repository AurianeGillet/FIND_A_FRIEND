class AddPhoneNumberEmailAndRatingToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :email_address, :string
    add_column :users, :rating, :integer
  end
end
