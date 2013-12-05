FactoryGirl.define do
  factory :character do
    sequence(:name) {|i| "Punchline-#{i}"}
    age "34"
    height "6'2"
    weight "220lbs"
    wrestling_style "Hardcore"
    sequence(:finisher) {|i| "Standup Routine-#{i}"}
    #association :match, factory: :match
  end
end