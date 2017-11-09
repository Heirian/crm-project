class AddActiveToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :active, :boolean
    add_index :products, :active
  end
end
