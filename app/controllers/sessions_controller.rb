class SessionsController < ApplicationController

  def new
    if !logged_in?
      @user = User.new
      @users = User.all
    else
      redirect_to user_path(current_user.id)
    end
  end

  def create
    @user = User.find_by(username: params[:user][:username].downcase)
      if @user && @user.authenticate(params[:user][:password])
        if @user != nil
          log_in @user
          redirect_to @user
        else
          flash[:notice] = "Please check your username or password."
          render 'new'
        end
      elsif @user.nil?
        flash[:notice] = "We cannot find that user. You may need to sign up."
        render 'new'
      end
   end

   def destroy
    session.clear
    redirect_to root_path
   end


  def create_facebook
    @user = User.find_or_create_by(:uid => auth['uid']) do |u|
       u.username = auth['info']['name']
       u.email = auth['info']['email']
       u.password = random_password
     end
     if @user.nil?
       flash[:notice] = "We cannot find that user. You may need to sign up."
       render '/login'
     else
       log_in(@user)
       redirect_to user_path(@user)
     end
    end

    def auth
      request.env['omniauth.auth']
    end

 private
   def random_password(size = 8)
    chars = (('a'..'z').to_a + ('0'..'9').to_a) - %w(i o 0 1 l 0)
    (1..size).collect{|a| chars[rand(chars.size)] }.join
   end

 end
