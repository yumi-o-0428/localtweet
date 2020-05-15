FactoryBot.define do

  factory :tweet do
    spa_name         {"test"}
    area             {"北海道"}
    spring_quality   {"酸性泉"}
    address          {"aaa"}
    url              {"bbb"}
    image            {File.open("#{Rails.root}/spec/fixtures/test.jpg")}
    user_id          {"1"}
  end

end