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
    @origin = Origin.find(params[:id])
  end

  def edit
    @origin = Origin.find(params[:id])
  end

  def update
    @origin = Origin.find(params[:id])
    @origin.update(origin_params)
    respond_to do |format|
      format.html { redirect_to :origin }
      format.js { render :layout => false }
    end
  end

  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy
    respond_to do |format|
      format.html { redirect_to origins_path }
      format.js { render :layout => false }
    end
  end

private
  def origin_params
    params.require(:origin).permit(:name, :address, :city, :state, :zip)
  end

end
