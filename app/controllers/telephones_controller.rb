class TelephonesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @telphone = Telephone.new(number: params[:q], cellphone: params[:cell])
    @telphone.author = @friend
    if @telphone.seve
      redirect_to @friend
    else
      render "show"
    end
  end

  def edit
  end
end
