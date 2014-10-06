class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all
    @users = User.all
    
  end
  
  def new
  end
  
  def show
    @listing = Listing.find(params[:id])
    
    
  end
  
end
