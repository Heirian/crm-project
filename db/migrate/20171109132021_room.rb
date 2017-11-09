class Room < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :place_id, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
