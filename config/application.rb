require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Theclub
  class Application < Rails::Application
    config.load_defaults 6.0
    config.generators.system_tests = nil
    config.hosts << "929b9d27a890.ngrok.io"
    config.available_locales = :ru
    config.i18n.default_locale = :ru

    config.generators do |g|
      g.test_framework :rspec, fixture_replacement: :factory_bot
      g.fixture false
      g.view_specs false
      g.helper_specs false
      g.request_specs false
      g.controller_specs false
      g.routing_specs false
      g.factory_bot false
    end
  end
end
