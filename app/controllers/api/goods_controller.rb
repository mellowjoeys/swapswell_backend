class Api::GoodsController < ApplicationController
  def index
    @goods = Good.all
    render 'index.json.jb'
  end 

  def create
    @good = Good.new(
      name: params[:name],
      description: params[:description],
      category: params[:category],
      status: params[:status],
      user_id: params[:user_id]
      )
    if @good.save
      render 'show.json.jb'
    else
      render json: {errors: @good.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @good = Good.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @good = Good.s
  end
end
