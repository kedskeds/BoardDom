class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @game = Game.find(params[:id])
    @user = User.find(session[:user_id])
    @comment = @user.comments.new(comment_params, commentable_id: @game.id, author_id: @user.id, commentable_type: "Game")
    if @comment.save
      redirect_to game_comments_path(@comment)
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
