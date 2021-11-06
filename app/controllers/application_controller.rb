class ApplicationController < ActionController::Base
  private def current_member
    if session[:friend_id]
      Friend.find_by(id: session[:friend_id])
    else
      session[:friend_id]
      end
  end
  helper_method :current_member


end
