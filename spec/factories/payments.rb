FactoryGirl.define do
  factory :payment do
    association :subscription, factory: :subscription
    amount_in_cents 10000
    paid_at 2013/12/05
  end
end