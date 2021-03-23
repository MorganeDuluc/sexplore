class QuizzesController < ApplicationController
  def index
    @theme = Theme.find(params[:theme_id])
    @quizzes = @theme.quizzes.order(finished: :desc, id: :asc)
    if params[:status]
      @quiz = Quiz.find(params[:quiz].to_i + 1)
      @quiz.finished = true
      @quiz.save
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
    @questions = @quiz.questions
  end

  def quiz_end
    @quiz = Quiz.find(params[:id])
  end
end
