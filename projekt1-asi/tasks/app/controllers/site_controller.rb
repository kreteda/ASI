class SiteController < ApplicationController
  def index
    # retrieve all Btasks ordered by descending creation timestamp
    @tasks = Task.order('created_at desc')
  end
end