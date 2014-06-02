class HolidaysController < ApplicationController
def index
    @holidays = Holiday.all
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)
    if @holiday.save
      redirect_to @holiday
    else
      render "new"
    end
  end

  def show
    @holiday = Holiday.find(params[:id])
  end


private
  def holiday_params
    params.require(:holiday).permit(:name, :date)
  end

end
