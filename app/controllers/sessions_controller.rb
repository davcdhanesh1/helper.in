class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params_for_admin_login[:email])
    if admin && admin.authenticate(params_for_admin_login[:password])
      log_in(admin)
      redirect_to :workers
    else
      flash.now[:errors] = ['Invalid email / password combination']
      render :new
    end
  end

  private
  
  def params_for_admin_login
    params.require(:session).permit(:email, :password)
  end

end
