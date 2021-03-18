class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @responses = @question.responses
  end
end
