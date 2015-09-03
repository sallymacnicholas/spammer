class FriendsController < ApplicationController
  def index
    @friend = Friend.new 
  end
  
  def new
  end

  def create
    @friend = Friend.create(friend_params)
    redirect_to root_path
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :number)
  end
end
