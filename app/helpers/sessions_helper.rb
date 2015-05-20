module SessionsHelper
  def log_in(user)
    session[:user] = user.id
  end

  def current_user
    @current_user ||= Admin.find_by(id: session[:user])
  end

  def logged_in?
    !current_user.nil?
  end
end
