class Listing < ActiveRecord::Base
  attr_accessible :budget, :category, :listing_image, :location, :title, :user_id
  
  belongs_to :user
end
