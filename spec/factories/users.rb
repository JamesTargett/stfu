FactoryGirl.define do
  factory :user do
    username "Tyler Durden"
    sequence(:email) {|i| "fightclub-#{i}@makeandsellsoap.com" }
    password "hitmeashardasyoucan"
    password_confirmation "hitmeashardasyoucan"
  end
end
