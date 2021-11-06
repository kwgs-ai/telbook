class FriendsController < ApplicationController
  def index
    @friends = Friend.all
                     .page(params[:page]).per(15)
  end
  def show
    @friend = Friend.find(params[:id])
    @telephones = @friend.telephones

  end
  def new
    @friend = Friend.new()
  end
  def edit
    @friend = Friend.find(params[:id])
    render "new"
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
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(params[:friend])
    if @friend.save
      redirect_to :friends, notice: "会員情報を更新しました。"
    else
      render "new"
    end

  end
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to :friends, notice: "会員を削除しました。"
  end
  def add
    @telephone = Telephone.new()
  end
  def delete

  end

end
