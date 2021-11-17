class Bartender < ApplicationRecord
  belongs_to :user

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
