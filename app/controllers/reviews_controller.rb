class ReviewsController < ApplicationController
  before_action :require_sign_in, only: [:new, :edit, :update, :destroy]
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_books, only: [:new, :edit]
  permits :title, :description, :completion_at, :user_id, :book_id

  # GET /reviews
  def index
    @reviews = Review.active.all
  end

  # GET /reviews/1
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new(completion_at: Time.current, user_id: current_user.id)
  end

  # GET /reviews/1/edit
  def edit
    # FIXME 書いた人とログインユーザが違う時、404にする？サイトトップに戻しちゃう？か決めて実装する
    if @review.user_id != current_user.id
    end
  end

  # POST /reviews
  def create(review)
    @review = Review.new(review)

    if @review.save
      redirect_to @review, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  # PUT /reviews/1
  def update(review)
    review[:user_id] = @review.user_id
    if @review.update(review)
      redirect_to @review, notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.update_attributes(deleted_at: Time.current)
    redirect_to reviews_url, notice: 'Review was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review(id)
      @review = Review.find(id)
    end

    def set_books
      @books = Book.all
    end
end
