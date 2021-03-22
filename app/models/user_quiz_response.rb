class UserQuizResponse < ApplicationRecord
  belongs_to :response
  belongs_to :user_quiz
end
