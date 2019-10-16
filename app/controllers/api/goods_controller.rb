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
    @good = Good.find(params[:id])
    @good.name = params[:name] || @good.name
    @good.description = params[:description] || @good.description
    @good.category = params[:category] || @good.category
    @good.status = params[:status] || @good.status
    @good.user_id = params[:user_id] || @good.user_id
    if @good.save
      render 'show.json.jb'
    else
      render json: {errors: @good.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    good = Good.find(params[:id])
    good.destroy
    render 'index.json.jb'
  end
end
