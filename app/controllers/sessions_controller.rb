class SessionsController < ApplicationController
  skip_before_action :require_sign_in

  def new
  end

  def create
    original_url = session[:original_url]
    reset_session

    session[:user_id] = auth_hash[:info][:email]
    session[:user_image] = auth_hash[:info][:image]
    session[:name] = auth_hash[:info][:name]

    redirect_to original_url || root_path
  end

  def destroy
    reset_session
    redirect_to sign_in_path
  end

  private
  def auth_hash
    request.env['omniauth.auth']
  end
end
