class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(params_booking)
    @booking.flat = @flat
    @booking.user = current_user
    @booking.save

    redirect_to user_bookings_path(@booking)
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
