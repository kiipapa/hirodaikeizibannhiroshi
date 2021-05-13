class PostsController < ApplicationController

  before_action :logged_in_user


  def like
    @post = Post.find_by(id: params[:id])
    @like = Like.new
    @like.user_id = current_user.id
    @like.post_id = params[:id].to_i
    if @like.save
      flash[:success] = "いいねしました"
      redirect_to ("/posts/#{@post.univ_id}/#{@post.id}")
    end
  end

  def likedestroy
    @post = Post.find_by(id: params[:id])
    @like = Like.find_by(user_id: current_user.id, post_id: @post.id)
    if @like.destroy
      flash[:success] = "いいねを取り消しました"
      redirect_to ("/posts/#{@post.univ_id}/#{@post.id}")
    end
  end

  def sogoindex
    @searchconpo = Post.where(univ_id: 1)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def sogonew
    @post = Post.new
  end

  def sogocreate
    @post = Post.new(post_params)
    @post.univ_id  = 1
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/sogoindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'sogonew'
    end
  end

  def bunindex
    @searchconpo = Post.where(univ_id: 2)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def bunnew
    @post = Post.new
  end

  def buncreate
    @post = Post.new(post_params)
    @post.univ_id  = 2
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/bunindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'bunnew'
    end
  end

  def kyouindex
    @searchconpo = Post.where(univ_id: 3)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def kyounew
    @post = Post.new
  end

  def kyoucreate
    @post = Post.new(post_params)
    @post.univ_id  = 3
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/kyouindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'kyounew'
    end
  end

  def houindex
    @searchconpo = Post.where(univ_id: 4)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def hounew
    @post = Post.new
  end

  def houcreate
    @post = Post.new(post_params)
    @post.univ_id  = 4
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/houindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'hounew'
    end
  end

  def keiindex
    @searchconpo = Post.where(univ_id: 5)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def keinew
    @post = Post.new
  end

  def keicreate
    @post = Post.new(post_params)
    @post.univ_id  = 5
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/keiindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'keinew'
    end
  end

  def riindex
    @searchconpo = Post.where(univ_id: 6)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def rinew
    @post = Post.new
  end

  def ricreate
    @post = Post.new(post_params)
    @post.univ_id  = 6
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/riindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'rinew'
    end
  end

  def kouindex
    @searchconpo = Post.where(univ_id: 7)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def kounew
    @post = Post.new
  end

  def koucreate
    @post = Post.new(post_params)
    @post.univ_id  = 7
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/kouindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'kounew'
    end
  end

  def seibutuindex
    @searchconpo = Post.where(univ_id: 8)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def seibutunew
    @post = Post.new
  end

  def seibutucreate
    @post = Post.new(post_params)
    @post.univ_id  = 8
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/seibutuindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'seibutunew'
    end
  end

  def zyouhouindex
    @searchconpo = Post.where(univ_id: 9)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def zyouhounew
    @post = Post.new
  end

  def zyouhoucreate
    @post = Post.new(post_params)
    @post.univ_id  = 9
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/zyouhouindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'zyouhounew'
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
    @answers = Answer.where(post_id: @post.id)
    @like = Like.where(post_id: @post.id)
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    @answers = Answer.where(post_id: @post.id)
    @answers.destroy_all
    @likes = Like.where(post_id: @post.id)
    @likes.destroy_all
    flash[:success] = "投稿を削除しました"
    redirect_to("/users/#{@post.user_id}")
  end

  private

    def post_params
      params.require(:post).permit(:content)
    end
  
end
