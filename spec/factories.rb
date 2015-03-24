FactoryGirl.define do
  factory :user do
    first_name "John"
    last_name  "Doe"
  end

  factory :question do
    title "What version of Rails am I using?"
    user_id 1
  end
end
