FactoryGirl.define do
  factory :user do
    firstname "Jane"
    lastname "Dog"
    admin false
    password "secret123"
    sequence(:email) {|n| "jane#{n}@example.com"}  
  end

  factory :admin, class: User do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    email { Faker::Internet.email }
    admin true
    password "secret123"
  end
end
