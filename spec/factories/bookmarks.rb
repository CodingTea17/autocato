FactoryGirl.define do
  factory :bookmark do
    url 'http://www.example.com'
    user

    trait :invalid do
      url nil
      user nil
    end
  end
end
