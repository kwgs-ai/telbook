class TelephonesController < ApplicationController
  def new
    @friend = Friend.find(params[:friend_id])
    @telephone =Telephone.new()
    redirect_to @friend
  end
  def destroy
    @friend = Friend.find(params[:friend_id])
    @telephone = @friend.telephones.find(params[:id])
    @telephone.destroy
    redirect_to @friend, notice: '電話番号削除しました'
  end

  def create
    @telephone = Telephone.new(params[:telephone])
    @friend = Friend.find(params[:friend_id])
    @telephone.friend_id = params[:friend_id]
    @telephones = @friend.telephones.page(params[:page]).per(5)
    if @telephone.save
      @telephones = @friend.telephones.page(params[:page]).per(5)
      @total = @telephones.per(5).total_pages
      redirect_to friend_path(@friend.id, page: @total), notice: '電話番号を追加しました'
    else
      render 'friends/show'
    end
  end
end
