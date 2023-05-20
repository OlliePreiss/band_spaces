class ChangeDateToDatetimeBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :date
  end
end
