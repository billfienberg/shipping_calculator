class PagesController < ApplicationController
  def index
  end

  def calculate
    @origins = Origin.all
    @destinations = Destination.all
  end
end
