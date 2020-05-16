FactoryBot.define do

  factory :user do
    name              {"test"}
    password          {"000000"}
    sequence(:email)  {Faker::Internet.email}
  end

end