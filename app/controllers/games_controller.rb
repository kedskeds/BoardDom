class GamesController < ApplicationController

  def index
    @games_alphabetically = Game.order(:title)
    @liked_games = current_user.games.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def own
    @user = current_user
    @game = Game.find(params[:id])
    if user_signed_in?
      @user.games << @game
    end
  end

end
