class RenameNoToReservation < ActiveRecord::Migration[5.1]
  def change
    rename_column :reservations, :no, :reservationframe_id
  end
end
