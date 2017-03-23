Photo.delete_all
Song.delete_all
Artist.delete_all

for i in (1..5) do
Artist.create ({
  artistname: Faker::RockBand.name,
  origin: Faker::Address.city,
  website: Faker::Internet.url,
  active: Faker::Boolean.boolean,
  })
end

for i in (1..5) do
Photo.create ({
  artist_id: i,
  remote_image_url: Faker::LoremPixel.image("150x150"),
  })
end

30.times do
Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist_id: rand(1..5),
  })
end
