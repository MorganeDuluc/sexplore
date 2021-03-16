class Response < ApplicationRecord
  belongs_to :question

  validates :content, :explication, presence: true
  validates :result, default: false
end
