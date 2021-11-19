class BookingsController < ApplicationController

  def index
    # @bookings = Booking.all
    @review = Review.new
    @host = current_user.bartenders.any?
    @bookings = current_user.bookings
    if @host
      @my_requests = current_user.bartenders
      @my_bookings = Booking.where(bartender_id: @my_requests.pluck(:id))
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @review = Review.new
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

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = "accepted"
    @booking.save
    redirect_to bookings_path(anchor: "booking-#{@booking.id}")
  end

  def reject
    @booking = Booking.find(params[:booking_id])
    @booking.status = "rejected"
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
  params.require(:booking).permit(:start_date, :end_date)
  end

end
