class Tour < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :title, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, length: { minimum: 200, maximum: 2000 }, allow_blank: false
  validates :price, presence: true, numericality: { only_integer: true }
  validates :date, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }


  mount_uploader :photo, PhotoUploader
end


