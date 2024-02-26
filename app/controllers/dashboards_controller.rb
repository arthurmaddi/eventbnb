class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @bookings = Booking.all
  end

  def show
    @user = current_user
    @spots = Spot.where(user: @user)
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to dashboard_path
  end

end
