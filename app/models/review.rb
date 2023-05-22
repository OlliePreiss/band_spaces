class Review < ApplicationRecord
  belongs_to :band_space
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
end
