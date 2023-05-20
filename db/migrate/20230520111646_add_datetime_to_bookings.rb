class AddDatetimeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :date, :datetime
  end
end
