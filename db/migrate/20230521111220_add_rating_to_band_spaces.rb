class AddRatingToBandSpaces < ActiveRecord::Migration[7.0]
  def change
    add_column :band_spaces, :rating, :integer
  end
end
