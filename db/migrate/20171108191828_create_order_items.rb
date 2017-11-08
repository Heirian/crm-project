class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.integer :quantity
      t.integer :total_value
      t.integer :unit_price

      t.datetime :deleted_at, index: true
      t.timestamps
    end
    add_index :order_items, :quantity
  end
end
