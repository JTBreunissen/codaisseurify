require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(artistname: "")
      artist.valid?
      expect(artist.errors).to have_key(:artistname)
    end

    it "is invalid without an origin" do
      artist = Artist.new(origin: "")
      artist.valid?
      expect(artist.errors).to have_key(:origin)
    end
  end

  describe "association with song" do
  let(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

    it "has many songs" do
      song1 = artist.songs.new(songtitle: "Song nr 1")
      song2 = artist.songs.new(songtitle: "Song nr 2")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end

    it "deletes associated songs" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
