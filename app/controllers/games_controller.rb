class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(game_params)
#    binding.pry
#    test = @game["state"]
#    obj = JSON.parse(test)
    render json: @game, status: 201
  end

  private

  def game_params
    params.permit(state: [])
  end
end
