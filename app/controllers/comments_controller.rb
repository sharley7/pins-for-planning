class CommentsController < ApplicationController
  load_and_authorize_resource
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      flash[:notice] = "Your comment has been created."
      redirect_to :back
    elsif current_user == nil
      flash[:notice] = "You must be logged in to comment."
      redirect_to :back
    else
      flash[:notice] = "Your comment was not submitted. Please try again."
      redirect_to :back
    end
  end

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    @comment = Comment.find_by(id: params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Your comment has been updated."
      redirect_to pins_path
    else
      flash[:notice] = "Your comment could not be saved."
      render 'edit'
    end
  end

  def index
    @comments = Comment.all
     if params[:user_id]
       @comments = User.find(params[:user_id]).comments
      end
   end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    flash[:notice] = "Your comment has been deleted."
    redirect_to :back
  end


private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :pin_id, user_attributes: [:username, :password, :email])
  end

end
