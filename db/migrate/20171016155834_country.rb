class Country < ActiveRecord::Migration[5.1]
  def change
    create_table :countries do |t|
      t.string :name, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
