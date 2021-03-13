class Venue < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_one_attached :photo
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :ratings, dependent: :destroy

  validates :name, :address, :postcode, :user, presence: true
  validates :name, uniqueness: true

  def average_rating
    return "No rating" if ratings.size == 0

    sum = 0
    ratings.each do |rating|
      sum += rating.performer_experience
    end
    (sum.to_f/ratings.size).round
  end
end
