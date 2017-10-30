class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, index: true
      t.text :description
      t.string :type, index:true
      t.integer :stock
      t.decimal :baseValue
      t.string :category, index:true

      t.timestamps
    end
  end
end
