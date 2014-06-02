
class TransitTimesController < ApplicationController
def index
    @transit_times = TransitTime.all
  end

  def new
    @carriers = Carrier.all
    @origins = Origin.all
    @destinations = Destination.all
    @transit_time = TransitTime.new
    @destination = Destination.find(params[:destination_id])
  end

  def create
    @transit_times = TransitTime.new(transit_time_params)
    if @transit_times.save
      redirect_to @transit_times
    else
      render "new"
    end
  end

  def show
    @transit_time = TransitTime.find(params[:id])
    
  end


private
  def transit_time_params
    params.require(:transit_time).permit(:carrier_id, :origin_id, :destination_id, :number_of_days)
  end

end

