class Api::GoodsController < ApplicationController
  def index
    @goods = Good.all
    render 'index.json.jb'
  end 

  def show
    @good = Good.show(params[:id])
    render 'show.json.jb'
  end
end
