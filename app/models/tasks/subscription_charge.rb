class Tasks::SubscriptionCharge

  PLAN_AMOUNT = 500

  def initialize(subscription)
    @subscription = subscription
  end

  def charge!
    r = Stripe::Charge.create(PLAN_AMOUNT, @subscription.user.card_token)
    if r
      p = Payment.create(amount_in_cents: PLAN_AMOUNT).save
      @subscription.next_payment_date = @subscription.next_payment_date.advance(months: 1)
      @subscription.last_payment_date = p.paid_at
      @subscription.save
    else
      # TODO: send failure email
    end
    return p
  end

end 