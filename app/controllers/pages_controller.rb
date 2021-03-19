class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :explainer_one, :explainer_two]

  def home
  end

  def explainer_one
  end

  def explainer_two
  end

  def app
    @themes = Theme.all
    @channels = Channel.all
    # @videos = Videos.all
  end
end
