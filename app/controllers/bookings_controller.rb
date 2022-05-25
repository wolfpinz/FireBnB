class BookingsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.all
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(params_booking)
    @booking.flat = @flat
    @booking.user = current_user
    @booking.save
    authorize @booking

    redirect_to flats_path
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
