class City < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name, index: true
      t.integer :state_id, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
