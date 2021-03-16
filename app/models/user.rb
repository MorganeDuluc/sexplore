class User < ApplicationRecord
  has_many :user_quizzes, dependent: :destroy
  has_many :quizzes, through: :user_quizzes

  validates :username, :avatar, presence: true
end
