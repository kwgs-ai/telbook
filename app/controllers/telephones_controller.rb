class TelephonesController < ApplicationController
  def index
    @member = Friend.find(3)
      @telephones= @member.telephones
    
  end

  def show
  end

  def new
  end

  def edit
  end
end
