class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :tel
      t.string :mail

      t.timestamps
    end
  end
end
