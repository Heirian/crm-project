class Phone < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :area_code
      t.string :country_code
      t.string :number
      t.integer :person_id
      t.integer :place_id

      t.timestamps
    end

    add_index :phones, :person_id
    add_index :phones, :place_id
  end
end
