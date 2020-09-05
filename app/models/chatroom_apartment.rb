class ChatroomApartment < ApplicationRecord
  has_many :apartment_messages
  belongs_to :apartment
end
