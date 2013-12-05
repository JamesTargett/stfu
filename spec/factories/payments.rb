FactoryGirl.define do
  factory :payment do
    amount_in_cents 10000
    paid_at 01/14/13
    association :subscription, factory: :subscription
  end
end