class VotesController < ApplicationController

  # POST Create
  def create
    @game = Game.find(params[:votable_id])
    vote = Vote.create(voter_id: current_user.id, votable: @game, up: params[:up])
    puts vote.errors.to_hash
    redirect_to "/"
  end
end
