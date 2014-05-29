class DestinationsController < ApplicationController
def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destinations = Destination.new(destination_params)
    if @destinations.save
      redirect_to @destinations
    else
      render "new"
    end
  end

  def show
    @destinations = Destination.find(params[:id])
  end

  def search
    
  end


private
  def destination_params
    params.require(:destination).permit(:name, :address, :city, :state, :zip)
  end

end
