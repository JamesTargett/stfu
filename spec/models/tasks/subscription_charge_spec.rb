require 'spec_helper'

describe Tasks::SubscriptionCharge do

  before :each do
    @subscription = FactoryGirl.create :subscription
    @subscription_charge = Tasks::SubscriptionCharge.new(@subscription)
    PLAN_AMOUNT = 500
  end
   
  describe "#charge!" do
    it "should attempt to charge through Stripe" do
      # stub Stripe api call AND expect it to be called with correct values
      expect(Stripe::Charge).to receive(:create).with(amount: PLAN_AMOUNT, currency: "cad", customer: @subscription.user.card_token)
      @subscription_charge.charge!
    end

    it "should create a payment under the subscription with correct amount and paid_at attributes" do
      allow(Stripe::Charge).to receive(:create) # allow vs expect: allow just stubs the Stripe api call (instead of stubbing + setting expectation)
      # we only need to allow b/c we've tested for the expectation
      @subscription_charge.charge!
      p = @subscription.payments.first
      expect(p).to be_a(Payment)
    end

  end

  pending "updates next_payment_date on successful charge"
  pending "sets last payment date on successful charge"
  pending "does not create a payment on unsuccesful charge"
  pending "does not update next payment date on unsuccessful charge"
  pending "does not set last payment date on unsuccessful charge"
  pending "sends failure email on unsuccesful charge attempt"

end
