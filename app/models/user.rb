class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :venues, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :first_name, :last_name, :password, :email, presence: true
  validates :email, uniqueness: true

  def user_rating
    bookings_made = bookings.where(approved: true)
    bookings_attended = bookings.where(performed: true)
    "#{bookings_attended.size}/#{bookings_made.size} gigs attended"
  end
end
