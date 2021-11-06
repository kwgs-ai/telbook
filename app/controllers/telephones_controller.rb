class TelephonesController < ApplicationController
  def index
  end

  def show

  end

  def new
    @friend = Friend.find(session[:friend_id])
    @telephone = Telephone.new(number: params[:q], cellphone: params[:cell])
    @telephone.author = current_member

    if @telephone.save
      redirect_to @friend, notice: "追加しました"
    else
      redirect_to @friend, notice: "失敗しました"
    end
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

  end
end
