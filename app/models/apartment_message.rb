class ApartmentMessage < ApplicationRecord
  belongs_to :master, optional: true
  belongs_to :apartment, optional: true
  belongs_to :chatroom_apartment
  has_one_attached :image
  validates :message, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end

end
