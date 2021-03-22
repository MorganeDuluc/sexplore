class ThemesController < ApplicationController
  def index
  end

  def show
    @theme = Theme.find(params[:id])
    @quizzes = @theme.quizzes
  end
end
