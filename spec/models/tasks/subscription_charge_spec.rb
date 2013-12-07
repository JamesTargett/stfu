require 'spec_helper'

describe Tasks::SubscriptionCharge do
  
  describe "monthly subscription charge" do

    it "should return payment success" do
      allow(Stripe::Charge).to receive(:create).and_return([])
    end

    pending "uses Stripe to charge the customer"
    pending "creates a payment for a successful charge"
    pending "updates next_payment_date on successful charge"
    pending "sets last payment date on successful charge"
    pending "does not create a payment on unsuccesful charge"
    pending "does not update next payment date on unsuccessful charge"
    pending "does not set last payment date on unsuccessful charge"
    pending "sends failure email on unsuccesful charge attempt"


  end

end
