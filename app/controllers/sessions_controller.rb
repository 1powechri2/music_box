class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # TODO user name and password are invalid
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
