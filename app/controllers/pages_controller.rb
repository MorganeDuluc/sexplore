class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def explainer_one
  end

  def explainer_two
  end
end
