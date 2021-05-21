class HomeController < ApplicationController

  before_action :logged_in_user, only: [:sogoabout, :bunabout, :kyouabout, :houabout, :keiabout, :riabout, :kouabout, :seibutuabout, :zyouhouabout, :unilist]

  def top
    @posts = Post.all.order(created_at: :desc).first(2)
    @mainposts = Mainpost.all.order(created_at: :desc).first(3)
    @users = User.all
  end

  def about
  end

  def logintop
    @contact = Contact.new
    @secure = Secure.new
  end

  def contact
    @contact = Contact.new(contact_params)
    @contact.user_id = current_user.id
    if @contact.save
      flash[:success] = "送信に成功しました"
      redirect_to ('/logintop')
    else
      flash[:danger] = "送信に失敗しました。"
      render 'logintop'
    end
  end

  def secure
    @secure = Secure.new(secure_params)
    @secure.save
    if @secure.password == "R9r8p7P6!"
      flash[:success] = "管理者画面に入りました"
      redirect_to ("/pwz248iJiuyH6")
    else
      flash[:danger] = "管理者画面に入れません"
      render 'logintop'
    end
  end

  def mokulist
  end

  def syuabout
  end

  def gakkouabout
  end

  def sakuruabout
  end

  def unilist
  end

  def sogoabout
  end

  def bunaobut
  end

  def kyouabout
  end

  def houabout
  end

  def keiabout
  end

  def riabout
  end

  def kouabout
  end

  def seibutuabout
  end

  def zyouhouabout
  end

  def igakuabout
  end

  def kangoabout
  end

  def yakuabout
  end

  def siabout
  end

  private

    def contact_params
      params.require(:contact).permit(:content)
    end

    def secure_params
      params.require(:secure).permit(:password)
    end
  
end
