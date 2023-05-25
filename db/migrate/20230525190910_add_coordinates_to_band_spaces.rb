class AddCoordinatesToBandSpaces < ActiveRecord::Migration[7.0]
  def change
    add_column :band_spaces, :latitude, :float
    add_column :band_spaces, :longitude, :float
  end
end
