class CreateNoticeTags < ActiveRecord::Migration[6.0]
  def change
    create_table :notice_tags do |t|
      t.references  :notice, null: false, foreign_key: true
      t.references  :tag, null: false, foreign_key: true
      t.timestamps
    end
  end
end
