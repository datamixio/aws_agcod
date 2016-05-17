require "./configure.rb"

request_id = "test"
start_time = Time.now - 86400
end_time = Time.now
page = 1
per_page = 100
show_no_ops = false # Whether or not to show activities with no operation

request = AGCOD::GiftCardActivityList.new(request_id, start_time, end_time, page, per_page, show_no_ops)

if request.success?
  request.results.each do |activity|
    activity.status # => SUCCESS, FAILURE, RESEND
    activity.created_at
    activity.type
    activity.card_number
    activity.amount
    activity.error_code
    activity.gc_id
    activity.partner_id
    activity.request_id
  end
else
  request.error_message # => Error response from AGCOD service
end

