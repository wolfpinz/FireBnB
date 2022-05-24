class FlatsController < ApplicationController
  # create views for index, show and create
  # Daniel show
  # Lara index

  def index
    @flats = Flat.all
  end

  def show
    flat_id = params[:id]
    @flat = Flat.find(flat_id)
  end

  private

  def params_flat
    params.require(:flat)
  end

  # def create
  #   @flat = Flat.new(flat_params)
  #   @flat.save

  #   redirect_to flat_path(@flat)
  # end
end
