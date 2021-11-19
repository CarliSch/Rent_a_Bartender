class Bartender < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  has_many :bookings
  has_many :reviews, through: :bookings

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
