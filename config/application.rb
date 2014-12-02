require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Riservatorricchio
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib)
I18n.config.enforce_available_locales = true
   config.time_zone = "Rome"
config.assets.initialize_on_precompile = false

config.before_configuration do
  I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
  I18n.locale = :it
  I18n.default_locale = :it
  config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
  config.i18n.locale = :it
  # bypasses rails bug with i18n in production\
  I18n.reload!
  config.i18n.reload!
end

config.i18n.locale = :it
config.i18n.default_locale = :it    
# The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    
    config.filter_parameters << :password
    config.secret_key_base = '7c9b132e330f5ace87d61dbdfa613b96a2884ba0ba7fa1bfc8f469cac1a3fe52650e71ec6eb742d4c830966baf9990b908ff5e3a5150f5dfd2fc3fc3e23cef1d'
    
  end
end
