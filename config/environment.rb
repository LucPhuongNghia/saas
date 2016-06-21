# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.smtp_settings = {
 :address              => "smtp.sendgrid.net",
 :port                 => 587,
 :authentication       => "plain",
 :user_name            => ENV['gmail_username'],
 :password             => ENV['gmail_password'],
 :domain               => 'heroku.com',
 :enable_starttls_auto => true
}
