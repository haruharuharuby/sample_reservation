class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :date
      t.integer :user_id
      t.integer :material_id

      t.timestamps
    end
  end
end
