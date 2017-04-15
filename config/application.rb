require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mriya
  class Application < Rails::Application

    config.generators do |g|
      g.template_engine :slim
    end

    config.i18n.default_locale = :ru

    config.time_zone = 'Moscow'
    config.active_record.default_timezone = :local
    
  end
end
