class ResidenceMessage < ApplicationRecord
  belongs_to :master, optional: true
  belongs_to :residence, optional: true
  belongs_to :chatroom_residence
  has_one_attached :image
end
