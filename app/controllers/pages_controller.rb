class PagesController < ApplicationController
before_action :authorize

  def index
    authorize
  end

  private

  def authorize
    if session[:user_id] != 3
      raise AccessDenied
    end
  end

def signin
  session[:user_id] != 1
  redirect_to root_path
end
  def index
    raise AccessDenied
  end
end
