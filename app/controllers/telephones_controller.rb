class TelephonesController < ApplicationController

  def destroy
    @friend = Friend.find(params[:friend_id])
    @telephone = @friend.telephones.find(params[:id])
    @telephone.destroy
    redirect_to @friend, notice: "電話番号削除しました"
  end

  def create
    @telephone = Telephone.new(params[:telephone])
    @friend = Friend.find(params[:author])
    @telephone.author = @friend

    if @telephone.save
      @telephones = @friend.telephones.page(params[:page]).per(5)
      @total = @telephones.per(5).total_pages
      redirect_to friend_path(@friend.id, page: @total), notice: "電話番号を追加しました"
    else

      redirect_to @friend, flash: {error: @telephone.errors.full_messages}
    end
  end
end
