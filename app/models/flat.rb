class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :city, :street, :price_per_night, presence: true
end
