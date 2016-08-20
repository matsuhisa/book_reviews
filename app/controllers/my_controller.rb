class MyController < ApplicationController
  before_action :require_sign_in

  def index
    @reviews = Review.joins(:book).where(user_id: current_user.id)
  end
end
