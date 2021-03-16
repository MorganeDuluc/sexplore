class UserQuiz < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  validates :step, presence: true
end
