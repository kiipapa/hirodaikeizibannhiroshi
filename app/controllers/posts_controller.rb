class PostsController < ApplicationController

  before_action :logged_in_user

  def sogoindex
    @posts = Post.where(univ_id: 1)
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
    @posts = Post.where(univ_id: 2)
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
    @posts = Post.where(univ_id: 3)
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
    @posts = Post.where(univ_id: 4)
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
    @posts = Post.where(univ_id: 5)
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
    @posts = Post.where(univ_id: 6)
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
    @posts = Post.where(univ_id: 7)
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
    @posts = Post.where(univ_id: 8)
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
    @posts = Post.where(univ_id: 9)
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
    @answers = Answer.where(post_id: @post.id)
  end

  private

    def post_params
      params.require(:post).permit(:title, :content)
    end
  
end
