# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Cwm::Application.initialize!

require "smtp_tls"
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "www.domain.com",
  :authentication => :login,
  :user_name => "user@gmail.com",
  :password => "password"
}
