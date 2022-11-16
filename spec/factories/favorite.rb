FactoryBot.define do
  FactoryBot.define do
    factory :favorite do
      user_id { Faker::Internet.password }
      country { Faker::Address.country }
      recipe_link { Faker::Internet.url }
      recipe_title { Faker::Food.dish }
      association :user, factory: :user
    end
  end
end