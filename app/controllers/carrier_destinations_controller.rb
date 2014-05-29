class CarrierDestinationsController < ApplicationController
  def index
    @carrier_destinations = CarrierDestination.all
  end

  def new
    @carrier_destinations = CarrierDestination.new
  end

  def create
    @carrier_destinations = CarrierDestination.new(carrier_destination_params)
    if @carrier_destinations.save
      redirect_to @carrier_destinations
    else
      render "new"
    end
  end

  def show
    @carrier_destinations = CarrierDestination.find(params[:id])
  end


private
  def carrier_destination_params
    params.require(:carrier_destination).permit(:carrier_id, :destination_id)
  end

end
