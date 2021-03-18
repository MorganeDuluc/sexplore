class User < ApplicationRecord
  def email_required?
    false
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_quizzes, dependent: :destroy
  has_many :quizzes, through: :user_quizzes
end
