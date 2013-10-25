class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery

  def require_login
    if !current_user
      set_back_and_redirect_to request.fullpath, signin_path 
    else 
      true
    end
  end   

  def set_back_and_redirect_to back_path, new_path
    session[:back_path] = back_path
    redirect_to new_path
  end

  def redirect_back_or default_path
    back_path = session.delete :back_path
    redirect_to back_path or default_path
  end
end
