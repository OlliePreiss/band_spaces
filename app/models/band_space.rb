class BandSpace < ApplicationRecord
  has_one_attached :photo_url
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :address, length: { minimum: 10, maximum: 100 }
  validates :description, presence: true
  validates :description, length: { minimum: 10, maximum: 100 }
  validates :photo_url, presence: true
  validates :user_id, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
