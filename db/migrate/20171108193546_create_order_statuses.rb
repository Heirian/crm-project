class CreateOrderStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :order_statuses do |t|
      t.integer :category, index: true
      t.references :order, foreign_key: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
