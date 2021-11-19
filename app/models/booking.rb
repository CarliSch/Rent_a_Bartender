class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bartender
  has_many :reviews
end
