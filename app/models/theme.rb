class Theme < ApplicationRecord
  has_many :quizzes, dependent: :destroy
  has_many :channels, dependent: :destroy
  has_many :videos, dependent: :destroy

  validates :name, :description, presence: true
end
