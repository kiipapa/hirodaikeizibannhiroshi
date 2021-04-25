class MainpostsController < ApplicationController

  before_action :logged_in_user

  def gakkouindex
    @mainposts = Mainpost.where(code_id: 1)
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
    @mainposts = Mainpost.where(code_id: 2)
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
    @mainposts = Mainpost.where(code_id: 3)
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
  end
  
  def destroy
    @mainpost = Mainpost.find_by(id: params[:id])
    @mainpost.destroy
    flash[:success] = "投稿を削除しました"
    redirect_to("/users/#{@mainpost.user_id}")
  end

  private

    def mainpost_params
      params.require(:mainpost).permit(:content)
    end

end
