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
    config.i18n.default_locale = :uk
    config.i18n.fallbacks = true
    config.i18n.available_locales = [:uk, :ru, :en]
    config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*.{rb,yml}').to_s]

    config.time_zone = 'Europe/Kiev'
    config.active_record.default_timezone = :local

    config.assets.precompile += Ckeditor.assets
    config.assets.precompile += %w( ckeditor/* )
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
  end
end
