FactoryGirl.define do
  factory :user do
    sequence(:email) {|i| "fightclub-#{i}@makeandsellsoap.com" }
    password "hitmeashardasyoucan"
    password_confirmation "hitmeashardasyoucan"
    factory :subscribed_user do
        name_on_card "Tyler Durden"
        expiration_month 8
        expiration_year 17
        paid true
        card_token "cus_34LHBWaFYy7z7B"
    end
  end
end
