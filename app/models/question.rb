class Question < ApplicationRecord
  belongs_to :quizz
  has_many :responses

  validates :content, :order, presence: true
end
