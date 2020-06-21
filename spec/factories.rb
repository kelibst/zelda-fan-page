FactoryBot.define do
  factory :user do
    id { :id }
    sequence(:first_names) { |n| "demo_user#{n}" }
    sequence(:last_name) { |n| "demo_lastName_user#{n}" }
    sequence(:email) { |n| "user#{n}@example.com" }
    sequence(:password) { |n| "user#{n}11" }
    post
  end
end
