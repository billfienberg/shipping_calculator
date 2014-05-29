class HolidaysController < ApplicationController
def index
    @holidays = Holiday.all
  end

  def new
    @holidays = Holiday.new
  end

  def create
    @holidays = Holiday.new(holiday_params)
    if @holidays.save
      redirect_to @holidays
    else
      render "new"
    end
  end

  def show
    @holidays = Holiday.find(params[:id])
  end


private
  def holiday_params
    params.require(:holiday).permit(:name, :date)
  end

end
