class GamesController < ApplicationController

  def index
    @games = Game.all
    @first_game = Game.first
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
