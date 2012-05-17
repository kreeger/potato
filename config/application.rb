require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"

if defined?(Bundler)
  Bundler.require(*Rails.groups(assets: %w(development test)))
end

module Potato
  class Application < Rails::Application
    # config.autoload_paths += %W(#{config.root}/extras)
    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.version = '1.0'
    config.generators.stylesheets = false
    config.generators.javascripts = false
  end
end
