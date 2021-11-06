class TopController < ApplicationController
  def index
    @friends = Friend.all
  end
end
