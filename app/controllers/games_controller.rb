class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find_by(id: params["game.id"])
  end

  def update

  end

  def index

  end

  private

  def game_params
    params.permit(state: [])
  end
end
