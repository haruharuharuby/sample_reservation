class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(loginid: params[:session][:loginid].downcase)
    if admin && admin.authenticate(params[:session][:password])
      log_in admin
      redirect_to home_path
    else
      flash.now[:danger] = 'ログインIDまたはパスワードが間違っています。'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
