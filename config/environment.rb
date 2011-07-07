# Load the rails application
require File.expand_path('../application', __FILE__)


# Initialize the rails application
Sucoin::Application.initialize!

# Setup the settings for forgot_password mailing
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.server_settings = {
  :address => "mail.sucoins.com",
  :port => 25,
  :domain => "sucoins.com",
  :user_name => "MyUsername",
  :password => "MyPassword",
  :authentication => :login
}


