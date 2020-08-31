class CreateChatroomApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :chatroom_apartments do |t|
      t.string :name ,null: false
      t.timestamps
    end
  end
end
