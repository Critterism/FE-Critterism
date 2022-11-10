class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!session[:user_id]
  end

  def require_user
    if !current_user
      redirect_to root_path
      flash[:alert] = '🙈 You must be logged in! 🙊'
    end
  end
end
