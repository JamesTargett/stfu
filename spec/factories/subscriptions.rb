FactoryGirl.define do
  factory :subscription do
    association :user, factory: :user
    start_date 12/14/12
    last_payment_date 11/14/13
    next_payment_date 12/14/13
    cancel_date 01/14/13
  end
end