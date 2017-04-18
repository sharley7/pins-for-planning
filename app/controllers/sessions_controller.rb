class SessionsController < ApplicationController

  def new
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.find_by(username: params[:user][:username].downcase)
    if user && user.authenticate(params[:user][:password])
      if user != nil
        log_in user
        redirect_to @user
      else
        render 'new'
      end
    else
      render 'new'
    end
  end


def create_facebook
   user = User.find_or_create_by(:uid => auth['uid']) do |u|
     u.name = auth['info']['name']
     u.email = auth['info']['email']
   end
   session[:user_id] = user.id
 end

 def auth
   request.env['omniauth.auth']
 end

 end
