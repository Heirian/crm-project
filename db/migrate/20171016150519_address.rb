class Address < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.integer :zip_code
      t.integer :person_id
      t.integer :city_id

      t.timestamps
    end
  end
end
