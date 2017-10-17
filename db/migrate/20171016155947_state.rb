class State < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :country_id

      t.timestamps
    end
    
    add_index :states, :country_id
  end
end
