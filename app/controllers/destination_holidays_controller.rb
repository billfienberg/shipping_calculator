class DestinationHolidaysController < ApplicationController
def index
    @destination_holidays = DestinationHoliday.all
  end

  def new
    @destination_holiday = DestinationHoliday.new
  end

  def create
    @destination_holidays = DestinationHoliday.new(destination_holiday_params)
    if @destination_holidays.save
      redirect_to @destination_holidays
    else
      render "new"
    end
  end

  def show
    @destination_holiday = DestinationHoliday.find(params[:id])
  end

  def edit
    @destination_holiday = DestinationHoliday.find(params[:destination_id])
  end

  def update
  end

private
  def destination_holiday_params
    params.require(:destination_holiday).permit(:destination_id, :holiday_id)
  end

end
