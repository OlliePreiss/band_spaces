class BandSpace < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :photo_url, presence: true
  validates :users_id, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }

end
