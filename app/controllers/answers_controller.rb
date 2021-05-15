class AnswersController < ApplicationController

  before_action :logged_in_user

  def new
    @answer = Answer.new(user_id: current_user.id, post_id: params[:post_id], auni_id: params[:auni_id])
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    @answer.post_id = params[:post_id].to_i
    @answer.auni_id = params[:auni_id].to_i
    if @answer.save
      flash[:success] = "回答を投稿しました"
      redirect_to("/posts/#{@answer.auni_id}/#{@answer.post_id}")
    else
      flash.now[:danger] = "回答に失敗しました"
      render 'new'
    end
  end

  def destroy
    @answer = Answer.find_by(id: params[:id])
    @answer.destroy
    redirect_to("/posts/#{@answer.auni_id}/#{@answer.post_id}")
    flash[:success] = "回答を削除しました"
  end

  private

    def answer_params
      params.require(:answer).permit(:content)
    end
end
