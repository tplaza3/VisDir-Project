class UserMailer < ActionMailer::Base
  default from: "taskinc.taskmanager@gmail.com"
  
  #'user' is and ACtive Record 'User' object
  def welcome(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to VisDir")
  end
  
end
