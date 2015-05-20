class SessionsController < ApplicationController
  before_action :logged_in_as_admin, only: [:destroy]

  def new
  end

  def create
    admin = Admin.find_by(email: params_for_admin_login[:email])
    if admin && admin.authenticate(params_for_admin_login[:password])
      log_in(admin)
      redirect_to root_url
    else
      flash.now[:errors] = ['Invalid email / password combination']
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  private
  
  def params_for_admin_login
    params.require(:session).permit(:email, :password)
  end

end
