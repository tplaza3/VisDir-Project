class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :pro
  
  has_many :listings
  
  has_secure_password
end
