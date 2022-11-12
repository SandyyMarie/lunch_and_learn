FactoryBot.define do
  FactoryBot.define do
    factory :favorites do
      type { Faker::Food.ethnic_category }
      title { Faker::Food.dish }
      url { Faker::Internet.url }
      country { Faker::Address.country }
      img { Faker::Internet.url }
    end
  end