require_dependency "application_controller"

class SessionsController < ApplicationController
  before_action :require_sign_in
  skip_before_action :require_sign_in

  def new
    # sign_in 画面
  end

  def create
    original_url = session[:original_url]
    reset_session

    self.current_user = User.find_or_create_user(auth_hash[:info])
    self.user_image = auth_hash[:info][:image]

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
