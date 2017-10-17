class Place < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :person_id

      t.timestamps
    end

    add_index :places, :name
    add_index :places, :person_id
  end
end
