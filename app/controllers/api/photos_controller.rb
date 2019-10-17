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

  # def update
  #   @photo = Photo.find(params[:id])
  #   @photo.image_url = params[:image_url] || @photo.image_url
  #   @photo.good_id = params[:good_id] || @photo.good_id
  #   if @photo.save
  #     render 'show.json.jb'
  #   else
  #     render json: {errors: @photo.errors.full_messages}, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   photo = Photo.find(params[:id])
  #   photo.destroy
  #   render 'index.json.jb'
  # end
end
