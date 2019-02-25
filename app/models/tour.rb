class Tour < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, length: { minimum: 30, maximum: 400 }, allow_blank: false
  validates :price, presence: true, numericality: { only_integer: true }
  validates :date, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }

  mount_uploader :photo, PhotoUploader
end
