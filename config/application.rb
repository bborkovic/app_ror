require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AppRor
  class Application < Rails::Application
  	config.web_console.whitelisted_ips = '172.31.28.73'
  	config.web_console.whitelisted_ips = '192.168.1.111'
    config.web_console.development_only = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
