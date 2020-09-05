class ApartmentMessage < ApplicationRecord
  belongs_to :master, optional: true
  belongs_to :apartment, optional: true
  belongs_to :chatroom_apartment
end
