class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @friend = Friend.find(params[:friend_id])
    @booking = Booking.new(booking_params)
    @booking.friend_id = @friend.id
    @booking.user = current.user
    # if statement to save
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to (path to the booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :location)
  end
end
