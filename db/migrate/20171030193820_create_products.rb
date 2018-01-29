class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, index: true
      t.text :description
      t.string :type, index:true, null: false
      t.integer :stock
      t.decimal :base_value
      t.integer :category, default: 0, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
