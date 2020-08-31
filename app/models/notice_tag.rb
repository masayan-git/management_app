class NoticeTag < ApplicationRecord
  belongs_to :notice, foreign_key: 'notice_id'
  belongs_to :tag,foreign_key: 'tag_id'
end
