class Reservationframe < ApplicationRecord
  has_many :reservation
  belongs_to :staff
  belongs_to :course
  belongs_to :facility
end
