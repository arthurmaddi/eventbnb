class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @user = current_user
    @spots = Spot.where(user: @user)
    @bookings = current_user.bookings
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to dashboard_path
  end

end
