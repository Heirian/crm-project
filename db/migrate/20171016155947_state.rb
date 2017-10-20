class State < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name, index: true
      t.integer :country_id, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
