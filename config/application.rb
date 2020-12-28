require_relative 'boot'
require "active_storage/engine"
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Startup
  class Application < Rails::Application
  	config.railties_order = [ActiveStorage::Engine, :main_app, :all]
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.generators do |g|
      g.orm             :active_record
      g.template_engine :erb
      g.test_framework  :test_unit, fixture: true
    end
    config.assets.initialize_on_precompile = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
