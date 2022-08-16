class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in
    if current_user == nil
      redirect_to '/login'
    end
  end

  def current_user
    user = User.find_by(id: session[:user_id])
    user.nil? ? nil : user.name
  end
end
