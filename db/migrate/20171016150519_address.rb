class Address < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.integer :zip_code
      t.integer :person_id
      t.integer :city_id
      t.integer :place_id

      t.timestamps
    end

    add_index :addresses, :place_id
    add_index :addresses, :city_id
    add_index :addresses, :person_id
  end
end
