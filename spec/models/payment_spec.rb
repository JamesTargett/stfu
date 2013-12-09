require 'spec_helper'

describe Payment do

  it "should fail without amount" do
    @payment = FactoryGirl.build :payment, amount_in_cents: nil
    expect(@payment.save).to eq(false)
    expect(@payment.errors[:amount_in_cents].first).to eq("can't be blank")
  end

  it "should not be created without paid_at date" do
    @payment = FactoryGirl.build :payment, paid_at: nil
    expect(@payment.save).to eq(false)
    expect(@payment.errors[:paid_at].first).to eq("can't be blank")
  end

end