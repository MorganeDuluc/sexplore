class Video < ApplicationRecord
  belongs_to :theme

  validates :title, presence:true
end
