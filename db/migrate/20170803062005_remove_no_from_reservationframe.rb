class RemoveNoFromReservationframe < ActiveRecord::Migration[5.1]
  def change
    remove_column :reservationframes, :no, :integer
  end
end
