class SessionsController < ApplicationController


  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user.nil? redirect_to new_session_path
    return head(:forbidden) unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
  end

end
