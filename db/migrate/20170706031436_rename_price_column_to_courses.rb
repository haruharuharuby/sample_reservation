class RenamePriceColumnToCourses < ActiveRecord::Migration[5.1]
  def change
    rename_column :courses, :price, :m_price
  end
end
