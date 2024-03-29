class SpotsController < ApplicationController
  def index
    @spots = Spot.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR location ILIKE :query OR description ILIKE :query"
      @spots = @spots.where(sql_subquery, query: "%#{params[:query]}%")
    end
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {spot: spot})
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @booking = Booking.new
    @bookings       = @spot.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end
  end


  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      redirect_to spot_path(@spot)
    else
      render :new, status: :unprocessable_entity
    end
  end

    def destroy
      @spot = Spot.find(params[:id])
      if @spot.user == current_user
        @spot.destroy
        redirect_to root_path, notice: 'Le spot a bien été supprimé.'
      else
        redirect_to root_path, alert: 'Vous ne pouvez pas supprimer ce spot.'
      end
    end

    def edit
      @spot = Spot.find(params[:id])
    end

    def update
      @spot = Spot.find(params[:id])


      if @spot.user == current_user
        @spot.edit(spot_params)
        redirect_to spot_path(@spot)
      else
        redirect_to root_path, alert: 'Vous ne pouvez pas modifier ce spot.'
      end
    end



  private

  def spot_params
    params.require(:spot).permit(:name, :location, :price, :image, :description)
  end

end
