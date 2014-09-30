class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :pro
  
  has_many :listings
end
