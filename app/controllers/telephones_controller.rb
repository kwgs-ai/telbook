class TelephonesController < ApplicationController

  def destroy
    @friend = Friend.find(params[:friend])
    @telephone = @friend.telephones.find(params[:id])
    @telephone.destroy
    redirect_to @friend, notice: "電話番号削除しました"
  end

  def create
    # @telephone = Telephone.new(number: params[:q], cellphone: params[:cell])
    # @aa = params[:author]
    # render "index"
    @telephone = Telephone.new(params[:telephone])
    @friend = Friend.find(params[:author])
    @telephone.author = @friend

    if @telephone.save
      redirect_to @friend, notice: "電話番号を追加しました"
    else

      redirect_to @friend, flash: {error: @telephone.errors.full_messages}
    end
  end
end
