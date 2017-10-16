class Place < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.integer :person_id

      t.timestamps
    end

    add_index :places, :person_id
  end
end
