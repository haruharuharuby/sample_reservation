class Reservationframe < ApplicationRecord
  has_many :reservation
  has_one :staff
  has_one :course
  has_one :facility
end
