class Tasks::DailyBilling

  def run
    Subscription.requires_rebill.find_each(batch_size: 500) do |s|
      p = s.charge!
    end
  end

end