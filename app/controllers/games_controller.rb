class GamesController < ApplicationController
  def index
    @games_alphabetically = Game.alphabetize
    (@owned_games = current_user.games.all) if user_signed_in?
    @games_by_rating = Game.sort_by_rating
    @scifi_games = Game.scifi
    @strategy_games = Game.strategy
  end

  def show
    @game = Game.find(params[:id])
    @rating = @game.rating
  end

  def own
    @user = current_user
    @game = Game.find(params[:id])
    if user_signed_in?
      @user.games << @game
      redirect_to :back
    end

  end
end
