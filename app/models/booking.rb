class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :band_space

end
