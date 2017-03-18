class Song < ApplicationRecord
  belongs_to :artist

  #validates :songtitle, presence: true
  #validates :album, presence: true
  #validates :releaseyear, presence: true, length: {maximum: 4, too_long: "Please enter a valid releaseyear"}
end
