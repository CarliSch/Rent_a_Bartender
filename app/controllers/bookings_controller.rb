class BookingsController < ApplicationController

  def index
    # @bookings = Booking.all
    @host = current_user.bartenders.any?
    @bookings = current_user.bookings
    if @host
      @my_requests = current_user.bartenders
      @my_bookings = Booking.where(bartender_id: @my_requests.pluck(:id))
    end
  end

  def new
    @booking = Booking.new
    @bartender = Bartender.find(params[:bartender_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @bartender = Bartender.find(params[:bartender_id])
    @booking.user = current_user
    @booking.bartender = @bartender
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
  params.require(:booking).permit(:start_date, :end_date)
  end

end
