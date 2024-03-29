class BookingsController < ApplicationController

  before_action :set_spot, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.spot = @spot
    @booking.status = "pending"
    @booking.user = current_user
    @booking.save
    redirect_to dashboard_path(@booking.user)
  end


  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "confirmed"
    @booking.save
    redirect_to dashboard_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save
    redirect_to dashboard_path
  end
  private

  def set_spot
    @spot = Spot.find(params[:spot_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
