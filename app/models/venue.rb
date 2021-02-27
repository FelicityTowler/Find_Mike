class Venue < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :ratings

  validates :name, :address, :postcode, :user, presence: true
  validates :name, unique: true
end
