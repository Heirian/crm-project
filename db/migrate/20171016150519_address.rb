class Address < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :zip_code
      t.integer :city_id
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end

    add_index :addresses, :city_id
  end
end
