class ChangeDataPhoneNumberToApartments < ActiveRecord::Migration[6.0]
  def change
    change_column :apartments, :phone_number, :string
  end
end
