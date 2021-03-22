class Question < ApplicationRecord
  belongs_to :quiz
  has_many :responses

  validates :content, :order, :explication, presence: true
end
