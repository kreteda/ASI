class SiteController < ApplicationController
  def index
    # retrieve all Matters ordered by descending creation timestamp
    @matters = Matter.order('created_at desc').page(params[:page]) if current_user
  end
end

