class ApplicationController < ActionController::Base
   include SessionsHelper
   include ApplicationHelper
   
  protect_from_forgery with: :exception



end
