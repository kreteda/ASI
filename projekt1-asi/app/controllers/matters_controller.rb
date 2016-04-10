class MattersController < ApplicationController
  before_action :set_matter, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /matters
  # GET /matters.json
 def index
    @matters = current_user.matters.order('created_at desc').page(params[:page])
  end

  # GET /matters/1
  # GET /matters/1.json
  def show
  end

  # GET /matters/new
  def new
    @matter = current_user.matters.new
  end

  # GET /matters/1/edit
  def edit
  end

 
def create
    @matter = current_user.matters.new(matter_params)

    if @matter.save
      redirect_to @matter, notice: 'Matter was successfully created.'
    else
      render action: 'new'
    end
  end

 
def update
    if @matter.update(matter_params)
      redirect_to @matter, notice: 'Matter was successfully updated.'
    else
      render action: 'edit'
    end
  end
 
  # DELETE /matters/1
  # DELETE /matters/1.json
def destroy
    @matter.destroy
    redirect_to matters_url, notice: 'Matter was successfully destroyed.'
  end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_matter
      unless @matter = current_user.matters.where(id: params[:id]).first
        flash[:alert] = 'Matter not found.'
        redirect_to root_url
      end
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def matter_params
      params.require(:matter).permit(:title, :description)
    end
end
