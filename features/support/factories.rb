FactoryGirl.define do

  factory :regular_role, class: Role do
    name "Regular"
  end

  factory :admin_role, class: Role do
    name "Admin"
  end

  factory :regular, class: User do
    email "regular@regular.com"
    password "password"
    password_confirmation "password"
    association :role, factory: :regular_role
  end

  factory :admin, class: User do
    email "regular@regular.com"
    password "password"
    password_confirmation "password"
    association :role, factory: :admin_role
  end

  factory :data do
    email "regular@cucumber.com"
    password "testcucumber"
  end

end