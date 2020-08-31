class Notice < ApplicationRecord
  belongs_to :master
  has_many :notice_tags, dependent: :delete_all
  has_many :tags, through: :notice_tags
end
