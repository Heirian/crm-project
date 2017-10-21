class Phone < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :number, index: true
      t.references :phonable, polymorphic: true, index: true

      t.datetime :deleted_at, index: true
      t.timestamps
    end
  end
end
