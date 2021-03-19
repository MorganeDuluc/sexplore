class Channel < ApplicationRecord
  belongs_to :theme
  belongs_to :user

  validates :title, presence:true
end
