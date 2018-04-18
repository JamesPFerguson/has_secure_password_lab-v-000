class UsersController < ApplicationController

  def home
    @user = user.find(session[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params).save
  end

  def user_params
     params.require(:user).permit(:username, :password, :password_confirmation)
   end
end
