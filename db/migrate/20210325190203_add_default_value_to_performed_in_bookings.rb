class AddDefaultValueToPerformedInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column_default :bookings, :performed, from: nil, to: false
  end
end
