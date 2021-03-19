class Quiz < ApplicationRecord
  belongs_to :theme
  has_many :questions
  has_many :user_quizzes

  validates :title, presence: true
  validates :finished, default: false
end
