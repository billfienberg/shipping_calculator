class LocationsController < ApplicationController
def index
    @locations = Location.all
  end

  def new
    @locations = Location.new
  end

  def create
    @locations = Location.new(location_params)
    if @locations.save
      redirect_to @locations
    else
      render "new"
    end
  end

  def show
    @locations = Location.find(params[:id])
  end


private
  def location_params
    params.require(:location).permit(:name, :address, :city, :state, :zip)
  end

end
