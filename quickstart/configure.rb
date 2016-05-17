require "aws_agcod"

AGCOD.configure do |config|
  config.access_key = "YOUR ACCESS KEY"
  config.secret_key = "YOUR SECRET KEY"
  config.partner_id = "PARTNER ID"

  # The `production` config is important as it determines which endpoint
  # you're hitting.
  config.production = true  # This defaults to false.

  # Optionally, you can customize the URI completely.
  config.uri = "https://agcod-v2-eu-gamma.amazon.com/sping" # test
  # config.uri = "https://agcod-v2-eu.amazon.com/sping" # prod

  config.region  = "eu-west-1" # default
  config.timeout = 30          # default
end

