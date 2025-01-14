class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def show
  #  binding.pry
    @game = Game.find_by(id: params["id"])
    render json: @game
  end

  def update
    @game = Game.find_by(id: params["id"])
    @game.update(game_params)
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games
  end

  private

  def game_params
    params.permit(state: [])
  end
end
