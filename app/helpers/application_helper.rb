module ApplicationHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def active_class(link_path)
    current_page?(link_path) ? "active" : "tag-block"
  end


end
