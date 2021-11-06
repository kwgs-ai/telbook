class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end
  def show

  end
  def new
    @friend = Friend.new()
  end
  def edit

  end
  def create
    @friend = Friend.new(params[:friend])
    if @friend.save
      redirect_to :root
    else
      render "new"
    end

  end
  def update

  end
  def destroy

  end
end
