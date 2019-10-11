class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render 'index.json.jb'
  end

  def show
    @user = User.find(params[:id])
    render 'show.json.jb'
  end

  def create
    user = User.new(
      username: params[:username],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      zip_code: params[:zip_code]
      )
    if user.save
      render json: {message: "User created successfuly"}, status: :created
    else 
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end
end
