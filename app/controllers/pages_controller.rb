class PagesController < ApplicationController
  def index
  end

  def calculate
    @origins = Origin.all
    @destinations = Destination.all
  end

  def results
    if params[:origin] && params[:destination] && params[:pickup_date] 
      @origin = Origin.find(params[:origin])
      @destination = Destination.find(params[:destination])
      @carriers = CarrierDestination.where(destination_id: @destination.id)
      @pickup_date = Date.parse(params[:pickup_date]).strftime('%A %B %d, %Y') 
      @holidays = DestinationHoliday.where(destination_id: @destination.id)
    else 
      redirect_to pages_calculate_path
    end
  end
end
