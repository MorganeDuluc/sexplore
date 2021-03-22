class Theme < ApplicationRecord
  has_many :quizzes, dependent: :destroy
  has_many :channels, dependent: :destroy
  has_many :videos, dependent: :destroy

  validates :name, :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
