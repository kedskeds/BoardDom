class GamesController < ApplicationController

  def index
    @games = Game.all
    @first_game = Game.first
  end

  def show
    @game = Game.find(params[:id])
  end
end
