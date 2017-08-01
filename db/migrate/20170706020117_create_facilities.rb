class CreateFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities do |t|
      t.string :facilityname

      t.timestamps
    end
  end
end
