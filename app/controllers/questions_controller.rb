class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @response_id = params.dig(:answer, :response_id)
    @display_answer = @response_id.present?
    @correct_answer = Response.find(@response_id).result if @response_id.present?
    @next_question = Question.find_by(quiz: @question.quiz, order: @question.order + 1)
    raise

  end

  def explication
    @question = Question.find(params[:id])
    @response_id = params.dig(:answer, :response_id)
    @display_answer = @response_id.present?
    @correct_answer = Response.find(@response_id).result if @response_id.present?
    @next_question = Question.find_by(quiz: @question.quiz, order: @question.order + 1)

  end
end
