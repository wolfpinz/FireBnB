class FlatsController < ApplicationController
  # create views for index, show and create
  # Daniel show
  # Lara index

  def index
    @flats = Flat.all
  end

  def show

  end
end
