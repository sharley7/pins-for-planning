class AdminsController < ApplicationController

  def index
    @requests = User.requests
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.approve_admin
    flash[:notice] = "Admin approved!"
    redirect_to :back
  end

  def deny_admin
    @user = User.find_by(id: params[:id])
  end

end
