class RodsController < ApplicationController
  def index
    @rods = Rod.all
  end
end
