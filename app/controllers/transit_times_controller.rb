class TransitTimesController < ApplicationController
def index
    @transit_times = TransitTime.all
  end

  def new
    @transit_times = TransitTime.new
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
    @transit_times = TransitTime.find(params[:id])
  end


private
  def transit_time_params
    params.require(:transit_time).permit(:carrier_id, :origin_id, :destination_id, :days)
  end

end

