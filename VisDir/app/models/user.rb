class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :pro, :listings_attributes, :twitter
  
  has_many :listings
  accepts_nested_attributes_for :listings, :allow_destroy => true, :reject_if => :listing_image_is_blank
  
  def listing_image_is_blank(attrs)
      if attrs['image_listing'].blank?
        true
      else
        false
      end
    end
  
  has_secure_password
end
