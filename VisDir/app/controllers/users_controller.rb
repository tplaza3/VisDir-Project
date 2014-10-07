class UsersController < ApplicationController
  # skip_before_filter :authorize, :only => [:new, :create]
  
   def index
     @users = User.all
   end
   
  
  def new
    @user = User.new
    # @user.build_listing
  end

  def create
    @user = User.new(params[:user])
    
    if @user.save
      session[:user_id] = @user.id
      UserMailer.welcome(@user).deliver #Active Mailer insert
      redirect_to new_listing_path
    else
      render "new"
    end
  end
  
  def edit
      @user = User.find(params[:id])
    end
  
  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
  end
  
  def delete
    @user = User.find(params[:id]).destroy
  end

  # def destroy
#     @user = User.find(params[:id])
#
#     if @user != current_user
#       redirect_to users_path, alert: "Users cannot delete other users."
#     else
#       @user.delete
#     redirect_to users_path, notice: "User successfully deleted."
#     end
#   end
end
