class MainpostsController < ApplicationController

  before_action :logged_in_user


  def mainlike
    @mainpost = Mainpost.find_by(id: params[:id])
    @like = Mainlike.new
    @like.user_id = current_user.id
    @like.post_id = params[:id].to_i
    if @like.save
      flash[:success] = "いいねしました"
      redirect_to ("/mainposts/#{@mainpost.code_id}/#{@mainpost.id}")
    end
  end

  def mainlikedestroy
    @mainpost = Mainpost.find_by(id: params[:id])
    @like = Mainlike.find_by(user_id: current_user.id, post_id: @mainpost.id)
    if @like.destroy
      flash[:success] = "いいねを取り消しました"
      redirect_to ("/mainposts/#{@mainpost.code_id}/#{@mainpost.id}")
    end
  end

  def gakkouindex
    @searchconpo = Mainpost.where(code_id: 1)
    @search = @searchconpo.ransack(params[:q])
    @mainposts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def gakkounew
    @mainpost = Mainpost.new
  end

  def gakkoucreate
    @mainpost = Mainpost.new(mainpost_params)
    @mainpost.code_id   = 1
    @mainpost.user_id  = current_user.id
    if @mainpost.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/mainposts/gakkouindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'gakkounew'
    end
  end

  def sakuruindex
    @searchconpo = Mainpost.where(code_id: 2)
    @search = @searchconpo.ransack(params[:q])
    @mainposts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def sakurunew
    @mainpost = Mainpost.new
  end

  def sakurucreate
    @mainpost = Mainpost.new(mainpost_params)
    @mainpost.code_id   = 2
    @mainpost.user_id  = current_user.id
    if @mainpost.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/mainposts/sakuruindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'sakurunew'
    end
  end

  def syuindex
    @searchconpo = Mainpost.where(code_id: 3)
    @search = @searchconpo.ransack(params[:q])
    @mainposts = @search.result.order(created_at: :desc).page(params[:page]).per(10)
  end

  def syunew
    @mainpost = Mainpost.new
  end

  def syucreate
    @mainpost = Mainpost.new(mainpost_params)
    @mainpost.code_id   = 3
    @mainpost.user_id  = current_user.id
    if @mainpost.save
      flash[:success] = "質問を投稿しました"
      redirect_to("/mainposts/syuindex")
    else
      flash.now[:danger] = "投稿に失敗しました"
      render 'syunew'
    end
  end

  def show
    @mainpost = Mainpost.find_by(id: params[:id])
    @user = User.find_by(id: @mainpost.user_id)
    @mainanswers = Mainanswer.where(post_id: @mainpost.id)
    @like = Mainlike.where(post_id: @mainpost.id)
  end
  
  def destroy
    @mainpost = Mainpost.find_by(id: params[:id])
    @mainpost.destroy
    @answers = Mainanswer.where(post_id: @mainpost.id)
    @answers.destroy_all
    @likes = Mainlike.where(post_id: @mainpost.id)
    @likes.destroy_all
    flash[:success] = "投稿を削除しました"
    redirect_to("/users/#{@mainpost.user_id}")
  end

  private

    def mainpost_params
      params.require(:mainpost).permit(:content)
    end

end
