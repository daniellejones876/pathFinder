class Logbook < ApplicationRecord
  has_one_attached :image

  belongs_to :emoji, optional: true
  belongs_to :user

  has_many :journals, dependent: :destroy
  has_many :recommendations
end
