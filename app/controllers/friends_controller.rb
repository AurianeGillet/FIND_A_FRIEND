class FriendsController < ApplicationController

  def index
    # @friends = Friend.all
    if params[:query].present?
      @friends = Friend.search_by_first_name_and_category(params[:query])
    else
      @friends = Friend.all
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
      @full_name = "#{@friend.first_name} #{@friend.last_name}"
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
    params.require(:friend).permit(:first_name, :last_name, :phone_number, :email_address, :category, :photo, :description, :age, :price)
  end
end
