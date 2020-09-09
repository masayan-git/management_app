class ChatroomResidence < ApplicationRecord
  has_many :residence_messages
  belongs_to :residence
  belongs_to :master
end
