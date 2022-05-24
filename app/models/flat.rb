class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :city, :street, :price_per_night, :description, presence: true
  validates :description, length: { minimum: 30 }
end
