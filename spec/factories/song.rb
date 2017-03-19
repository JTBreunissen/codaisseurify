FactoryGirl.define do
  factory :song do
    songtitle {Faker::Book.title}
    album {Faker::Book.title}
    releaseyear {Faker::Number.between(1950, 2017)}
  end
end
