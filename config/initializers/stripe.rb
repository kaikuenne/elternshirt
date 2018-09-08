Rails.configuration.stripe = {
# Enable for test mode
  publishable_key: ENV['STRIPE_PUBLISHABLE_KEY_TEST'],
  secret_key:      ENV['STRIPE_SECRET_KEY_TEST']

# Enable for live mode
  # publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  # secret_key:      ENV['STRIPE_SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
