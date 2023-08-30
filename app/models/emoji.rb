class Emoji < ApplicationRecord
  has_many :logbooks
  has_many :playlists

  has_one_attached :photo
end
