class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :no
      t.integer :user_id
      t.boolean :flag, {default: true}

      t.timestamps
    end
  end
end
