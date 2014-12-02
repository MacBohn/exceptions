class PagesController < ApplicationController
before_action :authorize, only: :show

  def index
    authorize
  end

  private

  def authorize
    if session[:user_id] != 3
      raise AccessDenied
    end
  end

end
