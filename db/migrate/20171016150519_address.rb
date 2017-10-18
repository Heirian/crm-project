class Address < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :zip_code
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
