class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_one :photo, dependent: :destroy

  validates :artistname, presence: true
  validates :origin, presence: true
end
