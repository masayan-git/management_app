class CreateChatroomResidences < ActiveRecord::Migration[6.0]
  def change
    create_table :chatroom_residences do |t|
      t.string :name,null: false
      t.references :master, null: false, foreign_key: true
      t.references :residence, null: false, foreign_key: true
      t.timestamps
    end
  end
end
