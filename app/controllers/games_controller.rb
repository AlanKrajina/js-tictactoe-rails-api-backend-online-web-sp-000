class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @test = Game.create(game_params)
#    binding.pry
    test2 = @test["state"]
    @game = JSON.parse(test2)
    render json: @game, status: 201
  end

  private

  def game_params
    params.permit(state: [])
  end
end
