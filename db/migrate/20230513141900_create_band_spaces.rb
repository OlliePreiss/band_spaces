class CreateBandSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :band_spaces do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :photo_url
      t.integer :capacity
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
