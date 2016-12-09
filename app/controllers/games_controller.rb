class GamesController < ApplicationController

  def index
    @games_alphabetically = Game.order(:title)
    (@owned_games = current_user.games.all) if user_signed_in?
    @games_by_rating = Game.all.sort{|game1, game2| game1.votes.where(up: 1).count <=> game2.votes.where(up: 1).count}
    @scifi_games = Game.where(genre: 'Sci-Fi')
    @strategy = Game.where(category: 'Table Top Strategy')
end

  def show
    @game = Game.find(params[:id])
    @rating = ((@game.votes.where(up: 1).count.to_f / @game.votes.count.to_f ) * 100).round(2)

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
