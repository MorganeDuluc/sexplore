class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :explainer_one, :explainer_two]

  def home
  end

  def explainer_one
  end

  def explainer_two
  end

  def app
    if params[:query].present?
      @themes = Theme.search_by_name_and_description(params[:query])
      @channels = Channel.search_by_title(params[:query])
      @videos = Video.search_by_title(params[:query])
    else
      @themes = Theme.all
      @channels = Channel.all
      @videos = Video.all
      @tagline = "Découvre les dernière tendances"
    end
  end
end
