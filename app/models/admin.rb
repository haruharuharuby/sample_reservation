class Admin < ApplicationRecord
  validates :loginid, presence: true
  validates :name, presence: true
  has_secure_password
  validates :password, presence: true, length: {minimum:5, maximum:8}
end
