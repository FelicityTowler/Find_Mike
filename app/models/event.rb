class Event < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
  belongs_to :venue
  has_many :bookings
  has_one_attached :photo

  validates :name, :venue, :date, :time, :total_spots, presence: true
end
