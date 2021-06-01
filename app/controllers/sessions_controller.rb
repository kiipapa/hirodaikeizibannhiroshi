class SessionsController < ApplicationController

  before_action :logged_in_user, only: [:destroy]

  # ログイン

  def new
  end

  def create
    user = User.find_by(nickname: params[:session][:nickname])
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to ("/logintop")
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  # ログアウト

  def destroy
    log_out if logged_in?
    redirect_to "/"
  end
  
end
