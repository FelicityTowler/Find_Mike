class Rating < ApplicationRecord
  belongs_to :venue
  belongs_to :user

  validates :venue, :user, :performer_experience, presence: true
end
