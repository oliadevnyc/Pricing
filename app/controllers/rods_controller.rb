class RodsController < ApplicationController
  def index
    @rods = Rod.all
  end

  def create
    @rods = Rod.all
    @rod = Rod.create( rod_params )
  end

  def new
    @rod = Rod.new
  end

  private
  def rod_params
    params.require(:rod).permit(:photo)
  end
end
