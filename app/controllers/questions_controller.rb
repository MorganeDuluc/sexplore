class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @response_id = params.dig(:answer, :response_id)
    @display_answer = @response_id.present?
    @correct_answer = Response.find(@response_id).result if @response_id.present?
    @next_question = Question.find_by(quiz: @question.quiz, order: @question.order + 1)
    if @display_answer
      redirect_to explication_question_path(question: @question, correct_answer: @correct_answer, next_question: @next_question)
    else
      render :show
    end

end

  def explication
    @question = Question.find(params[:question])
    @correct_answer = params[:correct_answer]== "true"
    if !params[:next_question].nil?
      @next_question = Question.find(params[:next_question])
    end
  end

end
