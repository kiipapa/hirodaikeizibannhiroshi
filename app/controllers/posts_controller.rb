class PostsController < ApplicationController

  before_action :logged_in_user
  

  # 総合科学部に関する投稿

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

  #　文学部に関する投稿

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

  # 教育学部に関する投稿

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

   # 法学部に関する投稿

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

   # 経済学部に関する投稿

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

   # 理学部に関する投稿

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

   # 法学部に関する投稿

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

   # 生物生産学部に関する投稿

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

   # 情報科学部に関する投稿

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

   # 医学部に関する投稿

  def igakuindex
    @searchconpo = Post.where(univ_id: 10)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def igakunew
    @post = Post.new
  end

  def igakucreate
    @post = Post.new(post_params)
    @post.univ_id  = 10
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/igakuindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'igakunew'
    end
  end

   # 看護学部に関する投稿

  def kangoindex
    @searchconpo = Post.where(univ_id: 11)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def kangonew
    @post = Post.new
  end

  def kangocreate
    @post = Post.new(post_params)
    @post.univ_id  = 11
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/kangoindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'kangonew'
    end
  end

   # 薬学部に関する投稿

  def yakuindex
    @searchconpo = Post.where(univ_id: 12)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def yakunew
    @post = Post.new
  end

  def yakucreate
    @post = Post.new(post_params)
    @post.univ_id  = 12
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/yakuindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'yakunew'
    end
  end

   # 歯学部に関する投稿

  def siindex
    @searchconpo = Post.where(univ_id: 13)
    @search = @searchconpo.ransack(params[:q])
    @posts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def sinew
    @post = Post.new
  end

  def sicreate
    @post = Post.new(post_params)
    @post.univ_id  = 13
    @post.user_id  = current_user.id
    if @post.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/posts/siindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'sinew'
    end
  end

   # 投稿詳細ページの実装

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
    @answers = Answer.where(post_id: @post.id)
    @like = Like.where(post_id: @post.id)
  end

   # いいね機能の実装

   def likecreate
    @post = Post.find_by(id: params[:id])
    @like = Like.new
    @like.user_id = current_user.id
    @like.post_id = params[:id].to_i
    @like.save
  end

  def likedestroy
    @post = Post.find_by(id: params[:id])
    @like = Like.find_by(user_id: current_user.id, post_id: @post.id)
    @like.destroy
  end

   # 質問削除

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

   # 管理者画面から投稿を削除する

  def securedestroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:success] = "倫理性のない投稿を排除しました。"
    redirect_to("/secret")
  end

  private

    def post_params
      params.require(:post).permit(:content, :img)
    end
  
end
