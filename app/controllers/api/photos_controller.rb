class Api::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render 'index.json.jb'
  end

  def show
    @photo = Photo.find(params[:id])
    render 'show.json.jb'
  end
end
