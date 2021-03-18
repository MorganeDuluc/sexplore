class ThemesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @themes = Theme.where(sql_query, query: "%#{params[:query]}%")
    else
      @themes = Theme.all
    end
  end

  def show
    @theme = Theme.find(params[:id])
  end
end
