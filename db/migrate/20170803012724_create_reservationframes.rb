class CreateReservationframes < ActiveRecord::Migration[5.1]
  def change
    create_table :reservationframes do |t|
      t.integer :no
      t.integer :facility_id
      t.integer :course_id
      t.string :date
      t.string :time
      t.integer :staff_id

      t.timestamps
    end
  end
end
