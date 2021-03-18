class QuizzesController < ApplicationController
  def index
    @theme = Theme.find(params[:theme_id])
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
  end

end
