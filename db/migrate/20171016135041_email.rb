class Email < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|
      t.string :body, index: true
      t.references :emailable, polymorphic: true, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
