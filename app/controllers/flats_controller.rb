class FlatsController < ApplicationController
  # create views for index, show and create
  # Daniel show
  # Lara index
  skip_before_action :authenticate_user!
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end
end
