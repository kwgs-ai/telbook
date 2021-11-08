class TelephonesController < ApplicationController
  # def index
  # end

  def show

  end

  def new
    @friend = Friend.find(session[:friend_id])
    @telephone = Telephone.new()
    redirect_to @friend
  end
  def destroy
    @friend = Friend.find(session[:friend_id])
    @telephone = current_member.telephones.find(params[:id])
    @telephone.destroy
    redirect_to @friend, notice: "TELを削除しました。"
  end
  def edit
  end
  def create
    # @telephone = Telephone.new(number: params[:q], cellphone: params[:cell])
    # @aa = params[:author]
    # render "index"
    @telephone = Telephone.new(params[:telephone])
    @friend = Friend.find(params[:author])
    @telephone.author = current_member

    if @telephone.save
      redirect_to @friend, notice: "電話番号を追加しました"
    else

      redirect_to @friend, flash: {error: @telephone.errors.full_messages}
    end
  end
end
