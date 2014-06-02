class PagesController < ApplicationController
  def index
  end

  def calculate
    @origins = Origin.all
  end
end
