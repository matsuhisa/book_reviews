class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :user_image, :signed_in?
  before_action :require_sign_in

  def current_user
    @_current_user ||= begin
      if (id = session[:user_id])
        User.active.find(id)
      end
    end
  rescue ActiveRecord::RecordNotFound
    reset_session
    redirect_to sign_in_path
  end

  private

  def current_user=(user)
    return unless user

    session[:user_id] = user.id
    @_current_user = user
  end

  def user_image
    session[:user_image]
  end

  def user_image=(url)
    session[:user_image] = url
  end

  def signed_in?
    # http://qa.atmarkit.co.jp/q/2631
    !!current_user
  end

  def require_sign_in
    unless signed_in?
      session[:original_url] ||= request.original_url
      redirect_to sign_in_path
    end
  end
end
