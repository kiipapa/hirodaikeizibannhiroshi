class HomeController < ApplicationController

  before_action :logged_in_user, only: [:sogoabout, :bunabout, :kyouabout, :houabout, :keiabout, :riabout, :kouabout, :seibutuabout, :zyouhouabout, :unilist]

  # トップページ

  def top
    @posts = Post.all.order(created_at: :desc).first(2)
    @mainposts = Mainpost.all.order(created_at: :desc).first(3)
    @users = User.all
  end

  # このアプリについて

  def about
  end

  # ログイントップ

  def logintop
    @contact = Contact.new
    @secure = Secure.new
  end

  # お問い合わせ機能の送信機能

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

  # 管理者画面に入るためのパスワード画面

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

  # 学校生活に関する投稿部屋一覧

  def mokulist
  end

  # 就職活動の部屋

  def syuabout
  end

  # 学校生活の部屋

  def gakkouabout
  end

  # 部活・サークルの部屋

  def sakuruabout
  end

  # 大学別投稿部屋リスト

  def unilist
  end

  # 総合科学部の部屋

  def sogoabout
  end

  # 文学部の部屋

  def bunaobut
  end

  # 教育学部の部屋

  def kyouabout
  end

  # 法学部の部屋

  def houabout
  end

  # 経済学部の部屋

  def keiabout
  end

  # 理学部の部屋

  def riabout
  end

  # 法学部の部屋

  def kouabout
  end

  # 生物生産学部の部屋

  def seibutuabout
  end

  # 情報科学部の部屋

  def zyouhouabout
  end

  # 医学部の部屋

  def igakuabout
  end

  # 看護学部の部屋

  def kangoabout
  end

  # 薬学部の部屋

  def yakuabout
  end

  # 歯学部の部屋

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
