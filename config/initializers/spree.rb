# Configure Solidus Preferences
# See http://docs.solidus.io/Spree/AppConfiguration.html for details

Spree.config do |config|
  # Core:

  # Default currency for new sites
  config.currency = "USD"

  # from address for transactional emails
  config.mails_from = "store@example.com"

  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false

  # When set, product caches are only invalidated when they fall below or rise
  # above the inventory_cache_threshold that is set. Default is to invalidate cache on
  # any inventory changes.
  # config.inventory_cache_threshold = 3

config.default_country_iso = "BE"

config.address_requires_state = false
config.checkout_zone = "Belgium"

config.currency = "EUR"
  # Frontend:

  # Custom logo for the frontend
  # config.logo = "logo/solidus_logo.png"

  # Template to use when rendering layout
  # config.layout = "spree/layouts/spree_application"


  # Admin:

  # Custom logo for the admin
  # config.admin_interface_logo = "logo/solidus_logo.png"

  # Gateway credentials can be configured statically here and referenced from
  # the admin. They can also be fully configured from the admin.
  #
  config.static_model_preferences.add(
    Spree::Gateway::StripeGateway,
    'stripe_env_credentials',
    secret_key: ENV['sk_test_NjhajICOuSF7hZssgI27CbDO'],
    publishable_key: ENV['pk_test_cn4N8RGtF8sgMJqfk5naWjOh'],
    server: Rails.env.production? ? 'production' : 'test',
    test_mode: !Rails.env.production?
  )
end

Spree::Frontend::Config.configure do |config|
  config.locale = 'en'
end

Spree::Backend::Config.configure do |config|
  config.locale = 'en'
end

Spree::Api::Config.configure do |config|
  config.requires_authentication = true
end

Spree.user_class = "Spree::LegacyUser"
