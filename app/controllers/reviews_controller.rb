class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @bartender = @booking.bartender
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to bartender_path(@bartender)
    else
      render 'bookings/index'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
