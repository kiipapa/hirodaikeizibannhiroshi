class MainanswersController < ApplicationController

  before_action :logged_in_user

  def new
    @mainanswer = Mainanswer.new(user_id: current_user.id, post_id: params[:post_id], acode_id: params[:acode_id])
  end

  def create
    @mainanswer = Mainanswer.new(mainanswer_params)
    @mainanswer.user_id = current_user.id
    @mainanswer.post_id = params[:post_id].to_i
    @mainanswer.acode_id = params[:acode_id].to_i
    if @mainanswer.save
      flash[:success] = "回答を投稿しました"
      redirect_to("/mainposts/#{@mainanswer.acode_id}/#{@mainanswer.post_id}")
    else
      flash.now[:danger] = "回答に失敗しました"
      render 'new'
    end
  end

  def destroy
    @mainanswer = Mainanswer.find_by(id: params[:id])
    @mainanswer.destroy
    redirect_to("/mainposts/#{@mainanswer.acode_id}/#{@mainanswer.post_id}")
    flash[:success] = "回答を削除しました"
  end

  private

    def mainanswer_params
      params.require(:mainanswer).permit(:content)
    end
end
