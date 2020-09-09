class ResidenceMessage < ApplicationRecord
  belongs_to :master, optional: true
  belongs_to :residence, optional: true
  belongs_to :chatroom_residence
  has_one_attached :image
  has_one_attached :move
  validates :message, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached? || self.move.attached?
  end
end
