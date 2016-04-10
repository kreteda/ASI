class ProfilesController < ApplicationController
  def index
    @users = User.page(params[:page])
  end

  def show
    if @user = User.where(username: params[:id]).first
      @matter = @user.matters.page(params[:page])
    else
      flash[:alert] = 'Profile not found.'
      redirect_to profiles_path
    end
  end
end
