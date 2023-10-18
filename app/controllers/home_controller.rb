class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.where(author: current_user)
  end
end
