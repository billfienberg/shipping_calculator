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

  def edit
    @holiday = Holiday.find(params[:id])
  end

  def update
    @holiday = Holiday.find(params[:id])
    @holiday.update(destination_params)
    respond_to do |format|
      format.html { redirect_to :holiday }
      format.js { render :layout => false }
    end
  end

private
  def holiday_params
    params.require(:holiday).permit(:name, :date)
  end

end
