FactoryGirl.define do
  factory :user do
    sequence(:email) {|i| "fightclub-#{i}@makeandsellsoap.com" }
    password "hitmeashardasyoucan"
    password_confirmation "hitmeashardasyoucan"
    name_on_card "Tyler Durden"
    expiration_month 8
    expiration_year 17
    paid true
    card_token "cus_34LHBWaFYy7z7B"
    factory :subscribed_user do
        card_info 5555555555555555
    # check to see if card_token and card_info are redundant
    end
  end
end
