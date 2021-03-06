class Event < ApplicationRecord
  belongs_to :venue
  has_many :bookings
  has_one_attached :photo

  validates :name, :venue, :date, :time, :total_spots, presence: true
end
