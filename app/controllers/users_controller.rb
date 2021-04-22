class UsersController < ApplicationController

  before_action :logged_in_user, only: [:show, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "新規登録が完了しました。ログインをしてください。"
      redirect_to("/")
    else
      render 'new'
    end
  end

  def show
    @posts = Post.where(user_id: current_user.id)
    @mainposts = Mainpost.where(user_id: current_user.id)
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      flash[:success] = "ユーザー情報を更新しました"
      redirect_to("/users/#{@user.id}")
    else
      flash[:danger] = "ユーザー更新に失敗しました"
      render 'edit'
    end
  end

  def secret
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit(:password,:password_confirmation, :grade, :expert, :nickname)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to("/logintop") unless current_user?(@user)
    end

end
