class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def create
    @flat = Flat.find(params[:id])
    @booking = Booking.create(params_booking)
    @booking.flat_id = @flat
    @booking.user_id = 1
    @booking.save

    redirect_to flats_path
  end

  private

  def params_booking
    params.require(:bookings).permit(:start_date, :end_date, :status)
  end
end
