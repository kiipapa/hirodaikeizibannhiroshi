class SessionsController < ApplicationController

  before_action :logged_in_user, only: [:destroy]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to ("/logintop")
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to "/"
  end
  
end
