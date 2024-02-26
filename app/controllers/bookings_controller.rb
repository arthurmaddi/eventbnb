class BookingsController < ApplicationController

  before_action :set_spot, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.spot = @spot
    @booking.user = current_user
    @booking.save
    redirect_to spot_path(@spot)
  end

  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
