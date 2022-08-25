class Friend < ApplicationRecord
  has_one_attached :photo
  CATEGORIES = ["Party Animal Friend", "Shy Friend", "Wingman Friend", "Fight Friend", "Drunk Friend", "Old Soul Friend", "Stoner Friend", "Cooker Friend", "Awkward Friend", "Foody Friend", "Drama Friend", "Boat Friend"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :photo, presence: true
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_category,
  against: [ :first_name, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
