class FlatsController < ApplicationController
  # create views for index, show and create
  # Daniel show
  # Lara index
  # Wolf new, create
  skip_before_action :authenticate_user!, except: [:create]
  before_action :set_flat, only: [:show]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create!(flat_params)

    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:title, :description, :city, :street, :price_per_night)
  end
end
