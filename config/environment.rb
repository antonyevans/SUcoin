# Load the rails application
require File.expand_path('../application', __FILE__)
config.gem "warden", :version => "0.5.1"
config.gem "devise", :version => "0.4.1"

# Initialize the rails application
Sucoin::Application.initialize!

