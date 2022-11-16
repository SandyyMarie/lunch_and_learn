FactoryBot.define do
  FactoryBot.define do
    factory :favorites do
      api_key { Faker::Internet.password }
      country { Faker::Address.country }
      recipe_link { Faker::Internet.url }
      recipe_title { Faker::Food.dish }
      association :users, factory: :users
    end
  end
end