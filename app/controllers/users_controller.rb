class UsersController < ApplicationController

  def new
   if !logged_in?
    @user = User.new
   else
     redirect_to user_path(current_user.id)
   end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:notice] = "Account succesfully created. Welcome to Planning Board!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @requests = User.requests
    @comments = Comment.last(10)
  end

  def update
    @user = User.find_by(id: params[:id])
       if @user.update(user_params)
         flash[:notice] = "Success!"
         redirect_to :back
      else
        flash[:notice] = @user.errors
        redirect_to :back
      end
  end

  private

  def user_params
    params.require(:user).permit(:id, :username, :email, :password, :admin_request, :role)
  end

end
