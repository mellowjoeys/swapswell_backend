class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jb'
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jb'
  end
end
