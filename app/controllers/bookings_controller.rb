class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.save

    redirect_to flats_path
  end

  private

  def params_booking
    params.require(:bookings).permit(:start_date, :end_date, :status)
  end
end
