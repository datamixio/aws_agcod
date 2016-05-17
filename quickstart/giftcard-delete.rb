require "./configure.rb"

request_id = "test"
gc_id = "test_gc_id"

request = AGCOD::CancelGiftCard.new(request_id, gc_id)

# When failed
unless request.success?
  request.error_message # => Error response from AGCOD service
end

