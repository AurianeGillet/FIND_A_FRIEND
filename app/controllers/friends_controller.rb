class FriendsController < ApplicationController

  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    # redirect_to (path to the booking)
  end

  private

  def friend_params
    params.require(:friend).permit(:first_name, :last_name)
  end

end
