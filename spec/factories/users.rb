FactoryGirl.define do
  factory :user do
    firstname "Jane"
    lastname "Dog"
    role "admin"
    password "secret123"
    sequence(:email) {|n| "jane#{n}@example.com"}  
  end
end
