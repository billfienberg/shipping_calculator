class TransitTimesController < ApplicationController
def index
    @transit_times = TransitTime.all
  end

  def new
    @carriers = Carrier.all
    @origins = Origin.all
    @destinations = Destination.all
    @transit_time = TransitTime.new
  end

  def create
    @transit_time = TransitTime.new(transit_time_params)
    if @transit_time.save
      redirect_to transit_times_path
    else
      render "new"
    end
  end

  def show
    @transit_time = TransitTime.find(params[:id])
  end

  def edit
    @transit_time = TransitTime.find(params[:id])
  end

  def update
    @transit_time = TransitTime.find(params[:id])
    @transit_time.update(transit_time_params)
    respond_to do |format|
      format.html { redirect_to :transit_time }
      format.js { render :layout => false }
    end
  end


private
  def transit_time_params
    params.require(:transit_time).permit(:carrier_id, :origin_id, :destination_id, :number_of_days)
  end

end

