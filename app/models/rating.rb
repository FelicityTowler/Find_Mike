class Rating < ApplicationRecord
  belongs_to :venue
  belongs_to :user
  validates :venue, :user, :performer_experience, presence: true
  validates :performer_experience, inclusion: { in: 0..5 }
end
