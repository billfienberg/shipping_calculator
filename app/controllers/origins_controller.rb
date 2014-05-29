class OriginsController < ApplicationController
  def index
    @origins = Origin.all
  end

  def new
    @origins = Origin.new
  end

  def create
    @origins = Origin.new(origin_params)
    if @origins.save
      redirect_to @origins
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
