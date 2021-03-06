class UsersController < ApplicationController

  before_action :logged_in_user, only: [:show, :edit, :update, :detail, :follow, :unfollow, :follow_form, :unfollow_form, :delete_form, :destroy, :secret]
  before_action :correct_user,   only: [:edit, :update]

  # 新規登録画面

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "新規登録が完了しました。ログインしました。"
      redirect_to ("/logintop")
    else
      render 'new'
    end
  end

  # マイページ

  def show
    @followed = Relationship.where(follower_id: current_user.id)
    @follower = Relationship.where(followed_id: current_user.id)
    @posts = Post.where(user_id: current_user.id)
    @mainposts = Mainpost.where(user_id: current_user.id)
  end

  # マイページの編集

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

  # ユーザーの詳しい情報

  def detail
    @user = User.find_by(id: params[:id])
    @followed = Relationship.where(follower_id: @user.id)
    @follower = Relationship.where(followed_id: @user.id)
  end

  # 管理者画面

  def secret
    @users = User.all
    @contacts = Contact.all
    @posts = Post.all
    @mainposts = Mainpost.all
  end

  # フォロー、フォロワー機能

  def follow
    @follow = Relationship.new
    @follow.follower_id = current_user.id
    @follow.followed_id = params[:id].to_i
    if @follow.save
      flash[:success] = "フォローしました"
      redirect_to "/users/detail/#{@follow.followed_id}"
    end
  end

  def unfollow
    @user = User.find_by(id: params[:id])
    @follow = Relationship.find_by(follower_id: current_user.id, followed_id: @user.id)
    @follow.destroy
    flash[:success] = "フォローを解除しました"
    redirect_to "/users/detail/#{@user.id}"
  end

  def follow_form
    @user = User.find_by(id: params[:id])
    @followers = Relationship.where(follower_id: @user.id)
  end

  def follower_form
    @user = User.find_by(id: params[:id])
    @follows = Relationship.where(followed_id: @user.id)
  end

  # アカウント削除

  
  def delete_form
    @user = User.find_by(id: current_user.id)
  end

  def destroy
    @user = User.find_by(id: current_user.id)
    @user.destroy
    @posts = Post.where(user_id: current_user.id)
    @posts.destroy_all
    @mainposts = Mainpost.where(user_id: current_user.id)
    @mainposts.destroy_all
    @answers = Answer.where(user_id: current_user.id)
    @answers.destroy_all
    @mainanswers = Mainanswer.where(user_id: current_user.id)
    @mainanswers.destroy_all
    @likes = Like.where(user_id: current_user.id)
    @likes.destroy_all
    @mainlikes = Mainlike.where(user_id: current_user.id)
    @mainlikes.destroy_all
    @f = Relationship.where(followed_id: current_user.id)
    @f.destroy_all
    @g = Relationship.where(follower_id: current_user.id)
    @g.destroy_all
    flash[:success] = "アカウントを削除しました"
    redirect_to ("/")
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
