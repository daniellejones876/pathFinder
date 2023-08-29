class Emoji < ApplicationRecord
  has_many :logbooks
  has_many :playlists
end
