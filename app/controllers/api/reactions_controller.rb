class Api::ReactionsController < ApplicationController
  def index
    @reactions = current_user.reactions
    render 'index.json.jb'
  end

  def create
    @reaction = Reaction.new(
      user_id: current_user.id,
      good_id: params[:good_id],
      desired: params[:desired]
      )

    if @reaction.save
      render 'show.json.jb'
    else
      render json: {error: @reaction.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @reaction = Reaction.find(params[:id])
    render 'show.json.jb'
  end

end
