class User < ApplicationRecord
  has_many :user_quizzes
  has_many :quizzes, thought: :user_quizzes

  validates :username, :avatar, presence: true
end
