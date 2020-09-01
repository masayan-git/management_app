class CreateApartmentMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :apartment_messages do |t|
      t.references :apartment, foreign_key: true, optional: true
      t.references :master, foreign_key: true, optional: true
      t.references :chatroom_apartment, foreign_key: true, null:false
      t.text :message
      t.string :image
      t.string :move
      t.timestamps
    end
  end
end
