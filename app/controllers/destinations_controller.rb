class DestinationsController < ApplicationController
def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to @destination
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
