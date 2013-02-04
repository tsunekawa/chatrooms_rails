# Load the rails application
require File.expand_path('../application', __FILE__)

# load config yaml
APP_CONFIG = YAML.load_file("#{Rails.root}/config/config.yml")[Rails.env]

Chat::Application.configure do
  # Mailer Settings
  config.action_mailer.default_url_options = { :host => APP_CONFIG[:mailer][:host] }
end

# Initialize the rails application
Chat::Application.initialize!
