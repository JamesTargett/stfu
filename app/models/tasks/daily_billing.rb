class Tasks::DailyBilling

  def run
    today = Date.today
    one_month_ago = today - 1.month
    Subscription.where("last_payment_date <= :one_month_ago", {one_month_ago: one_month_ago}).find_each(batch_size: 500) do |s|
      p = s.charge!
    end
  end

end