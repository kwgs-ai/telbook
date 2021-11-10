class FriendsController < ApplicationController
  def index
    @friends = Friend.all
                     .page(params[:page]).per(5)
  end
  def show
    @telephone = Telephone.new()
    @friend = Friend.find(params[:id])
    @friend_id = params[:id]
    @telephones = @friend.telephones
                          .page(params[:page]).per(5)



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
      redirect_to :friends, notice: "友達を追加しました。"
    else
      render "new"
    end

  end
  def update
    @friend = Friend.find(params[:id])
    @friend.assign_attributes(params[:friend])
    if @friend.save
      redirect_to :friends, notice: "友達情報を更新しました。"
    else
      render "new"
    end

  end
  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to :friends, notice: "友達を削除しました。"
  end


end
