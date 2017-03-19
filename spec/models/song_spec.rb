require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(songtitle: "")
      song.valid?
      expect(song.errors).to have_key(:songtitle)
    end

    it "is valid without a artist id" do
      song = Song.new(artist_id: "")
      song.valid?
      expect(song.errors).not_to have_key(:artist_id)
    end
  end

  describe "association with artist" do
  let(:artist) { create :artist }

    it "belongs to an artist" do
      song = artist.songs.new(songtitle: "Testsong1")

      expect(song.artist).to eq(artist)
    end
  end
end
