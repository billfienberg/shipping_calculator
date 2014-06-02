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

  def edit
    @carrier = Carrier.find(params[:id])
  end

  def update
    @carrier = Carrier.find(params[:id])
    @carrier.update(carrier_params)
    respond_to do |format|
      format.html { redirect_to :carrier }
      format.js { render :layout => false }
    end
  end

private
  def carrier_params
    params.require(:carrier).permit(:name)
  end

end
