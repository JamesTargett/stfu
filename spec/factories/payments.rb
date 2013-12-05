FactoryGirl.define do
  factory :payment do
    association :subscription, factory: :subscription
    amount_in_cents 10000
    paid_at 01/14/13
  end
end