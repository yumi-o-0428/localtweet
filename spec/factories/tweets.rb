FactoryBot.define do

  factory :tweet do
    spa_name         {"test"}
    area             {"北海道"}
    spring_quality   {"酸性泉"}
    address          {"aaa"}
    url              {"bbb"}
    image            {File.new("#{Rails.root}/spec/fixtures/test.jpg")}
    created_at       { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end

end