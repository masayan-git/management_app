class RemoveContentFromNotices < ActiveRecord::Migration[6.0]
  def change
    remove_column :notices, :content, :text
  end
end
