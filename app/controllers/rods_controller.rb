class RodsController < ApplicationController

  def index
  #  @rods = Rod.all
    @rods = Rod.all
    #  @rod = Rod.find(params[:id])
#    @rod = Rod.all.each
#    @rods.update_attributes(rod_params) if params[:id].present?
    #  @property.update_attributes(property_update_params)
  end

  def show
    @rod = Rod.find(params[:id])
  end

  def new
    @rod = Rod.new
  end

  def edit
    @rod = Rod.find(:all)
  end

  def update
    @rod = Rod.find_by(params[:rod][:id])
    @rod.update_attributes(rod_params)
    flash[:notice] = 'Reports were successfully updated.'
    redirect_to :action => "index"



    # @rod = Rod.new
    # @rods = Rod.all
    # @rods.each.update_attributes(rods_params)
    # redirect_to rods_path(@rods)

    #  @rod.update_attributes(rods_params)
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
