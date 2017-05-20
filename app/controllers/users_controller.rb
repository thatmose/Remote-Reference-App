class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
  end

  def index
  end

  def create
  end

  protected

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
