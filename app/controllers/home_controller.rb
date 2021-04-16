class HomeController < ApplicationController

  before_action :logged_in_user, only: [:sogoabout, :bunabout, :kyouabout, :houabout, :keiabout, :riabout, :kouabout, :seibutuabout, :zyouhouabout, :unilist]

  def top
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
  
end
