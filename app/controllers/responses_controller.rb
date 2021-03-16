class ResponsesController < ApplicationController
  def show
    @response = Response.find(params[:question_id])
  end
end
