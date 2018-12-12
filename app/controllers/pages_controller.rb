class PagesController < ApplicationController

  def index
    @adesivos = Adesivo.all
  end

end
