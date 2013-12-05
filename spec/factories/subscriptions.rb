FactoryGirl.define do
  factory :subscription do
    association :user, factory: :user
    start_date 12/14/12
    cancel_date nil
  end
end