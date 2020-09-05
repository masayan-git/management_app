class ResidenceMessage < ApplicationRecord
  belongs_to :master
  belongs_to :residence
  belongs_to :chatroom_residence
end
