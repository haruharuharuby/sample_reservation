class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.integer :loginid, :null => false
      t.string :name

      t.timestamps
    end
    execute "ALTER TABLE admins ADD PRIMARY KEY (loginid);"
  end
end
