Artist.delete_all
Song.delete_all

artist1 = Artist.create ({
  artistname: Faker::RockBand.name,
  origin: Faker::Address.city,
  website: Faker::Internet.url,
  active: Faker::Boolean.boolean,
  })

artist2 = Artist.create ({
  artistname: Faker::RockBand.name,
  origin: Faker::Address.city,
  website: Faker::Internet.url,
  active: Faker::Boolean.boolean,
  })

artist3 = Artist.create ({
  artistname: Faker::RockBand.name,
  origin: Faker::Address.city,
  website: Faker::Internet.url,
  active: Faker::Boolean.boolean,
  })

artist4 = Artist.create ({
  artistname: Faker::RockBand.name,
  origin: Faker::Address.city,
  website: Faker::Internet.url,
  active: Faker::Boolean.boolean,
  })

artist5 = Artist.create ({
  artistname: Faker::RockBand.name,
  origin: Faker::Address.city,
  website: Faker::Internet.url,
  active: Faker::Boolean.boolean,
  })

song1 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist1,
  })

song2 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist2,
  })

song3 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist3,
  })

song4 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist4,
  })

song5 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist5,
  })

song6 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist5,
  })

song7 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist4,
  })

song8 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist1,
  })

song9 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist2,
  })

song10 = Song.create ({
  songtitle: Faker::Book.title,
  album: Faker::Book.title,
  releaseyear: Faker::Number.between(1950, 2017),
  artist: artist1,
  })
