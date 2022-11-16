FactoryBot.define do
  FactoryBot.define do
    factory :users do
      name { Faker::Name.name }
      email { Faker::Internet.email }
      api_key { Faker::Internet.password }
    end
  end
end