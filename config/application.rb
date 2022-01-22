# frozen_string_literal: true
require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.time_zone = ENV.fetch("TZ") { "Asia/Tokyo" }
    config.active_record.default_timezone = :local

    config.generators do |g|
      g.assets     false
      g.helper     false
    end

    config.middleware.insert_after ActionDispatch::Static, Rack::Deflater
    config.action_dispatch.cookies_same_site_protection = :lax

    config.action_view.field_error_proc = Proc.new { |html_tag, _instance| html_tag }
  end
end
