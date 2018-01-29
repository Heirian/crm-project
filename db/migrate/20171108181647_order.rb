class Order < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :subtotal, index: true
      t.integer :tax, index: true
      t.integer :shipping, index: true
      t.integer :discount, index: true
      t.integer :total, index: true
      t.integer :user_id, index: true
      t.integer :person_id, index: true
      t.boolean :cart, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
