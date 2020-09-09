class Master < ApplicationRecord
  has_many :notices
  has_many :chatroom_residences
  has_many :chatroom_apartments
  has_many :articles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :validatable
end
