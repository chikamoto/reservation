class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :timeoutable, :trackable
  
         mount_uploader :avatar,AvatarUploader

  has_many :rooms
  has_many :reservations
end
