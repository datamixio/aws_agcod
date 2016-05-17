require "./configure.rb"

request_id = "test"
amount = 50
currency = "EUR" # default to USD, available types are: USD, EUR, JPY, CNY, CAD

request = AGCOD::CreateGiftCard.new(request_id, amount, currency)

# When succeed
if request.success?
  request.claim_code # => code for the gift card
  request.gc_id # => gift card id
  request.request_id # => your request id
else
# When failed
  request.error_message # => Error response from AGCOD service
end

