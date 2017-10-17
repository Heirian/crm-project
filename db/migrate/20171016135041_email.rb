class Email < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :email
      t.integer :person_id
      t.integer :place_id

      t.timestamps
    end
    
    add_index :emails, :person_id
    add_index :emails, :place_id
  end
end
