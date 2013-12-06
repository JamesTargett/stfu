class Tasks::SubscriptionCharge < ActiveRecord::Base

  def initialize(subscription)
    @subscription = subscription
  end

  def charge!
    r = Stripe.charge(1000, self.user.card_token)
    if r.success?
      next_payment_date = next_payment_date.advance(month: 1)
      last_payment_date = Date.today
      p = payments.create(amount: 1000).save
    else
      # TODO: send failure email
    end
    return p
  end

end