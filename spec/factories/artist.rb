FactoryGirl.define do
  factory :artist do
    artistname {Faker::RockBand.name}
    origin {Faker::Address.city}
    website {Faker::Internet.url}
    active {Faker::Boolean.boolean}
  end
end
