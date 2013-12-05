def run
  today = Date.today
  one_month_ago = today.advance(month - 1)
  Subscription.where(last.payment.date <= ?, one_month_ago).find_each(batch_size: 500) do |s|
    p = s.charge!