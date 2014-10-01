ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "localhost.localdomain",
  :user_name            => "taskinc.taskmanager@gmail.com",
  :password             => "ocsbudai",
  :authentication       => "plain", 
  :enable_starttls_auto => true
}