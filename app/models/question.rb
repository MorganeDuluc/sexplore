class Question < ApplicationRecord
  belongs_to :quiz
  has_many :responses

  validates :content, :order, presence: true
end
