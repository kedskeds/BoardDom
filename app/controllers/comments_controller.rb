class CommentsController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
    @comment = Comment.new
  end

  def create
    @game = Game.find(params[:game_id])
    @user = User.find(session["warden.user.user.key"][0][0])
    @comment = @user.comments.new(comment_params, commentable_id: @game.id, author_id: @user.id, commentable_type: "Game")
    if @comment.save
      redirect_to game_comments_path(@game)
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
