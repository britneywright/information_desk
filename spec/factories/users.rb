FactoryGirl.define do
  factory :user do
    firstname "Jane"
    lastname "Dog"
    admin true
    password "secret123"
    sequence(:email) {|n| "jane#{n}@example.com"}  
  end
end
