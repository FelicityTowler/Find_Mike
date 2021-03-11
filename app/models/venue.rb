class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :photo
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :ratings

  validates :name, :address, :postcode, :user, presence: true
  validates :name, uniqueness: true
end
