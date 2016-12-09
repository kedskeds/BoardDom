class SearchController < ApplicationController
  def index
    @users = User.search(params[:q])
    @games = Game.search(params[:q])
  end
end
