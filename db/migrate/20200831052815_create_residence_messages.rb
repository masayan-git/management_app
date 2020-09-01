class CreateResidenceMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :residence_messages do |t|
      t.references :residence, foreign_key: true, optional: true
      t.references :master, foreign_key: true, optional: true
      t.references :chatroom_residence, foreign_key: true, null:false
      t.text :message
      t.string :image
      t.string :move
      t.timestamps
    end
  end
end
