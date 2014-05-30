class OriginsController < ApplicationController
  def index
    @origins = Origin.all
  end

  def new
    @origin = Origin.new
  end

  def create
    @origin = Origin.new(origin_params)
    if @origin.save
      redirect_to @origin
    else
      render "new"
    end
  end

  def show
    @origins = Origin.find(params[:id])
  end


private
  def origin_params
    params.require(:origin).permit(:name, :address, :city, :state, :zip)
  end

end
