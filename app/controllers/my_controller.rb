class MyController < ApplicationController
  before_action :require_sign_in

  def index
    @reviews = Review.all
  end
end
