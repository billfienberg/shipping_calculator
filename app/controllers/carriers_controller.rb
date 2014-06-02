class CarriersController < ApplicationController
  def index
    @carriers = Carrier.all
  end

  def new
    @carrier = Carrier.new
  end

  def create
    @carriers = Carrier.new(carrier_params)
    if @carriers.save
      redirect_to @carriers
    else
      render "new"
    end
  end

  def show
    @carrier = Carrier.find(params[:id])
  end


private
  def carrier_params
    params.require(:carrier).permit(:name)
  end

end
