class Response < ApplicationRecord
  belongs_to :question

  validates :content, presence: true
  validates :result, default: false
end
