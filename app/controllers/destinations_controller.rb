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
    @destination = Destination.find(params[:id])
    @holidays = DestinationHoliday.where(destination_id: @destination.id)
    @carrier_destinations = CarrierDestination.where(destination_id:@destination.id)
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    
    @destination.update(destination_params)
    respond_to do |format|
      format.html { redirect_to :destination }
      format.js { render :layout => false }
    end
  end

  def search
    
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    respond_to do |format|
      format.html { redirect_to destinations_path }
      format.js { render :layout => false }
    end
  end


private
  def destination_params
    params.require(:destination).permit(:name, :address, :city, :state, :zip)
  end

end
