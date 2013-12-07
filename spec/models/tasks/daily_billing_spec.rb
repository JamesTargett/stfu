require 'spec_helper'

describe Tasks::DailyBilling do
  
  describe '#run' do
    it 'performs a subscription charge for one that was last charged exactly one month ago' do
      FactoryGirl.create :subscription_charged_exactly_one_month_ago
      fake_subscription_charge = double(:charge! => nil)
      expect(fake_subscription_charge).to receive(:charge!).once
      expect(Tasks::SubscriptionCharge).to receive(:new).once.and_return(fake_subscription_charge)
      Tasks::DailyBilling.new.run
    end
    pending 'performs a subscription charge for one that was charged exactly one month ago'
    pending 'does not perform a subscription charge for subscriptions that were charged exactly one month ago'
  end

end
