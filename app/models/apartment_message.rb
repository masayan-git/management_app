class ApartmentMessage < ApplicationRecord
  belongs_to :master, optional: true
  belongs_to :apartment, optional: true
  belongs_to :chatroom_apartment
  has_one_attached :image
  has_one_attached :move

  # mount_uploader :move, VideoUploader
  validates :message, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached? || self.move.attached?
  end

end
