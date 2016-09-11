class RodsController < ApplicationController
  def index
    @rods = Rod.all
  end

  def show
    @rod = Rod.find(params[:id])
  end

  def new
    @rod = Rod.new
  end

  def create
    @rod = Rod.create(rod_params)
    redirect_to rod_path(@rod)
  end

  private

  def rod_params
    params.require(:rod).permit(:name, :avatar)
  end
end
