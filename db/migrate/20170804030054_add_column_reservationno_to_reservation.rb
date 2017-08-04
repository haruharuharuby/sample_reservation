class AddColumnReservationnoToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :reservationno, :integer
  end
end
