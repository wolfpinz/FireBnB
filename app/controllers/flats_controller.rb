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

  private

  def params_flat
    params.require(:flat).permit(:city, :street, :price_per_night, :description, :title)
  end

  # def create
  #   @flat = Flat.new(flat_params)
  #   @flat.save

  #   redirect_to flat_path(@flat)
  # end
end
