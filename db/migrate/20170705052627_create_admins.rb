class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.integer :loginid
      t.string :name

      t.timestamps
    end
  end
end
