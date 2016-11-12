class RodsController < ApplicationController

  def index
    @rods = Rod.all
    #  @rod = Rod.find(params[:id])
    @rod = Rod.new(params[:rod])
    @rod.update(params[:rod]) if params[:rod].present?
  end

  def show
    @rod = Rod.find(params[:id])
  end

  def new
    @rod = Rod.new
  end

  def edit
    @rod = Rod.find(params[:id])
  end

  def create
    @rod = Rod.create(rod_params)
    redirect_to rod_path(@rod)
  end

  private

  def rod_params
    params.require(:rod).permit(:name, :avatar, :price_painted, :price_plated, :model, :rod_length)
  end

end
