#encoding : utf-8

class ApplicationController < ActionController::Base
  protect_from_forgery

  #helper_method allows methods to be called from views
  helper_method :current_session, :current_user, :user_logged_in?
  before_filter :login_filter, :except => [:login, :logout]

  def index
    render "index"
  end

  def current_session
    session[:user_id] || nil
  end

  def current_session=(user_id)
    session[:user_id] = user_id
  end

  def user_logged_in?
    current_session.present?
  end

  def current_user
    @current_user ||= current_session
  end

  def current_user(user)
    @current_user = user
  end

  def login_filter
    binding.pry
    unless user_logged_in?
      render "index"
    else
      if action_name == "index" && controller_name == "application"
        render "admin"
      end
    end
  end

  def login
    binding.pry
    unless user_logged_in?
      begin
        user_id = (User.authenticate(params[:username], params[:password])).id
        self.current_session= user_id
        redirect_to admin_path
      rescue Exception => e
        flash[:error] = e.message
        render "index"
      end
    end
  end

  def logout
    if user_logged_in?
      session[:user_id] = nil
      reset_session
      redirect_to root_path
    end
  end

end

