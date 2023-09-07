class Emoji < ApplicationRecord
  has_many :logbooks
  has_many :playlists
  has_many :books, dependent: :destroy
end
