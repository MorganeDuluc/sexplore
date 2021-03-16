class Theme < ApplicationRecord
  has_many :quizzes

  validates :name, :category, :description, presence: true
end
