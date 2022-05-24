class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat


  validates :status, inclusion: { in: w%[pending, accepted, denied] }
end
