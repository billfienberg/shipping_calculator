class PagesController < ApplicationController
  def index
    @origin = Origin.where(zip:95688).first.id
    @destination = Destination.where(zip:90017).first.id
    @carriers = CarrierDestination.where(destination_id: 1)
  end

  def show
  end
end
