class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to pin_path(@comment.pin)
  end


private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :pin_id, user_attributes: [:username, :password, :email])
  end

end
