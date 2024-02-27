class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @user = current_user
    @bookings = Booking.where(user: @user)
    @bookings_received = Booking.joins(:spot).where(spots: { user: @user })
    @spots = Spot.where(user: @user)
  end


  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to dashboard_path
  end



end
