class User < ApplicationRecord
  def email_required?
    false
  end

  validates :pseudo, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:pseudo]

  has_many :user_quizzes, dependent: :destroy
  has_many :quizzes, through: :user_quizzes
end
