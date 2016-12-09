class VotesController < ApplicationController

  # POST Create
  def create
    @game = Game.find(params[:votable_id])
    vote = Vote.create(voter_id: current_user.id, votable: @game, up: params[:up].to_i)
    # if vote.valid
      redirect_to "/"
    # else
    #   # @vote_errors = vote.errors.full_messages
    #   render
    # end

  end
end
