FactoryGirl.define do
  factory :payment do
    association :subscription, factory: :subscription
    amount_in_cents 500
    paid_at "2013/12/05"
  end
end