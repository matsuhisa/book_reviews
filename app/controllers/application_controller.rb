class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :signed_in?
  before_action :require_sign_in

  def current_user
    if session[:user_id]
      user = {id: session[:user_id], image: session[:user_image], name: session[:name]}
    else
      redirect_to sign_in_path
    end
  end

  private

  def current_user?
    if session[:user_id]
      true
    else
      false
    end
  end

  def signed_in?
    # http://qa.atmarkit.co.jp/q/2631
    current_user?
  end

  def require_sign_in
    unless signed_in?
      session[:original_url] ||= request.original_url
      redirect_to sign_in_path
    end
  end
end
