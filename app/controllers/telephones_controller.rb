class TelephonesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @friend = Friend.find(session[:friend_id])
    @telphone = Telephone.new(number: params[:q], cellphone: params[:cell])
    @telphone.author = current_member

    if @telphone.save
      redirect_to @friend, notice: "追加しました"
    else
      render "friends/show"
    end
  end

  def edit
  end
  def create

  end
end
