class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to (path to the booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :friend_id, :date, :location)
  end
end
