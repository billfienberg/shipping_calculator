class DaysController < ApplicationController
def index
    @days = Day.all
  end

  def new
    @day = Day.new
    @destination = Destination.find(params[:destination_id])
    @carriers = Carrier.all
    @carrier = Carrier.find(params[:carrier_id])
  end

  def create
    @day = Day.new(day_params)
    if @day.save
      redirect_to destination_path(@day.destination_id)
    else
      render "new"
    end
  end

  def show
    @day = Day.find(params[:id])
    @destination = Destination.find(params[:destination_id])
    @carrier = Carrier.find(params[:carrier_id])

  end


private
  def day_params
    params.require(:day).permit(:destination_id, :carrier_id, :sn, :m, :t, :w, :r, :f, :sa)
  end

end
