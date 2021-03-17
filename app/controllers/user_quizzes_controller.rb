class UserQuizzesController < ApplicationController
  def show
    @user_quiz = UserQuiz.find(params[:user_id])
  end
end
