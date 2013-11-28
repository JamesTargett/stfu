FactoryGirl.define do
  factory :match do
    association :character1, factory: :character
    association :character2, factory: :character
  end
end
