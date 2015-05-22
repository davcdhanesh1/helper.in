class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include WorkersHelper

  def logged_in_as_admin
    unless logged_in?
      redirect_to root_url
    end
  end

  def render_404_page
      render file: "#{Rails.root}/public/404", status: 404
  end

end
