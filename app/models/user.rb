class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :tours, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_tours, through: :bookings, source: :tour
  # We create a has many through relationship, linking the booked tours for a user, through the bookings table.


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # mount_uploader :photo, PhotoUploader

end
