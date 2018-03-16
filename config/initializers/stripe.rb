Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_cn4N8RGtF8sgMJqfk5naWjOh'],
  :secret_key      => ENV['sk_test_NjhajICOuSF7hZssgI27CbDO']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
