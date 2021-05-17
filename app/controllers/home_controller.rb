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
  
end
