class AddProductIdToGrades < ActiveRecord::Migration[5.1]
  def change
    add_column :grades, :product_id, :interger
    add_index :grades, :product_id
  end
end
