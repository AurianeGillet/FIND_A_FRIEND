class BookingsController < ApplicationController

  def index
    if params.dig(:search, :begin_date).present? && params.dig(:search, :end_date).present?
      @bookings = Booking.where(user: current_user, date: params.dig(:search, :begin_date)..params.dig(:search, :end_date))
    else
      @bookings = Booking.where(user: current_user)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @friend = Friend.find(params[:friend_id])
    @booking = Booking.new(booking_params)
    @booking.friend_id = @friend.id
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render "friends/show"
    end
    # if statement to save
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :location, :message)
  end
end
