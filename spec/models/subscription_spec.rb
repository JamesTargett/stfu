require 'spec_helper'

describe Subscription do
  
  it "fails without start date" do
    @subscription = FactoryGirl.build :subscription, start_date: nil
    expect(@subscription.save).to eq(false)
  end

end