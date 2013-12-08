require 'spec_helper'

describe Tasks::DailyBilling do
  
  describe '#run' do
    
    before :each do

    end
    
    it 'performs a subscription charge for one that was last charged exactly one month ago' do
      FactoryGirl.create :subscription_charged_exactly_one_month_ago
      fake_subscription_charge = double(:charge! => nil)
      expect(fake_subscription_charge).to receive(:charge!).once
      expect(Tasks::SubscriptionCharge).to receive(:new).once.and_return(fake_subscription_charge)
      Tasks::DailyBilling.new.run
    end

    it 'performs a subscription charge for a subscription that is overdue' do
      FactoryGirl.create :subscription_overdue_for_charge
      fake_subscription_charge = double(:charge! => nil)
      expect(fake_subscription_charge).to receive(:charge!).once
      expect(Tasks::SubscriptionCharge).to receive(:new).once.and_return(fake_subscription_charge)
      Tasks::DailyBilling.new.run
    end

    it 'does not perform a subscription charge for subscriptions charged less than a month ago' do
      FactoryGirl.create :subscription_charged_this_month
      expect(Tasks::SubscriptionCharge).to_not receive(:new)
      Tasks::DailyBilling.new.run
    end
  end

end
