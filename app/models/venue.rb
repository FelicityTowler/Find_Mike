class Venue < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :ratings
end
