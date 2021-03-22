class Channel < ApplicationRecord
  belongs_to :theme
  belongs_to :user

  validates :title, presence:true

  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
end
