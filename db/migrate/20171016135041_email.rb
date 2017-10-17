class Email < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :email
      t.references :emailable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
