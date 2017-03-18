class Song < ApplicationRecord
  belongs_to :artist

  validates :songtitle, precense: true
  validates :album, precense: true
  validates :releaseyear, precense: true, length: {maximum 4, too_long: "Please enter a valid releaseyear"}
end
