class FriendsController < ApplicationController

  def index
    @friends = Friend.all

    @markers = @friends.geocoded.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude,
        info_window: render_to_string(partial: "info_window", locals: {friend: friend})
      }
    end
  end

  def show
    @friend = Friend.find(params[:id])
    @booking = Booking.new
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      @full_name = "#{:first_name} #{:last_name}"
      redirect_to friends_path
    else
      render :new
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to friends_path, status: :see_other
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name, :phone_number, :email_address, :category, :description, :age, :price, :photo, :address)
  end
end
