class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  permits :name, :login_id, :email, :comment, :enabled

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create(user)
    @user = User.new(user)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PUT /users/1
  def update(user)
    if @user.update(user)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy

    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user(id)
      @user = User.find(id)
    end
end
