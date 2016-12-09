class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @owned_games =  @user.games
  end

  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order("created_at DESC")
    end
  end

end
