class LoginsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password]) #if user && is to keep from being nil
      session[:user_id] = @user.id

      redirect_to root_path, notice: "Welcome back #{@user.name}!"
    else
      render "new", alert: "Invalid log in, please try again."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  
end
