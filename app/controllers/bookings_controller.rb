class BookingsController < ApplicationController

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
      redirect_to bartender_path(@bartender)
    else
      render :new
    end
  end

  private

  def booking_params
  params.require(:booking).permit(:start_date, :end_date)
  end

end
