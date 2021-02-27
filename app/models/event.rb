class Event < ApplicationRecord
  belongs_to :venue
  has_many :bookings

  validates :name, :venue, :date, :time, :total_spots, presence: true
end
