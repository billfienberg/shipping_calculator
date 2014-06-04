class DestinationHolidaysController < ApplicationController
def index
    @destination_holidays = DestinationHoliday.all
  end

  def new
    @destination_holiday = DestinationHoliday.new
    @destination = Destination.find(params[:destination_id])
    @destination_holidays = DestinationHoliday.where(destination_id: @destination.id)
    @holidays = Holiday.all
  end

  def create
    @destination_holiday = DestinationHoliday.new(destination_holiday_params)
    if @destination_holiday.save
      redirect_to destination_path(@destination_holiday.destination_id)
    else
      render "new"
    end
  end

  def show
    @destination_holiday = DestinationHoliday.find(params[:id])
  end

  def edit
    @destination_holiday = DestinationHoliday.find(params[:id])
    @destination = Destination.find(params[:destination_id])
    @holidays = Holiday.all
  end

  def update
    @destination_holiday = DestinationHoliday.find(params[:id])
    if @destination_holiday.update(destination_holiday_params)
      redirect_to destination_path(@destination_holiday.destination_id)
    else
      render "edit"
    end
    respond_to do |format|
      format.html {  }
      format.js { render :layout => false }
    end
  end

  def destroy
    @destination_holiday = DestinationHoliday.find(params[:id])
    @destination_holiday.destroy
    respond_to do |format|
      format.html { redirect_to destination_path(@destination_holiday.destination.id) }
      format.js { render :layout => false }
    end
  end

private
  def destination_holiday_params
    params.require(:destination_holiday).permit(:destination_id, :holiday_id)
  end

end
