class Reservation < ApplicationRecord
  belongs_to :reservationframe
  belongs_to :user
end
