class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all
    @users = User.all
    
    @acme = User.find(2)
    @tiny = User.find(3)
    @still = User.find(4)
    @ansel = User.find(5)
    @insta = User.find(6)
  end
  
  def new
  end
  
end
