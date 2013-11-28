FactoryGirl.define do
  factory :roleplay do
    message "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque augue lorem, gravida ac consectetur id, ultricies quis orci. Etiam venenatis dapibus laoreet. In hac habitasse platea dictumst. Donec at nisl varius, scelerisque est ac, adipiscing tortor. Maecenas sagittis enim at dolor vehicula, condimentum ullamcorper nunc rhoncus. Nulla eu tempor purus. Mauris placerat nunc metus, sed porttitor risus rhoncus non."
    association :character, factory: :character
  end
end
