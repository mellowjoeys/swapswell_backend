class Api::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render 'index.json.jb'
  end

  def create
    @photo = Photo.new(
      image_url: params[:image_url],
      good_id: params[:good_id]
      )
    if @photo.save
      render 'show.json.jb'
    else
      render json: {errors: @photo.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @photo = Photo.find(params[:id])
    render 'show.json.jb'
  end

  def index_others
    goods_minus_own = []
    
    goods = Good.all
    goods.each do |good|
      if good.user_id != current_user.id
        goods_minus_own << good
      end 
    end
    @photos = []
    goods_minus_own.each do |good|
      good.photos.each do |photo|
        @photos << photo
      end 
    end
    render 'index.json.jb'
  end
end
 