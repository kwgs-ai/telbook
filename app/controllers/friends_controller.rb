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
      redirect_to :friends, notice: "会員を追加しました。"
    else
      render "new"
    end

  end
  def update

  end
  def destroy
    @member = Friend.find(params[:id])
    @member.destroy
    redirect_to :friends, notice: "会員を削除しました。"
  end
end
