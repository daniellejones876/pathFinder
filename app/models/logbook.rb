class Logbook < ApplicationRecord
  has_one_attached :image
  belongs_to :emoji
  belongs_to :user
  has_many :journals
  has_many :recommendations

  validates :date, presence: true, uniqueness: true
end
