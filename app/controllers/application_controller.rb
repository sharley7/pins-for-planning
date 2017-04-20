class ApplicationController < ActionController::Base
   include SessionsHelper
   include ApplicationHelper

  protect_from_forgery with: :exception


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, flash[:alert] => exception.message
  end


end
