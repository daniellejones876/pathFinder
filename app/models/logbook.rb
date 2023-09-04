class Logbook < ApplicationRecord
  has_one_attached :image

  belongs_to :emoji
  belongs_to :user

  has_many :journals, dependent: :destroy
  has_one :recommendation
end
