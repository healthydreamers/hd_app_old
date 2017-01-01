class DashboardController < ApplicationController

  def index
    @categories = Category.includes(:posts)
  end

end