FactoryGirl.define do
  require 'factory_girl'

  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    provider 'github'
    sequence(:uid) {|n| n }
    username "emanresu"
  end

  factory :question do
    title "What version of Rails am I using?"
    description "I am having trouble with my Ruby gems. I am having trouble with my Ruby gems."
    user 
  end
end
