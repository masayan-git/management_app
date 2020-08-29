class ChangeDataPhoneNumberToResidences < ActiveRecord::Migration[6.0]
  def change
    change_column :residences, :phone_number, :string
  end
end
