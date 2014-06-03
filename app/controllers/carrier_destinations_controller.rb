class CarrierDestinationsController < ApplicationController
  def index
    @carrier_destinations = CarrierDestination.all
  end

  def new
    @destination = Destination.find(params[:destination_id])
    @carrier_destination = CarrierDestination.new
    @carriers = Carrier.all
  end

  def create
    @carrier_destination = CarrierDestination.new(carrier_destination_params)
    if @carrier_destination.save
      redirect_to destination_path(@carrier_destination.destination_id)
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
