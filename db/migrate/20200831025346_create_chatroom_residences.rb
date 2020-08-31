class CreateChatroomResidences < ActiveRecord::Migration[6.0]
  def change
    create_table :chatroom_residences do |t|

      t.timestamps
    end
  end
end
