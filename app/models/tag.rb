class Tag < ApplicationRecord
  has_many :notice_tags, dependent: :delete_all
  has_many :notices, through: :notice_tags
  validates :name, uniqueness: true
end
