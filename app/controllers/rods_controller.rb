class RodsController < ApplicationController
  def index
  #  @rods = Rod.all
    @rods = Rod.all
    @rod = Rod.new
    #  @rod = Rod.find(params[:id])
#    @rod = Rod.all.each
#    @rods.update_attributes(rod_params) if params[:id].present?
    #  @property.update_attributes(property_update_params)
  end

  def show
    @rod = Rod.find(params[:id])
  end

  def new
    @rods = []
    @rods << Rod.new
#    @rod = Rod.new
  end

  def edit
    @rod = Rod.find(:all)
  end

  def update
    @rod = Rod.find(params[:rod][:id])
    @rod.update(rod_params)
#    flash[:notice] = 'Reports were successfully updated.'
#    redirect_to :action => "index"



    # @rod = Rod.new
    # @rods = Rod.all
    # @rods.each.update_attributes(rods_params)
    # redirect_to rods_path(@rods)

    #  @rod.update_attributes(rods_params)
  end
  
  def multiple_rod_info
    params[:rod].each do |param|
      Rod.find_by_id(param[:id]).update(param.permit!)
    end
    flash[:notice] = "Rod successfully updated"
    redirect_to rods_path
  end

  def create
#    rods.map {|rod| Rod.new(rod).save }

    @rod = Rod.create(rod_params)
    #@rod = Rod.new(rod_params)

    # if params.has_key?("rods")
    #   Rod.create(rod_params(params["rod"]))
    # else
    #   params["rods"].each do |rod|
    #     if rod['name'] != ""
    #       Rod.create(rod_params(rod))
    #     end
    #   end
    # end

     redirect_to rods_path(@rod)
  end
#|| rod["price_painted"].to_i != ""
  private
  def set_rod
    @rod = Rod.find(params[:id])
  end

  def rod_params
    params.require(:rod).permit(:id, :name, :avatar, 
      :price_painted, :price_plated, :model, :rod_length)
  end

end
