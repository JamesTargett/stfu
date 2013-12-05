FactoryGirl.define do
  factory :user do
    sequence(:email) {|i| "fightclub-#{i}@makeandsellsoap.com" }
    password "hitmeashardasyoucan"
    password_confirmation "hitmeashardasyoucan"
    card_info 5555555555555555
    name_on_card "Tyler Durden"
    expiration_month 8
    expiration_year 17
    subscribed true
  end
end
